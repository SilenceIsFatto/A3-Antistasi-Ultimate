private _unit       = param[0];
private _distance   = param[1, 4500];
private _tgtLogic 	= param[2, 1];
//Speed, guidance, N, ignore direct, time to max, delay between shots
private _weaponPar	= param[3, [420/3.6, 0, 4, false, 14, 0.75]];
private _typeArray 	= param[4, ["ShellBase","SubmunitionBase"]];

if !(allowCRAMIRONDOME) exitWith {};

//Stops previous dome script, starts new one
_unit setVariable ["DomeInit", false, true];
waitUntil {(_unit getVariable ["DomeRunning", false]) == false};
_unit setVariable ["DomeInit", true, true];

//Save values
_unit setVariable ["WeaponsPar", _weaponPar, true];
_unit setVariable ["DomeRunning", true];

if(!isServer) exitWith {};

_n = [0, 9] call BIS_fnc_randomInt;
sleep (0.1 * _n);

//Chase camera behind the missile 
allowAttach = false;

//Handle the missile
_unit addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	private _target = _unit getVariable ["currentTarget", objNull];
	private _parameters = _unit getVariable "WeaponsPar";

	if(!isNull _target) then {
		[_projectile, _parameters, _target] spawn A3U_fnc_handleMissile;
		_unit setVariable ["currentTarget", objNull, true];
	};
	

	//Attach a camera to themissile, made for the video
	if(allowAttach) then {
			_projectile spawn {
			allowAttach = false;

			_cam = "camera" camCreate (ASLToAGL eyePos player);
			_cam attachTo [_this, [3,-15,0]];
			_cam cameraEffect ["external", "back"];
			_cam camCommitPrepared 0;
			waitUntil { camCommitted _cam };


			waitUntil {!alive _this};
			_cam cameraEffect ["terminate", "back"];
			camDestroy _cam;
			allowAttach = true;
		};
	};
}];

//_unit setVehicleRadar 1;
_unit setVariable ["alarmEnabled", true, true];
//Toggle incoming alarm
_unit addAction ["Toggle alarm", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	_state = !(_target getVariable ["alarmEnabled", true]);
	_target setVariable ["alarmEnabled", _state, true];

	_out = "";
	if(_state) then {
		_out = "ON";
	} else {
		_out = "OFF";
	};

	_id = owner _caller;
	["Alarm state: " + _out] remoteExec ["hint", _id];

}, nil, 9, false, false, "", "!(_this in _target)", 10];

//Change logic
_unit setVariable ["_tgtLogic", _tgtLogic];
_unit addAction ["Change targeting mode", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	_tgtLogic = _target getVariable ["_tgtLogic", 0];

	_tgtLogic = _tgtLogic + 1;
	if(_tgtLogic > 3) then {
		_tgtLogic = 0;
	};

	_out = "";
	switch (_tgtLogic) do {
		case 0: {
			_out = "Random selection";
		};
		case 1: {
			_out = "Distance/Speed bias";
		};
		case 2: {
			_out = "Threat bias";
		};
		default {_out = "No targeting"};
	};

	_id = owner _caller;
	["Logic changed to: " + _out] remoteExec ["hint", _id];

	_target setVariable	["_tgtLogic", _tgtLogic];
}, nil, 10, false, false, "", "!(_this in _target)", 10];

//Makes it better 
{
	_x setSkill 1;
}foreach crew _unit;

//Performance optimizations
private _emptyLoops = 0;
private _delay = 0.5;

//If the launcher has to be pointed
private _needsAiming 	= _weaponPar select 3;
private _shotsDelay		= _weaponPar select 5;

//Main loop
_loops = ((count _typeArray) - 1);

//If a new dome is initialized
private _isActive = true;
private _timeActive = time;

private _entities = [];
private _targetedShells = [];
private _ignored = [];

//PREFETCH THE ALARMS TO SAVE PERFORMANCE
private _alarms = _unit nearObjects ["NonStrategic", 1300];
_alarms = _alarms select {typeOf _x == "Land_Loudspeakers_F"};

//SOME DELAY SO THE MISSILES DONT FIRE AT ONCE
sleep(random(1));

