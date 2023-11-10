params [["_anomalies", ANOMALIES_HOLDER]];

{
    private _posX = (getPosASL _x) select 0;
    private _posY = (getPosASL _x) select 1;

    if (_posX isEqualTo 0 && {_posY isEqualTo 0}) then {deleteVehicle _x};
    // if !(_x inArea [(_posParams select 0) select 0, ((_posParams select 0) select 1) / 1.6, ((_posParams select 0) select 2) / 1.6, (_posParams select 0) select 3, (_posParams select 0) select 4]) then {deleteVehicle _x}
} forEach _anomalies;

{
    private _posX = (getPosASL _x) select 0;
    private _posY = (getPosASL _x) select 1;

    if (_posX isEqualTo 0 && {_posY isEqualTo 0}) then {deleteVehicle _x};
    // if !(_x inArea [(_posParams select 0) select 0, ((_posParams select 0) select 1) / 1.6, ((_posParams select 0) select 2) / 1.6, (_posParams select 0) select 3, (_posParams select 0) select 4]) then {deleteVehicle _x}
} forEach allMissionObjects "Building"; // blame the anomalies mod dev for not allowing building objects to be grabbed properly by variable (or i'm stupid, but it would NOT allow me to get it via getVar)

[format ["Cleaned anomaly field"], _fnc_scriptName] call A3U_fnc_log;

// shouldn't be needed anymore, going to keep incase