#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3A_fnc_initExtenderDetection

Description:
    Try to find mods depending on A3U (extenders) and validate their compatibility

Parameters:

Optional:

Example:

Returns:
    Nothing

Environment:
    Server, Unscheduled

Author:
    UnseenKill/gor3Splatter
---------------------------------------------------------------------------- */
private _ignore = [
    QUOTE(DOUBLES(PREFIX,config_fixes)),
    QUOTE(DOUBLES(PREFIX,core)),
    QUOTE(DOUBLES(PREFIX,events)),
    QUOTE(DOUBLES(PREFIX,garage)),
    QUOTE(DOUBLES(PREFIX,gui)),
    QUOTE(DOUBLES(PREFIX,hals)),
    QUOTE(DOUBLES(PREFIX,jeroen_arsenal)),
    QUOTE(DOUBLES(PREFIX,logistics)),
    QUOTE(DOUBLES(PREFIX,main_menu)),
    QUOTE(DOUBLES(PREFIX,maps)),
    QUOTE(DOUBLES(PREFIX,patcom)),
    QUOTE(DOUBLES(PREFIX,scrt)),
    QUOTE(DOUBLES(PREFIX,ultimate)),
    QUOTE(DOUBLES(PREFIX,zeus))
];

private _extenders = QUOTE(QUOTE(QADDON) in getArray(_x >> 'requiredAddons')) configClasses(configFile >> "CfgPatches") select {
    // Ignore our own cross-dependencies
    !(configName _x in _ignore);
} apply {
    [_x] call A3A_fnc_validateExtenderCompat;
};

GVAR(extendersLoaded) = _extenders apply {
    [
        _x get "author",
        _x get "name",
        _x get "extender",
        _x
    ]
};

GVAR(extendersLoaded) sort true;
GVAR(extendersLoaded) = GVAR(extendersLoaded) apply { _x select - 1 };

GVAR(extendersLoadedInvalid) = GVAR(extendersLoaded) select {
    (_x get "compatStatus" isNotEqualTo 0)
};

Info("Extender detection completed.");

if (GVAR(extendersLoaded) isEqualTo []) then {
    Info("No extenders loaded/found.");
} else {
    Info_2("Found %1 extenders. %2 of which have compatibility issues.",count GVAR(extendersLoaded),count GVAR(extendersLoadedInvalid));
    {
        if (_x get "compatStatus" isEqualTo 0) then {
            Info_5("#%1: %2 [title: %3, author: %4, version: %5]", _forEachIndex, _x, _x get "name", _x get "author", _x get "version");
        } else {
            Info_6("#%1: %2 [title: %3, author: %4, version: %5] (incompatible: %6)", _forEachIndex, _x, _x get "name", _x get "author", _x get "version", _x get "compatReason");
        };
    } forEach GVAR(extendersLoaded);
};

nil;
