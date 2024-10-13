/*
Maintainer: DoomMetal
    Handles the initialization and updating of the Buy Vehicle dialog.
    This function should only be called from BuyVehicle onLoad and control activation EHs.
Arguments:
    <STRING> Mode, only possible value for this dialog is "onLoad"
    <ARRAY<ANY>> Array of params for the mode when applicable. Params for specific modes are documented in the modes.
Return Value:
    Nothing
Scope: Clients, Local Arguments, Local Effect
Environment: Scheduled for onLoad mode / Unscheduled for everything else unless specified
Public: No
Dependencies:
    None
Example:
    ["onLoad"] spawn A3A_fnc_buyVehicleDialog; // initialization
*/

#include "..\..\dialogues\ids.inc"
#include "..\..\dialogues\defines.hpp"
#include "..\..\dialogues\textures.inc"
#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params[
    ["_mode","onLoad"], 
    ["_params",[]]
];

params[
    ["_mode","onLoad"], 
    ["_params",[]],
    ["_fnc_populateMenu", {[]}],
    ["_callbackHandlerKey", "BUYFIA"]
];

switch (_mode) do
{
    case ("switchTab"):
    {
        ['on'] call SCRT_fnc_ui_toggleMenuBlur;

        private _vehicleType = (uiNamespace getVariable ["STATICS_vehicleTypeBox", ""]);
        private _categoryIndex = _vehicleType lbValue lbCurSel _vehicleType;

        diag_log _categoryIndex;

        private _display = findDisplay A3A_IDD_BUYVEHICLEDIALOG;

        Debug_1("MainDialog switching tab to %1.", _categoryIndex);

        private _selectedTabIDC = -1;
        switch (_categoryIndex) do 
        {
            case (0): 
            {
                _selectedTabIDC = A3A_IDC_BUYSTATICMAIN;
            };
            case (1): 
            {
                _selectedTabIDC = A3A_IDC_BUYSTATICVEHICLEMG;
            };
            case (2): 
            {
                _selectedTabIDC = A3A_IDC_BUYSTATICVEHICLEAT;
            };
            case (3): 
            {
                _selectedTabIDC = A3A_IDC_BUYSTATICVEHICLEAA;
            };
            case (4): 
            {
                _selectedTabIDC = A3A_IDC_BUYSTATICVEHICLEMORTAR;
            };
        };
        if (_selectedTabIDC == -1) exitWith {
            Error("Attempted to access tab without permission : %1", _selectedTab);
        };

        private _allTabs = [
            A3A_IDC_BUYSTATICMAIN,
            A3A_IDC_BUYSTATICVEHICLEMG,
            A3A_IDC_BUYSTATICVEHICLEAT,
            A3A_IDC_BUYSTATICVEHICLEAA,
            A3A_IDC_BUYSTATICVEHICLEMORTAR,
            A3A_IDC_BUYVEHICLEPREVIEW
        ];

        // Hide all tabs
        Debug("Hiding all tabs");
        {
            private _ctrl = _display displayCtrl _x;
            _ctrl ctrlShow false;
        } forEach _allTabs;


        // Show selected tab
        Debug("Showing selected tab");
        private _selectedTabCtrl = _display displayCtrl _selectedTabIDC;
        _selectedTabCtrl ctrlShow true;
    };

    case ("onLoad"):
    {
        ['on'] call SCRT_fnc_ui_toggleMenuBlur;

        private _displayRB = findDisplay A3A_IDD_BUYVEHICLEDIALOG;
        private _RBTable = _displayRB displayCtrl A3A_IDC_SETUP_STATICTABLE;

        private _vehicleTypes = ["all","MG","AT","AA","MORTAR"];
        private _vals = ["staticall","staticMG","staticAT","staticAT","staticAA","staticMORTAR"];

        private _valsCtrl = _RBTable;
        /* _valsCtrl ctrlSetPosition [GRID_W * -30.4, GRID_H*-17.9, GRID_W*125, GRID_H*5]; */
        _valsCtrl ctrlCommit 0;
        {
            private _index = _valsCtrl lbAdd (_vehicleTypes#_forEachIndex);
            _valsCtrl lbSetValue [_index, (_vals find _x)];
        } forEach _vals;
        
        private _default = "staticall";
        _valsCtrl lbSetCurSel (_vals find _default);
        _valsCtrl lbSetSelected [0, true];

        uiNamespace setVariable ["STATICS_vehicleTypeBox", _valsCtrl];

        ["vehicles", [A3A_IDC_BUYSTATICMAIN, A3A_IDC_STATICSGROUP, "staticall"]] call A3A_fnc_buyVehicleTabs; ///show all?
        ["vehicles", [A3A_IDC_BUYSTATICVEHICLEMG, A3A_IDC_STATICVEHICLESGROUPMG, "staticMG"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYSTATICVEHICLEAT, A3A_IDC_STATICVEHICLESGROUPAT, "staticAT"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYSTATICVEHICLEAA, A3A_IDC_STATICVEHICLESGROUPAA, "staticAA"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYSTATICVEHICLEMORTAR, A3A_IDC_STATICVEHICLESGROUPMORTAR, "staticMORTAR"]] call A3A_fnc_buyVehicleTabs;
    };

    case ("onUnload"): 
    {
        ['off'] call SCRT_fnc_ui_toggleMenuBlur;
    };

    default
    {
        // Log error if attempting to call a mode that doesn't exist
        Error_1("BuyVehicle mode does not exist: %1", _mode);
    };
};