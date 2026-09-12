#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3A_fnc_setupCheckExtenders

Description:
    Check loaded extenders, open dismissal dialog, if necessary

Parameters:
    0: _params - Array of parameters originally passed to `A3A_fnc_setupDialog`

Optional:

Example:

Returns:
    <BOOL> - true if loaded extenders are compatible, false otherwise

Environment:
    Client, Unscheduled

Author:
    UnseenKill/gor3Splatter
---------------------------------------------------------------------------- */
Trace_1(QFUNCMAIN(setupCheckExtenders),_this);

if !assert(params[
    ["_params", nil, [[]]]
]) exitWith {};

// Should not happen but we can't abort game setup
if (!assert(!isNil QEGVAR(core,extendersLoaded)) || { !assert(!isNil QEGVAR(core,extendersLoadedInvalid)) }) exitWith {
    Error_1("Client never got extender information. %1 doesn't exist.",QEGVAR(core,extendersLoaded));
    true;
};

// Warnings already dismissed by this dialog
if (!isNil QGVAR(extendersWarningDismissed)) exitWith {
    true;
};

// Nothing to nag about
if (EGVAR(core,extendersLoadedInvalid) isEqualTo []) exitWith {
    true;
};

Info("There are invalid extenders loaded. Showing extenders warning dialog.");

missionNamespace setVariable[QGVAR(setupDialogParams), _params];

[{ createDialog QGVAR(ExtendersWarningDialog) }] call CBA_fnc_execNextFrame;

false;
