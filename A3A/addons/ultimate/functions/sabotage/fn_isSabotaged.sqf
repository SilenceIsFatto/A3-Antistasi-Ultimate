params [
    ["_item", "staticAT"]
];

private _isSabotaged = missionNamespace getVariable ["A3U_" + _item + "_sabotaged", false];
// missionNamespace setVariable ["A3U_statics_sabotaged", true];

_isSabotaged