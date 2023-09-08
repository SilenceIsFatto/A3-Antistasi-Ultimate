/*
    Author:
    Silence

    Description:
    Handles removing forbidden items from arrays.

    Params:
	_arrays  <ARRAY> <DEFAULT: [lootBasicItem,lootNVG,lootItem,lootWeapon,lootAttachment,lootMagazine,lootGrenade,lootExplosive,lootBackpack,lootHelmet,lootVest,lootDevice,allRifles,allHandguns,allMachineGuns,allShotguns,allSMGs,allSniperRifles,allRocketLaunchers,allMissileLaunchers,allArmoredHeadgear,allVests,allArmoredVests]>

    Usage:
    [_arrays] call A3U_fnc_removeForbiddenItems;
*/

params [ 
	["_arrays", [lootBasicItem,lootNVG,lootItem,lootWeapon,lootAttachment,lootMagazine,lootGrenade,lootExplosive,lootBackpack,lootHelmet,lootVest,lootDevice,allRifles,allHandguns,allMachineGuns,allShotguns,allSMGs,allSniperRifles,allRocketLaunchers,allMissileLaunchers,allHeadgear,allArmoredHeadgear,allVests,allArmoredVests]] 
    // lord forgive me for this MONSTROSITY
];

if (missionNamespace getVariable ["A3U_loot_removedForbiddenItems", false] isEqualTo true) exitWith {};
 
private _start = diag_tickTime;

{ 
	private _array = _x; 
	{ 
		private _index = _array find _x; 
		if (_index isNotEqualTo -1 && {getNumber (configFile >> "A3U" >> "forbiddenItems" >> _x >> "appearInCrates") isEqualTo 0}) then {
            [format ["Removed %1 from %2", _x, _array]] call A3U_fnc_log;
			_array deleteAt (_index);
		};
	} forEach A3U_forbiddenItems;
} forEach _arrays;
 
["Currently removing forbidden items from a ton of arrays. This may take a while. (Time exponentially expands as more stuff needs to be iterated through!)"] call A3U_fnc_log; 
 
private _stop = diag_tickTime;
 
[format ["Forbidden items removal took approximately: %1 seconds.",round(_stop - _start)]] call A3U_fnc_log;

missionNamespace setVariable ["A3U_loot_removedForbiddenItems", true];