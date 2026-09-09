class CfgMapContextMenu {
    class Location {
        class ContextBase {
            // Context menu action title
            title = "";
            // Context menu action tooltip
            tooltip = "";
            // Context menu action condition; signature [String marker, Object player[, Array params]] -> Boolean
            condition = "true";
            // Context menu action statement; signature [String marker, Object player[, Array params]] -> Void
            statement = "";
            // Additional parameters for callbacks
            parameters[] = {};
            // Context menu action icon
            icon = "";
            // Context menu action priority; higher numbers are shown first, capped at 255
            priority = 0;
            // Close context menu prior to statement being executed
            closeContextMenu = 1;
            // Close map prior to statement being executed
            closeMap = 0;
            // (true): show even if condition statement evaluates to false, but as inactive
            // (false): don't show if condition statement evaluates to false
            showIfDisabled = 0;
        };

        class GVAR(FastTravel): ContextBase {
            title = "$STR_antistasi_dialogs_main_fast_travel";
            showIfDisabled = 1;
            statement = "diag_log text str _this";
        };

        class GVAR(Garrison): ContextBase {
            title = "$STR_A3A_garrison_header";
            statement = "diag_log text str _this";
        };

        class GVAR(DeliverSupplies): ContextBase {
            title = "$STR_A3U_CONTEXT_DELIVER_SUPPLIES";
            statement = "diag_log text str _this";
        };

        class GVAR(RebuildAssets): ContextBase {
            title = "$STR_antistasi_dialogs_hq_garrisons_rebuild_assets_button";
            statement = "diag_log text str _this";
        };

        class GVAR(Close): ContextBase {
            title = "$STR_antistasi_dialogs_hq_button_close_text";
            tooltip = "Close this overlay";
            statement = QUOTE(call FUNC(closeContextMenu));
            closeContextMenu = 0; // no infinite loop, plz
            priority = 255;
        };
    };
};
