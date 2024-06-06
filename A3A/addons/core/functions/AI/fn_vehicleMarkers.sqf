params ["_veh", "_text"];

private ["_mrkFinal","_pos","_side","_typeX","_newPos","_road","_friendlies"];

private _convoy = false;
if (_text == (localize "STR_marker_convoy_objective") or {_text == (localize "STR_marker_mission_vehicle") or {_text == (localize "STR_marker_supply_box")}}) then {
	_convoy = true
};

private _side = side (group (driver _veh));
private _formatX = "";
private _color = colorOccupants;
private _typeX = switch (true) do {
	case (_veh isKindOf "Truck" or {_veh isKindOf "Car"}): {
		"_motor_inf"
	};
	case (_veh isKindOf "Wheeled_APC_F"): {
		"_mech_inf"
	};
	case (_veh isKindOf "Tank"): {
		"_armor"
	};
	case (_veh isKindOf "Plane_Base_F"): {
		"_plane"
	};
	case (_veh isKindOf "UAV_02_base_F"): {
		"_uav"
	};
	case (_veh isKindOf "Helicopter"): {
		"_air"
	};
	case (_veh isKindOf "Boat_F"): {
		"_naval"
	};
	default {
		"_unknown"
	};
};

switch (true) do {
	case (_side in [teamPlayer, sideUnknown]): {
		_enemyX = false;
		_formatX = "n";
		_color = colorTeamPlayer;
	};
	case (_side == civilian): {
		_enemyX = false;
		_formatX = "b";
		_color = colorCivilian;
	};
	case (_side == Occupants): {
		_formatX = "b";
		_color = colorOccupants;
	};
	case (_side == Invaders): {
		_formatX = "o";
		_color = colorInvaders;
	};
};

_typeX = format ["%1%2",_formatX,_typeX];

if ((side group (driver _veh) != teamPlayer) && {side driver _veh != sideUnknown}) then {
	["TaskSucceeded", ["", format [localize "STR_notifiers_vehicle_spotted",_text]]] spawn BIS_fnc_showNotification
};

private _mrkFinal = createMarkerLocal [format ["%2%1", random 100,_text], position _veh];
_mrkFinal setMarkerShapeLocal "ICON";
_mrkFinal setMarkerTypeLocal _typeX;
_mrkFinal setMarkerColorLocal _color;
_mrkFinal setMarkerTextLocal _text;

while {(alive _veh) and {!(isNull _veh) and {(revealX or _convoy or (_veh getVariable ["revealed",false]))}}} do {
	_pos = getPos _veh;
	_mrkFinal setMarkerPosLocal _pos;
	sleep 60;
};

deleteMarkerLocal _mrkFinal;
