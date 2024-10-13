if(!isServer) exitWith {};
if !(allowCRAMIRONDOME) exitWith {};

//Optimized version of the shells initialization script 
private _UAV = param[0];

if(isNull _UAV) exitWith {};
if(!unitIsUAV _UAV) exitWith {};

//Currently initatizated shells
private _initializedShells = missionNamespace getVariable ["_initializedShells", []];
_initializedShells pushback _UAV;
missionNamespace setVariable ["_initializedShells", _initializedShells];

//Prevents double init, the EH only runs once
//if(_x in _initializedShells) exitWith {};

_UAV spawn {
	private _UAV = _this;

	//Detection loop
	while {alive _UAV} do {
		private _entities = _UAV nearObjects ["MissileBase", 25];
		
		/*
		//Prvents cruise missiles for seeing themselves
		if(_isCruiseMissile) then {
			_entities = _entities select {!(_x isKindOf "ammo_Missile_CruiseBase")};
		};
		*/
	
		//Boom
		if(count _entities > 0) then {
			{
				private _target = _x getVariable ["_chosenTarget", objNull];
				if (_target == _UAV) then {
					//Cleanup
					["_targetedShells", _UAV, "remove"] call A3U_fnc_handleTargets;
					["_initializedShells", _UAV, "remove"] call A3U_fnc_handleTargets;
					
					//_UAV setDamage 1; <-- causes the relict to become NOID..etc and basically makes the missile fire on it again
                    _mine = createMine ["APERSMine", getPosATL _UAV, [], 0];
                    deletevehicle _UAV; 
                    triggerammo _x; //Entity whose target is the _UAV aka the missile
                    _mine setDamage 1;
					break;
				};
			}forEach _entities;	
		};
		sleep 0.08; 
	};
};

true;
