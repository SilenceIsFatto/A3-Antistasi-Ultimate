/*
Maintainer: Socrates
    Sets animation source on already spawn vehicle if it exists. 

Arguments:
    <OBJECT> Vehicle

Return Value:
    <NIL>

Scope: Server
Environment: Any
Public: Yes
Dependencies:
    <HASHMAP> animations
    <HASHMAP> variants

Example:
[_vehicle] call SCRT_fnc_misc_tryInitVehicle;
*/
#include "..\defines.inc"
FIX_LINE_NUMBERS()

params [
	["_vehicle", objNull, [objNull, ""]],
    ["_side", sideUnknown, [sideUnknown]]
];

private _faction = Faction(_side);

private _anims = (_faction get "animations") getOrDefault [(typeOf _vehicle), []];
private _variants = (_faction get "variants") getOrDefault [(typeOf _vehicle), false];

//sane developers hate this one simple trick
//since Rivals are invaders too, they need this bad code to check if they have anims and skins too, and I'm too lazy to think of anything better than this
if (_side == Invaders && {_anims isEqualTo []}) then {
    _anims = (A3A_faction_riv get "animations") getOrDefault [(typeOf _vehicle), []];
};
if (_side == Invaders && {(_variants isEqualType false)}) then {
    _variants = (A3A_faction_riv get "variants") getOrDefault [(typeOf _vehicle), false];
};
if (_anims isEqualTo [] && _variants isEqualTo false) exitWith {};

[_vehicle, _variants, _anims] call BIS_fnc_initVehicle;
