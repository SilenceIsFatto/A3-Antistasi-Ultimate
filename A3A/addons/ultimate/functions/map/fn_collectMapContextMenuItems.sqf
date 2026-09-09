#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3U_fnc_collectMapContextMenuItems

Description:
    Collect entries to be displayed in dynamic map context menu.

Parameters:
    0: _marker - Marker for which to display context menu <STRING>
    1: _player - Player for which to display context menu <OBJECT>

Optional:

Example:

Returns:
    <ARRAY> Array of context menu entries.

Environment:
    Client, Unscheduled

Author:
    UnseenKill/gor3Splatter
---------------------------------------------------------------------------- */
Trace_1(QFUNCMAIN(collectMapContextMenuItems),_this);

if !assert(params[
    ["_marker", nil, [""]],
    ["_player", nil, [objNull]]
]) exitWith {};

private _items = QUOTE(getText(_x >> 'statement') isNotEqualTo '') configClasses(configFile >> "A3U" >> "CfgMapContextMenu" >> "Location") select {
    private _condition = getText(_x >> "condition");

    (_condition isEqualTo "true") ||
    { getNumber(_x >> "showIfDisabled") != 0 } ||
    { [_marker, _player] call compile _condition };
} apply {
    [
        255 - getNumber(_x >> "priority"),
        getText(_x >> "title"),
        createHashMapFromArray[
            ["condition", compile getText(_x >> "condition")],
            ["icon", getText(_x >> "icon")],
            ["parameters", getArray(_x >> "parameters")],
            ["priority", getNumber(_x >> "priority")],
            ["showIfDisabled", getNumber(_x >> "showIfDisabled") != 0],
            ["statement", compile getText(_x >> "statement")],
            ["tooltip", getText(_x >> "tooltip")]
        ]
    ];
};

_items sort true;
_items apply { _x select -1 };
