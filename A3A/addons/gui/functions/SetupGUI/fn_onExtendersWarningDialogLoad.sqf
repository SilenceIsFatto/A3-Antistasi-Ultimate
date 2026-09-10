#include "..\..\script_component.hpp"
#include "..\..\dialogues\ids.inc"
FIX_LINE_NUMBERS()
/* ----------------------------------------------------------------------------
Function: A3A_fnc_onExtendersWarningDialogLoad

Description:
    onLoad handler for extender warning dialog

Parameters:
    0: _display - The extender warning dialog <DISPLAY>

Optional:

Example:

Returns:
    Nothing

Environment:
    Client, Unscheduled

Author:
    UnseenKill/gor3Splatter
---------------------------------------------------------------------------- */
Trace_1(QFUNCMAIN(onExtendersWarningDialogLoad),_this);

if !assert(params[
    ["_dialog", nil, [displayNull]]
]) exitWith {};
if !assert(!isNull _dialog) exitWith {};

uiNamespace setVariable[QGVAR(extendersWarningDialog), _dialog];

_dialog setVariable[QGVAR(onCheckClicked), {
    Trace_1(QFUNCMAIN(onExtendersWarningDialogLoad_CheckConfirmChanged),_this);
    params["_control"];
    private _button = uiNamespace getVariable QGVAR(extendersWarningDialog)
        displayCtrl IDC_ANTISTASI_EXTENDERS_WARNING_DIALOG_BTNCONTINUE;
    _button ctrlEnable cbChecked _control;
}];

// Clicking labels should activate their checkboxes
_dialog displayCtrl IDC_ANTISTASI_EXTENDERS_WARNING_DIALOG_LABELCONFIRM ctrlAddEventHandler["MouseButtonClick", {
    Trace_1(QFUNCMAIN(onExtendersWarningDialogLoad_LabelConfirmClick),_this);
    private _check = uiNamespace getVariable QGVAR(extendersWarningDialog)
        displayCtrl IDC_ANTISTASI_EXTENDERS_WARNING_DIALOG_CHECKCONFIRM;
    _check cbSetChecked !(cbChecked _check);
    [_check] call (uiNamespace getVariable QGVAR(extendersWarningDialog) getVariable QGVAR(onCheckClicked));
}];

// Confirmation checkbox
_dialog displayCtrl IDC_ANTISTASI_EXTENDERS_WARNING_DIALOG_CHECKCONFIRM ctrlAddEventHandler["CheckedChanged", {
    call (uiNamespace getVariable QGVAR(extendersWarningDialog) getVariable QGVAR(onCheckClicked));
}];

// Confirm button
private _button = uiNamespace getVariable QGVAR(extendersWarningDialog)
    displayCtrl IDC_ANTISTASI_EXTENDERS_WARNING_DIALOG_BTNCONTINUE;

_button ctrlEnable false;
_button ctrlAddEventHandler["ButtonClick", {
    Trace_1(QFUNCMAIN(onExtendersWarningDialogLoad_BtnContinueClick),_this);
    GVAR(extendersWarningsDismissed) = true;
    while { dialog } do { closeDialog 0 };
}];

nil;
