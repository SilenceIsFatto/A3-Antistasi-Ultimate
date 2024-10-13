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

        private _vehicleType = (uiNamespace getVariable ["RB_vehicleTypeBox", ""]);
        private _categoryIndex = _vehicleType lbValue lbCurSel _vehicleType;

        diag_log _categoryIndex;

        private _display = findDisplay A3A_IDD_BUYVEHICLEDIALOG;

        Debug_1("MainDialog switching tab to %1.", _categoryIndex);

        private _selectedTabIDC = -1;
        switch (_categoryIndex) do 
        {
            case (0): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEMAIN;
            };
            case (1): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEBASIC;
            };
            case (2): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLETRUCKS;
            };
            case (3): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLELIGHTUNARMED;
            };
            case (4): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEBOATS;
            };
            case (5): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEMEDICAL;
            };
            case (6): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLELIGHTARMED;
            };
            case (7): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEAT;
            };
            case (8): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEAA;
            };
            case (9): 
            {
                _selectedTabIDC = A3A_IDC_BUYREBVEHICLEPLANE;
            };
        };
        if (_selectedTabIDC == -1) exitWith {
            Error("Attempted to access tab without permission : %1", _selectedTab);
        };

        private _allTabs = [
            A3A_IDC_BUYREBVEHICLEMAIN,
            A3A_IDC_BUYREBVEHICLEBASIC,
            A3A_IDC_BUYREBVEHICLETRUCKS,
            A3A_IDC_BUYREBVEHICLELIGHTUNARMED,
            A3A_IDC_BUYREBVEHICLEBOATS,
            A3A_IDC_BUYREBVEHICLEMEDICAL,
            A3A_IDC_BUYREBVEHICLELIGHTARMED,
            A3A_IDC_BUYREBVEHICLEAT,
            A3A_IDC_BUYREBVEHICLEAA,
            A3A_IDC_BUYREBVEHICLEPLANE,
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
        private _RBTable = _displayRB displayCtrl A3A_IDC_SETUP_RBTABLE;

        private _vehicleTypes = ["all","basics","trucks","lightunarmed","boats","medical","lightarmed","at","aa","plane"];
        private _vals = ["militaryall","militarybasic","militarytrucks","militarylightunarmed","militaryboats","militarymedical","militarylightarmed","militaryat","militaryaa","militaryplane"];

        private _valsCtrl = _RBTable;
        /* _valsCtrl ctrlSetPosition [GRID_W * -30.4, GRID_H*-17.9, GRID_W*125, GRID_H*5]; */
        _valsCtrl ctrlCommit 0;
        {
            private _index = _valsCtrl lbAdd (_vehicleTypes#_forEachIndex);
            _valsCtrl lbSetValue [_index, (_vals find _x)];
        } forEach _vals;
        
        private _default = "militaryall";
        _valsCtrl lbSetCurSel (_vals find _default);
        _valsCtrl lbSetSelected [0, true];

        uiNamespace setVariable ["RB_vehicleTypeBox", _valsCtrl];

        ["vehicles", [A3A_IDC_BUYREBVEHICLEMAIN, A3A_IDC_REBVEHICLESGROUP, "militaryall"]] call A3A_fnc_buyVehicleTabs; ///show all?
        ["vehicles", [A3A_IDC_BUYREBVEHICLECARS, A3A_IDC_REBVEHICLESGROUPCARS, "militarybasic"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLETRUCKS, A3A_IDC_REBVEHICLESGROUPTRUCKS, "militarytrucks"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEBOATS, A3A_IDC_REBVEHICLESGROUPBOATS, "militarylightunarmed"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEHELI, A3A_IDC_REBVEHICLESGROUPHELI, "militaryboats"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEPLANE, A3A_IDC_REBVEHICLESGROUPPLANE, "militarymedical"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEPLANE, A3A_IDC_REBVEHICLESGROUPPLANE, "militarylightarmed"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEPLANE, A3A_IDC_REBVEHICLESGROUPPLANE, "militaryat"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEPLANE, A3A_IDC_REBVEHICLESGROUPPLANE, "militaryaa"]] call A3A_fnc_buyVehicleTabs;
        ["vehicles", [A3A_IDC_BUYREBVEHICLEPLANE, A3A_IDC_REBVEHICLESGROUPPLANE, "militaryplane"]] call A3A_fnc_buyVehicleTabs;
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