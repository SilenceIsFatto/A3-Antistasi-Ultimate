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
            // (true): show even if condition statement evaluates to false, but as inactive
            // (false): don't show if condition statement evaluates to false
            showIfDisabled = 1;
        };

        class GVAR(FastTravel): ContextBase {
            title = "$STR_antistasi_dialogs_main_fast_travel";
        };

        class GVAR(Garrison): ContextBase {
            title = "$STR_A3A_garrison_header";
        };

        class GVAR(DeliverSupplies): ContextBase {
            title = "$STR_A3U_CONTEXT_DELIVER_SUPPLIES";
        };

        class GVAR(RebuildAssets): ContextBase {
            title = "$STR_antistasi_dialogs_hq_garrisons_rebuild_assets_button";
        };

        class GVAR(Close): ContextBase {
            title = "$STR_A3U_CONTEXT_CLOSE";
            priority = 255;
        };
    };
};
