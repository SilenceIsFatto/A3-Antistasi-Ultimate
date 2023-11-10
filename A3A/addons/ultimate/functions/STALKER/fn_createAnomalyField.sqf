/*
    Function: A3U_fnc_createAnomalyField

    Description:
        Creates an anomaly field around the map, avoiding water

    Parameter:
        _anomalyAmount <INTEGER>

    Returns:
        array of all created anomalies

    Author:
        Silence
*/

// You can find the unedited script by diwako here: https://github.com/diwako/stalker_anomalies/blob/master/mod/diwako_anomalies/functions/anomalies/fn_createAnomalyField.sqf
// This is their mod: https://steamcommunity.com/sharedfiles/filedetails/?id=1383903166

// I had to rewrite this because the original script doesn't take into account water, out of bounds, etc.
// License: APL-SA

params[["_anomalyAmount", 40]];

private _anomalies = [];

private _drawAnomalies = missionNamespace getVariable ["A3U_setting_anomalyDraw", false];

private _fnc_grabPos = {
    private _pos = [nil, ["water"]] call BIS_fnc_randomPos;

    // I used to have random code here, it's not needed anymore

    if (_pos isEqualTo [0,0] || {_pos isEqualTo [0,0,0]}) exitWith {_pos = call _fnc_grabPos}; // pls let recursive function work

    _pos
};

private _fnc_structureText = { // idk why I named it this, it structures the text AND makes a marker
    params ["_text", "_anomaly", "_index"];

    if (_drawAnomalies isEqualTo false) exitWith {};
    
    private _marker = createMarker [(_text + str _index), [0,0]];
    _marker setMarkerType "mil_dot";
    _marker setMarkerText _text;
    _marker setMarkerPos (getPos _anomaly);
};

[format ["Creating anomaly field, anomaly amount: ", [_anomalyAmount]], _fnc_scriptName] call A3U_fnc_log;

for "_i" from 1 to _anomalyAmount do {
    private _pos = call _fnc_grabPos;
    private _roll = selectRandomWeighted [
        1,0.5,
        2,0.5,
        3,0.3,
        4,0.3
    ];

    switch (_roll) do
    {
        case 1: 
        {
            private _anomaly = [_pos] call anomaly_fnc_createMeatgrinder;
            _anomalies pushBack _anomaly;
            ["meatgrinder", _anomaly, _i] call _fnc_structureText;
        };
        case 2: 
        {
            private _anomaly = [_pos] call anomaly_fnc_createSpringboard;
            _anomalies pushBack _anomaly;
            ["springboard", _anomaly, _i] call _fnc_structureText;
        };
        case 3: 
        {
            private _anomaly = [_pos] call anomaly_fnc_createBurner;
            _anomalies pushBack _anomaly;
            ["burner", _anomaly, _i] call _fnc_structureText;
        };
        case 4: 
        {
            private _anomaly = [_pos] call anomaly_fnc_createElectra;
            _anomalies pushBack _anomaly;
            ["electra", _anomaly, _i] call _fnc_structureText;
        };
    };
};

// [_anomalies] call A3U_fnc_cleanupAnomalyField;

[format ["Created anomaly field, anomaly amount final: ", [count _anomalies]], _fnc_scriptName] call A3U_fnc_log;

_anomalies