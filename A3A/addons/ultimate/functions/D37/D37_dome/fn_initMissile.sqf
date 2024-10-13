if(!isServer) exitWith {};

//Optimized version of the shells initialization script 
private _shell = param[0];

//Sometimes explosions pop here idk
if(isNull _shell) exitWith {};

//Currently initatizated shells
private _initializedShells = missionNamespace getVariable ["_initializedShells", []];

_shell setVariable ["isMissile", true, true];

_shell spawn {
	private _shell = _this;
	//Let the shell climb a little
	sleep 2;

	//Some things that explode immediatly don't endup cluttering the script later
	if(!alive _shell or isNull _shell) exitWith {};

	//Detection loop
	while {alive _shell} do {
		private _entities = _shell nearObjects ["MissileBase", 25];

        _entities = _entities select {!(_x getVariable ["isMissile", false])};
	
		//Boom
		if(count _entities > 0) then {
			{
				private _target = _x getVariable ["_chosenTarget", objNull];
				if (_target == _shell) then {
					//_mine = createMine ["APERSMine", getPosATL _x, [], 0];
					//_mine setDamage 1;
					triggerammo _x;
					_mine = createMine ["APERSMine", getPosATL _shell, [], 0];
					_mine setDamage 1;

					//Cleanup
					["_targetedShells", _shell, "remove"] call A3U_fnc_handleTargets;
					["_initializedShells", _shell, "remove"] call A3U_fnc_handleTargets;
					//deletevehicle _x; //Entity whose target is the _shell aka the missile
					deletevehicle _shell;
					break;
				};
			}forEach _entities;	
		};
		sleep 0.08; 
	};

	if(!isNull _shell) then {
		["_targetedShells", _shell, "remove"] call A3U_fnc_handleTargets;
		["_initializedShells", _shell, "remove"] call A3U_fnc_handleTargets;
	};
};

_initializedShells pushback _shell;
missionNamespace setVariable ["_initializedShells", _initializedShells, true];
true;