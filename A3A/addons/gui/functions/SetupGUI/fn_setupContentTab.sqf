/*
Function: A3A_fnc_setupRivalsTab
    Handles the initialization and tab switching on the setup dialog.
    This function should only be called from setupDialog onLoad and control activation EHs.
Author: John Jordan (jaj22)

Environment: Scheduled for onLoad, sendData and serverClose modes. Unscheduled for everything else.

Arguments:
    <STRING> Mode, e.g. "onLoad", "switchTab"
    <ARRAY<ANY>> Array of params for the mode when applicable. Params for specific modes are documented in the modes.


Modes:
    - update does nothing
    - factionSelected called no new item selectionNames
    - fillFactions fills faction tab with the factions
    - getFactions getter for selected items in tab

Return Value:
    on mode getFactions - returns array of selected items in dialog in form [_factions, _addons, _dlc]

*/

#include "..\..\dialogues\ids.inc"
#include "..\..\dialogues\defines.hpp"
#include "..\..\dialogues\textures.inc"
#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_mode", "_params"];

Debug_1("setupFactionsTab called with mode %1", _mode);

private _display = findDisplay A3A_IDD_SETUPDIALOG;

if (isNil "A3A_setup_loadedPatches") exitWith { Error("No patch data. Load order fuckup?") };

// Input: faction config, output: true/false
private _fnc_factionLoaded = {
    getArray (_this/"requiredAddons") findIf { !(_x in A3A_setup_loadedPatches) } == -1
};

if (isNil {_display getVariable "isContentInitialized"}) then {
    // Fill the addon vics
    private _addonTable = _display displayCtrl A3A_IDC_SETUP_ADDONVICSBOX;
    private _checkCtrls = [];
    {
        private _textCtrl = _display ctrlCreate ["A3A_Text_Small", -1, _addonTable];
        _textCtrl ctrlSetPosition [GRID_W*4, count _checkCtrls*GRID_H*4, GRID_W*40, GRID_H*4];
        _textCtrl ctrlCommit 0;
        if !(_x call _fnc_factionLoaded) then { _textCtrl ctrlSetTextColor A3A_COLOR_TEXT_DARKER_SQF };
        _textCtrl ctrlSetText getText (_x/"displayName");
        _textCtrl ctrlSetTooltip getText (_x/"description");

        private _checkCtrl = _display ctrlCreate ["A3A_Checkbox", -1, _addonTable];
        _checkCtrl ctrlSetPosition [0, count _checkCtrls*GRID_H*4, GRID_W*4, GRID_H*4];
        _checkCtrl ctrlCommit 0;
        _checkCtrl ctrlEnable (_x call _fnc_factionLoaded);				// disable if requirement failed
        _checkCtrl setVariable ["name", configName _x];
        _checkCtrls pushBack _checkCtrl;

    } forEach ("true" configClasses (A3A_SETUP_CONFIGFILE/"A3A"/"AddonVics"));
    _addonTable setVariable ["checkCtrls", _checkCtrls];

    // Fill the DLC
    // Fetch these automatically but remove DLC without equipment and vehicles
    //private _loadedDLC = getLoadedModsInfo select {_x#3 and !(_x#1 in ["A3","curator","argo","tacops"])};
    private _dlcTable = _display displayCtrl A3A_IDC_SETUP_DLCBOX;
    _checkCtrls = [];
    {
        private _textCtrl = _display ctrlCreate ["A3A_Text_Small", -1, _dlcTable];
        _textCtrl ctrlSetPosition [GRID_W*4, count _checkCtrls*GRID_H*4, GRID_W*40, GRID_H*4];
        _textCtrl ctrlCommit 0;
        _textCtrl ctrlSetText _x#0;

        private _checkCtrl = _display ctrlCreate ["A3A_Checkbox", -1, _dlcTable];
        _checkCtrl ctrlSetPosition [0, count _checkCtrls*GRID_H*4, GRID_W*4, GRID_H*4];
        _checkCtrl ctrlCommit 0;
        _checkCtrl setVariable ["name", _x#1];
        _checkCtrls pushBack _checkCtrl;

    } forEach A3A_setup_loadedDLC;
    _dlcTable setVariable ["checkCtrls", _checkCtrls];

    _display setVariable ["isContentInitialized", true];
};

switch (_mode) do
{
    case ("update"): {};			// Don't hide anything here, nothing to do

    case ("getContent"):
    {
        private _addons = [];
        {
            if (cbChecked _x) then { _addons pushBack (_x getVariable "name") };
        } forEach ((_display displayCtrl A3A_IDC_SETUP_ADDONVICSBOX) getVariable "checkCtrls");

        private _dlc = [];
        {
            if (cbChecked _x) then { _dlc pushBack (_x getVariable "name") };
        } forEach ((_display displayCtrl A3A_IDC_SETUP_DLCBOX) getVariable "checkCtrls");


        [_addons, _dlc];
    };

    case ("fillContent"):
    {
        // Add saved factions if valid
        // configNames of the occ/inv/reb/civ factions, written by setupLoadgameTab
        (_display getVariable "savedFactions") params ["_savedFactions", "_savedAddons", "_savedDLC"];
        Debug_3("Saved factions: %1 Addons: %2 DLC: %3", _savedFactions, _savedAddons, _savedDLC);

        // Should now set the addonvics & DLC tickboxes according to the save data
        private _addonCtrls = (_display displayCtrl A3A_IDC_SETUP_ADDONVICSBOX) getVariable "checkCtrls";
        private _dlcCtrls = (_display displayCtrl A3A_IDC_SETUP_DLCBOX) getVariable "checkCtrls";
        { _x cbSetChecked false } forEach _addonCtrls + _dlcCtrls;

        {
            private _addon = _x;
            private _index = _addonCtrls findIf { _x getVariable "name" == _addon };
            if (_index == -1) then { Error_1("Addon vics template %1 not found", _x); continue };
            if !(ctrlEnabled (_addonCtrls#_index)) then { Error_1("Addon vics template %1 not loaded", _x); continue };
            (_addonCtrls#_index) cbSetChecked true;
        } forEach _savedAddons;

        {
            private _dlc = _x;
            private _index = _dlcCtrls findIf { _x getVariable "name" == _dlc };
            if (_index == -1) then { Error_1("DLC %1 not loaded", _x); continue };
            (_dlcCtrls#_index) cbSetChecked true;
        } forEach _savedDLC;
    };

    default {
        Error_1("Called with unknown mode %1", _mode);
    };
};
