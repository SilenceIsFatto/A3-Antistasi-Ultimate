if(!isServer) exitWith {};

//Optimized version of the shells initialization script 
private _shell = param[0];

//Preventive bullet skip
if(_shell isKindOf "BulletCore" or {_shell isKindOf "Grenade"}) exitWith {};

//Sometimes explosions pop here idk
if(isNull _shell) exitWith {};

//prevents missile and mines
if(_shell isKindOf "MissileCore" or _shell isKindOf "TimeBombCore") exitWith {};

//Currently initatizated shells
private _initializedShells = missionNamespace getVariable ["_initializedShells", []];

//Prevents double init, the EH only runs once
//if(_x in _initializedShells) exitWith {};

_shell spawn {
	private _projectile = _this;
	//Let the shell climb a little
	sleep 3;

	//Some things that explode immediatly don't endup cluttering the script later
	if(!alive _projectile or isNull _projectile) exitWith {};

	if((_projectile isKindOf "ShellBase") or (_projectile isKindOf "SubmunitionBase")) then {
		//Create the target
		private _fake = "CRAM_Fake_PlaneTGT" createVehicle [0,0,0];
		_fake attachTo [_projectile, [0,3,0]];	

		private _entities = {};
		while {alive _projectile} do {
			_entities = (_projectile nearObjects ["BulletBase", 5]);
			if(count _entities > 0) then {
				_mine = createMine ["APERSMine", getPosATL _projectile, [], 0];
				_mine setDamage 1;
				deletevehicle _projectile;
			};
			sleep 0.3;
		};

		detach _fake;
		deletevehicle _fake;
	};
};

_initializedShells pushback _shell;
missionNamespace setVariable ["_initializedShells", _initializedShells];
true;