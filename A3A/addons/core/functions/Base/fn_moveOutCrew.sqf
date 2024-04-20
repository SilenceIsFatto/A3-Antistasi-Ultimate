/*
Author: wersal
Attempts to move out any crew(including UAV ai) from the vehicle.

Arguments:
    <OBJECT> Player who is trying to move out the crew.
    <OBJECT> cursorObject of the player.

Return Value:
<NIL> nil

Scope: Server/HC, All calls need to be executed on one machine, using an HC is also possible.
Environment: Unscheduled, is used to moveout crew, execution cannot be stacked and exploited.
Public: No
Dependencies:
<STRING> ownerX found on vehicles, contains UID of player who bought it.
<ARRAY> Template vehicle arrays.

Example:
// From a button control:
action = "if (player == theBoss) then {closeDialog 0; nul = [player,cursorObject] remoteExecCall [""A3A_fnc_moveOutCrew"",2]} else {["localize "STR_A3A_Base_moveOutCrew_header"", ""Only the Commander can move out vehicle crew.""] call A3A_fnc_customHint;};";

// Testing spam:
for "_i" from 1 to 1000 do {
    [player,cursorObject] remoteExecCall ["A3A_fnc_moveOutCrew",2];
};

*/

params [
    ["_player",objNull,[objNull]],
    ["_veh",objNull,[objNull]]
];
#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

#define OccAndInv(VAR) (FactionGet(occ, VAR) + FactionGet(inv, VAR))
private _vehicle = _veh;
private _crewgroup = crew _vehicle;
private _crewdriver = _crewgroup select 0;
private _crewdgunner = _crewgroup select 1;
if (isNull _player) exitWith { Error("_player is null.") };
if (isNull _vehicle) exitWith {
    [localize "STR_A3A_Base_moveOutCrew_header", localize "STR_A3A_reinf_airstrike_not_looking_at_veh"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];
};
_owner = _vehicle getVariable ["ownerX",""];
if !(_owner isEqualTo "" || {getPlayerUID _player isEqualTo _owner}) exitWith {  // Vehicle cannot be sold if owned by another player.
    [localize "STR_A3A_Base_moveOutCrew_header", localize "STR_A3A_Base_sellVehicle_err2"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];
};

if (((side driver _vehicle==  west) || (side _vehicle == east)) && alive driver _vehicle) exitWith {
    [localize "STR_A3A_Base_moveOutCrew_header", localize "STR_A3A_Base_moveOutCrew_err0"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];
};

/* if (_veh getVariable ["A3A_moveOutCrew_inProgress",false]) exitWith {[localize "STR_A3A_Base_sellVehicle_header", localize "STR_A3A_Base_sellVehicle_err3"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];};
_veh setVariable ["A3A_moveOutCrew_inProgress",true,false];   */ // Only processed on the server. It is absolutely pointless trying to network this due to race conditions.

if (unitIsUAV _vehicle) then {
    deleteVehicle _crewdriver;
    deleteVehicle _crewgunner;
};

{
    _x action ["Eject", _vehicle];
    unassignVehicle _x;
} forEach units _vehicle;

{
	moveOut _x 
} forEach units _vehicle;

{
    _x leaveVehicle _vehicle;
} forEach units _vehicle;


[localize "STR_A3A_Base_moveOutCrew_header", localize "STR_A3A_Base_moveOutCrew_success"] remoteExecCall ["A3A_fnc_customHint",_player];

nil;
