#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3A_fnc_setupCheckExtenders

Description:
    Check loaded extenders, open dismissal dialog, if necessary

Parameters:

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

// Should not happen but we can't game setup abort
if (!assert(!isNil QEGVAR(core,extendersLoaded)) || { !assert(!isNil QEGVAR(core,extendersLoadedInvalid)) }) exitWith {
    Error_1("Client never got extender information. %1 doesn't exist.",QEGVAR(core,extendersLoaded));
    true;
};

// Warnings already dismissed by this dialog
if (!isNil QEGVAR(core,extendersWarningDismissed)) exitWith {
    true;
};

// Nothing to nag about
if (QEGVAR(core,extendersLoadedInvalid) isEqualTo []) exitWith {
    true;
};

[{ createDialog QGVAR(ExtendersWarningDialog) }] call CBA_fnc_execNextFrame;

false;
