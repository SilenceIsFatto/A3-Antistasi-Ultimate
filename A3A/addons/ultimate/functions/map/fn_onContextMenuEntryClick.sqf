#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3U_fnc_onContextMenuEntryClick

Description:
    Event handler for map context menu button click

Parameters:
    0: _control - button to receive event <CONTROL>

Optional:

Example:

Returns:
    Nothing

Environment:
    Client, Unscheduled

Author:
    UnseenKill/gor3Splatter
---------------------------------------------------------------------------- */
Trace_1(QFUNCMAIN(onContextMenuEntryClick),_this);

if !assert(params[
    ["_control", nil, [controlNull]]
]) exitWith {};

nil;
