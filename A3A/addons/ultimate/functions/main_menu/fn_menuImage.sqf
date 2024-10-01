enableEnvironment false;
showCinemaBorder false;

player setVariable ["menu_framework_canPlay", true];

setViewDistance 500;
setTerrainGrid 50;

private _displayName = "RscTitleDisplayEmpty";

#define IDC_HIDDENTEXT 10000

private _id = ["layer" + _displayName] call BIS_fnc_rscLayer;
_id cutRsc [_displayName, "PLAIN", 0, false, true];
private _display = uiNamespace getVariable _displayName;

private _displayImage = _display ctrlCreate ["RscPicture", IDC_HIDDENTEXT];

_displayImage ctrlEnable false;
_displayImage ctrlSetPosition [safeZoneX, safezoneY, safeZoneW, safeZoneH];
_displayImage ctrlSetText menu_framework_image;
_displayImage ctrlCommit 0;

[player, _displayImage] call A3U_fnc_removeImage;