#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3A_fnc_validateExtenderCompat

Description:
    Validates the compatibility of the extender with the current version

Parameters:
    0: _config - some mod's CfgPatches entry <CONFIG>

Optional:

Example:

Returns:
    <HASHMAP> containing the compatibility status of the extender

Environment:
    Server, Unscheduled

Author:
    UnseenKill/gor3Splatter
---------------------------------------------------------------------------- */
Trace_1(QFUNCMAIN(validateExtenderCompat),_this);

if !assert(params[
    ["_config", nil, [configNull]]
]) exitWith {};

private _extender = createHashMapFromArray[
    ["author", getText(_config >> "author")],
    ["compatReason", ""],
    ["compatStatus", 0], // 0=all good, 1=incompatible, 2=might be compatible
    ["extender", configName _config],
    ["name", getText(_config >> "name")]
];

try {
    if !(isArray(_config >> "A3A_compatibility")) then {
        throw ["missing A3A_compatibility information or it's not an array", 1];
    };

    private _compatVersion = getArray(_config >> "A3A_compatibility");

    if !assert(_compatVersion params[
        ["_major", nil, [0]],
        ["_minor", nil, [0]]
    ]) then {
        throw ["A3A_compatibility needs to be an array with two integer elements", 1];
    };

    if (_major > MAJOR) then {
        throw ["can't declare compatibility for a higher major version", 1];
    };

    if (_minor > MINOR) then {
        throw ["can't declare compatibility for a higher minor version", 2];
    };
} catch {
    _exception params["_reason","_status"];
    _extender set["compatReason", _reason];
    _extender set["compatStatus", _status];
};

_extender;