//MAIN LOOP
while {alive _unit and (someAmmo _unit) and _isActive} do {
	if(time - _timeActive > 5) then {
		_isActive = _unit getVariable ["DomeInit",true];
		_timeActive = time;

		//Purge dead shells in _ignored
		_ignored = _ignored select {alive _x};
	};

	_tgtLogic = _unit getVariable ["_tgtLogic", 0];
	private _entities = [];
	private _targetedShells = [];
	private _target = objNull;

	//Optimized detection, shells are now initialized on creation
	_entities = missionNamespace getVariable ["_initializedShells", []];
	_targetedShells = missionNamespace getVariable ["_targetedShells", []];

	//Only consider the close ones
	_entities = _entities select {_x distance2D _unit < _distance};
	
	//Disregard already targetted
	_entities = _entities select {!(_x in _targetedShells)};

	//Disregard already targetted
	_entities = _entities select {!(_x in _ignored)};


	//Pick a target
	if(count _entities > 0) then {
		//IMPROVED LOGIC TO STOP OUTGOING TARGETS
		{
			private _vVer = (velocity _x) select 2;
			private _dist = _x distance2D _unit;
			if(_vVer > 50 and _dist < 300) then {
				_ignored pushBack _x;
				private _id = (_entities find _x);
				if(_id != -1) then {
					_entities deleteAt _id;
				};
			}; 
		}forEach _entities;

		if(count _entities > 0) then {
			_target = [_entities, _unit, _tgtLogic] call A3U_fnc_pickTarget;

			if(!isNull _target) then {
				["_targetedShells", _target, "add"] call A3U_fnc_handleTargets;

				//Take over unit targetting
				{
					[_x, "AUTOTARGET"] remoteExec ["disableAI", owner _x];
				}forEach crew _unit;
			};
		};
	};

	if(!isNull _target) then {
		_emptyLoops = 0;
		_delay = 0.1 + _shotsDelay;

		//ALARM
		if(_unit getVariable ["alarmEnabled",false]) then {
			if (!(_unit getVariable ["alarmplaying",false])) then {
				_unit setVariable ["alarmplaying",true,true];

				{
					_x say3D ["CRAMALARM", 800 ,1,false,0];
				}forEach _alarms;

				_unit say3D ["CRAMALARM",1500,1,false,0];
				playSound3D ["D37\Sound\cramalarm.ogg", _unit];	// alarm
				_unit spawn {
					sleep 90;
					_this setVariable ["alarmplaying",false,true];
				};
			};
		};
		
		//Engagement logic
		_wep =  currentWeapon _unit;

		//Must aim
		if(_needsAiming) then {
			//Makes the launcher point upward
			private _pos = (getPosASL _target);
			_increment = 3500;

			//AIM above horizon
			if(_target isKindOf "ammo_Missile_CruiseBase") then {
				_increment = (_unit distance2D _target) * tan(15);
			};

			_pos set [2, (_pos select 2) + _increment ];
			_unit doWatch _pos;

			private _time = time;
			waitUntil {([_unit, _pos] call A3U_fnc_watchQuality > 0.80) or (time - _time) > 6};
			sleep 1;
		};
			
		if(!alive _target or isNull _target) then {
			["_targetedShells", _target, "remove"] call A3U_fnc_handleTargets; 
			continue;
		};

		//If this was aimed upward continue, else abort
		if((((_unit weaponDirection _wep) select 2) > 0.1) or !_needsAiming) then {
			//event handler takes care of the missile
			if(!isNull _target) then {
				_unit setVariable ["currentTarget", _target, true];
				//_unit fire _wep;
				[_unit, _wep] remoteExec ["Fire", owner _unit];
				sleep(0.1);

				//enable unit targetting
				{
					[_x, "AUTOTARGET"] remoteExec ["enableAI", owner _x];
				}forEach crew _unit;
			};

			//Safety cleanup 
			_target spawn {
				sleep 25;
				if(alive _this) then {
					["_targetedShells", _this, "remove"] call A3U_fnc_handleTargets;
				};
			};

			//Minimum delay between shots
			sleep _shotsDelay;	
		} else {
			isNil {
				["_targetedShells", _target, "remove"] call A3U_fnc_handleTargets;
			};
		};
	} else {
		_delay = 0.25;
	};
	sleep _delay;
};

_unit doWatch objNull;
removeallActions _unit;

_unit setVariable ["DomeRunning", false, true];