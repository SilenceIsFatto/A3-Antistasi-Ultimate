if (!isServer and hasInterface) exitWith {};

private ["_markerX","_destino","_origen","_grupos","_soldados","_vehiclesX","_size","_grupo","_camion","_tam","_roads","_road","_pos"];

_markerX = _this select 0;
if (not(_markerX in smallCAmrk)) exitWith {};

_destino = getMarkerPos _markerX;
_origen = getMarkerPos respawnTeamPlayer;

_grupos = [];
_soldados = [];
_vehiclesX = [];

_size = [_markerX] call A3A_fnc_sizeMarker;

_divisor = 50;

if (_markerX in airportsX) then {_divisor = 100};

_size = round (_size / _divisor);

if (_size == 0) then {_size = 1};

_typesGroup = [groupsSDKmid,groupsSDKAT,groupsSDKSquad,groupsSDKSniper];

while {(_size > 0)} do
	{
	_typeGroup = selectRandom _typesGroup;
	_formato = [];
	{
	if (random 20 <= skillFIA) then {_formato pushBack (_x select 1)} else {_formato pushBack (_x select 0)};
	} forEach _typeGroup;
	_grupo = [_origen, buenos, _formato,false,true] call A3A_fnc_spawnGroup;
	if !(isNull _grupo) then
		{
		_grupos pushBack _grupo;
		{[_x] spawn A3A_fnc_FIAinit; _soldados pushBack _x} forEach units _grupo;
		_Vwp1 = _grupo addWaypoint [_destino, 0];
		_Vwp1 setWaypointType "MOVE";
		_Vwp1 setWaypointBehaviour "AWARE";
		sleep 30;
		};
	_size = _size - 1;
	};

waitUntil {sleep 1;((not(_markerX in smallCAmrk)) or (lados getVariable [_markerX,sideUnknown] == malos) or (lados getVariable [_markerX,sideUnknown] == Invaders))};
/*
{_vehiculo = _x;
waitUntil {sleep 1; {_x distance _vehiculo < distanceSPWN} count (allPlayers - (entities "HeadlessClient_F")) == 0};
deleteVehicle _vehiculo;
} forEach _vehiclesX;*/
{_soldado = _x;
waitUntil {sleep 1; {_x distance _soldado < distanceSPWN} count (allPlayers - (entities "HeadlessClient_F")) == 0};
deleteVehicle _soldado;
} forEach _soldados;
{deleteGroup _x} forEach _grupos;