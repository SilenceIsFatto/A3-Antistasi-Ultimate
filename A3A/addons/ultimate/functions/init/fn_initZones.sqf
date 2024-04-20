params [["_markersX", markersX]];

// private _hideEnemyMarkers = missionNamespace getVariable ["A3U_setting_hideEnemyMarkers",false];
if !(hideEnemyMarkers) exitWith {};



markersImmune = markersX select {
    ((sidesX getVariable [_x, sideUnknown]) isEqualTo resistance)
    || 
    {("cont" in _x)} 
    || 
    {(_x in citiesX)}
    || 
    {(_x in airportsX)}
}; // this var should in theory only be seen by the server

{
    private _markerSide = sidesX getVariable [_x, sideUnknown];
    if (_markerSide isNotEqualTo sideUnknown && {_markerSide isNotEqualTo resistance}) then 
    {
        if (_x in airportsX || {_x in citiesX}) then {} else {
            "Dum"+_x setMarkerAlpha 0; // "Dum" is for dummy marker, the actual one you see in-game. The editor one is hidden
        };
    };
} forEach _markersX;