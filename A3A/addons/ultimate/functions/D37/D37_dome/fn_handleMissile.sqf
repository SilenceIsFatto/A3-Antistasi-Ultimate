/*
    HANDLES MISSILE GUIDANCE
    SMARTER
*/

private _missile    = param[0];
private _parameters = param[1, []];
private _target     = param[2, objNull];

//Thing is being used as AA
if(isNull _target) exitWith {};

//Unlikely bt worth checking
if (count _parameters == 0) exitWith {};

private _boost      = true;
private _skipSpeed  = false;
private _timeout    = 30;

//Missile main loop
while{alive _missile} do {
    private _guidanceEnabled = true;

    //Security check
    if(isNull _target or isNil "_target") then {
        break;
    };

    if(alive _target) then {
        _missile setVariable ["guidance", true, true];
        _missile setVariable ["_chosenTarget", _target, true];
        [_missile, _target, _parameters, _boost, _skipSpeed] spawn A3U_fnc_guidanceLaws;
        //systemChat format ["GUIDING:%1 TO:%2", _missile, _target];
    };
    
    private _time = time;
    //Wait until tgt is dead or timeout
    //waitUntil{(!alive _target) or ((time - _time) > _timeout)}; BROKEN FOR SOME REASON, becomes nil idk why
    while{alive _target and alive _missile} do {
        if(time - _time > _timeout) then {
            _guidanceEnabled = false;

            //Targetable again
            ["_targetedShells", _target, "remove"] call A3U_fnc_handleTargets;
            break;
        };
        sleep 0.5;
    };

    if(!alive _missile) then {
        break;
    };

    //Something went wrong
    if(!_guidanceEnabled) then {
        _mine = createMine ["APERSMine", getPosATL _missile, [], 0];
		_mine setDamage 1;
        deleteVehicle _missile;
        break;
    };

    //Small delay to make sure stuff was deleted
    sleep(0.6);

    //Target died before missile could get to it
    if(!alive _target and alive _missile) then {
        //Pick a new target
        _missile setVariable ["guidance", false];

        private _entities = [];

        //Optimized detection, shells are now initialized on creation
        _entities = missionNamespace getVariable ["_initializedShells", []];

        //Only consider the close ones
        _entities = _entities select {_x distance2D _missile < 1500};

        //Exit early
        if(count _entities == 0) then {
            _mine = createMine ["APERSMine", getPosATL _missile, [], 0];
            _mine setDamage 1;
            deleteVehicle _missile;
            break;
        };
        
        //Pick the ones infront (Has issues when entities is zero so we avoid it)
        private _missileDir = vectorDir _missile;
        _entities = _entities select {
            private _los = (position _x) vectorDiff (position _missile);
            (_los vectorDotProduct _missileDir) > 0;
        };

        //Target avaiable
        if(count _entities > 0) then {
            //DETOUR
            private _targetedShells = missionNamespace getVariable ["_targetedShells", []];
            //Disregard already targetted
	        private _freeEntities = _entities select {!(_x in _targetedShells)};

            //If there are shells that arent targeted, then go for them
            if(count _freeEntities > 0) then {
                _entities = [_freeEntities, [_missile], { _input0  distance _x }, "ASCEND"] call BIS_fnc_sortBy;
            } else {
                //Pick the closest
                _entities = [_entities, [_missile], { _input0  distance _x }, "ASCEND"] call BIS_fnc_sortBy;
            };

            //Adds up to 3 targets to the targettable ones
            private _countNum = count _entities;
            private _countArr = [];
            for "_i" from 0 to 3 do {
                if(count _entities > _i) then {
                    _countArr pushBack _i;
                };
            };
            //Pick a random among the closest
            _target = _entities # selectRandom _countArr;

            //SAVE
            if(!isNull _target) then {
				["_targetedShells", _target, "add"] call A3U_fnc_handleTargets;
			};

            //Small delay to let the guidance stop
            sleep(0.2);
            _boost = false;
            _skipSpeed = true;
            //systemChat format ["MISSILE:%1 NEWTARGET:%2", _missile, _target];

        } else {
            _mine = createMine ["APERSMine", getPosATL _missile, [], 0];
            _mine setDamage 1;
            deleteVehicle _missile;
            break;
        };
    };

    sleep(0.1);
}

