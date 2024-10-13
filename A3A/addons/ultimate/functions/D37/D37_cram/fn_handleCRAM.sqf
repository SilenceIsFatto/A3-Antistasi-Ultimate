_unit = param[0];

if(!isServer) exitWith {};
if(is3DEN) exitWith {};
if !(allowCRAMIRONDOME) exitWith {};

//Stops previous dome script, starts new one
_unit setVariable ["DomeInit", false, true];
waitUntil {(_unit getVariable ["DomeRunning", false]) == false};
_unit setVariable ["DomeInit", true, true];

//Save values
_unit setVariable ["DomeRunning", true, true];

private _isInitialized = (_unit getVariable ["cramInit", false]);
if(_isInitialized) exitWith {};
_unit setVariable ["cramInit", true, true];

//Toggle incoming alarm
_unit setVariable ["alarmEnabled", true, true];
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
_unit setVariable ["_tgtLogic", 1, true];
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

	_target setVariable	["_tgtLogic", _tgtLogic, true];
}, nil, 10, false, false, "", "!(_this in _target)", 10];

{
	_x setSkill 1;
}foreach crew _unit;
private _sideOwner = side _unit;

//Performance optimizations
private _emptyLoops = 0;
private _delay = 0.5;
_unit setVehicleRadar 1;
_wep = currentweapon _unit;

//If a new dome is initialized
private _isActive = true;
private _timeActive = time;

private _entities = [];
private _targetedShells = [];
private _distance = 1800;
private _ignored = [];


//Main loop
while {alive _unit and (someAmmo _unit) and _isActive} do {
	if(time - _timeActive > 5) then {
		_isActive = _unit getVariable ["DomeInit",true];
		_timeActive = time;

		//Purge dead shells in _ignored
		_ignored = _ignored select {alive _x};
	};

	private _tgtLogic = _unit getVariable ["_tgtLogic", 1];
	private _entities = [];
	private _targetedShells = [];
	private _target = objNull;

	//Optimized detection, shells are now initialized on creation
	_entities = missionNamespace getVariable ["_initializedShells", []];
	_targetedShells = missionNamespace getVariable ["_targetedShells", []];

	//Only consider the close ones
	_entities = _entities select {_x distance2D _unit < _distance};

	//Disregard same side
	//_entities = _entities select {!(sideOwner == (_x getVariable ["sideShell", civilian]))};
	
	//Disregard already targetted
	_entities = _entities select {!(_x in _targetedShells)};

	//Disregard ignored
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
			_target = [_entities, _unit, _tgtLogic] call A3U_fnc_pickTargetCRAM;
			private _objs = attachedObjects _target;
			if (count _objs == 0) then {
				_target = objNull;
			} else {
				_target = _objs select 0;
			};
		};
	};

	if(!isNull _target) then {
		_delay = 0.05;
		_emptyLoops = 0;
		if(_unit getVariable ["alarmEnabled",false]) then {
			if (!(_unit getVariable ["alarmplaying",false])) then {
				_unit setVariable ["alarmplaying",true,true];
				_unit say3D ["cramalarm",1000,1,false,0];
				_unit spawn {
					sleep 10;
					_this setVariable ["alarmplaying",false,true];
				};
			};
		};

		_time = time;
		_unit doTarget _target;
		_shell = attachedTo _target;
		
		waitUntil{_unit aimedAtTarget [_target, _wep] > 2 or (time - _time) > 2.5};
		for "_i" from 1 to 100 do {
			if(!alive _shell) exitWith {};
			if((_i % 20) == 0) then {
				_unit doTarget _target;
			};
			
			[_unit, _wep, [0]] call BIS_fnc_fire;
			sleep 0.01; 
		};

	} else {
		_unit doTarget objNull;
		//Lowers the amount of checks per second when nothing is found
		_delay = 0.1;
		_emptyLoops = (_emptyLoops + 1);
		if(_emptyLoops == 50) then {
			_delay = 0.35;
			_unit doTarget objNull;
		};
	};
	sleep _delay;
};

removeallActions _unit;