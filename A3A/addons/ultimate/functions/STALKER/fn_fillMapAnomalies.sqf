/*
    Function: A3U_fnc_fillMapAnomalies

    Description:
        Fills the map with anomalies, based off of map size and cba setting

    Parameter:
        N/A

    Returns:
        N/A

    Author:
        Silence
*/

params [["_anomalyAmount", 200]]; // ignore this parameter, it doesn't do anything atm

private _size = worldSize;

private _anomalyAmount = (_size / (missionNamespace getVariable ["A3U_setting_anomalyAmount", 200])) * 2; // generally better to have more because we don't know where they will be placed

/*
private _axis = _size / 2;
private _center = [_axis, _axis , 0]; // grab the center of the map, so we know where to start the anomaly spawning from
private _radius = sqrt 2 * _axis / 1.425; // grab the general radius of the map, this is usually bigger than the map. Then we divide it by 1.425 to almost get the correct size
*/

[_anomalyAmount] call A3U_fnc_createAnomalyField;