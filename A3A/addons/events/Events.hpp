class Events {
    class AIVehInit {
        CBA_Event = CBA_EVENT_SERVER_INIT_AI_VEHICLE;
    };
    class HQPlaced {
        CBA_Event = CBA_EVENT_CLIENT_HQ_BUILT;
    };
    class RebelControlCreated {
        CBA_Event = CBA_EVENT_SERVER_CREATE_REBEL_CONTROL;
    };
    class markerChange {
        CBA_Event = CBA_EVENT_SERVER_MARKER_CHANGE;
    };
    class vehicleBoxRestore {
        CBA_Event = CBA_EVENT_CLIENT_VEHICLE_BOX_RESTORE;
    };
    class civInit {
        isLocal = 1;
        class params {
            class _0 {
                description = "Unit being initialized";
                types[] = {"OBJECT"};
                optional = 0;
            };
        };
    };
    class civVehInit {
        isLocal = 1;
        class params {
            class _0 {
                description = "civ vehicle being initialized";
                types[] = {"OBJECT"};
                optional = 0;
            };
        };
    };
    class locationSpawned {
        isLocal = 1;
        class params {
            class _0 {
                description = "Marker";
                types[] = {"STRING"};
                optional = 0;
            };
            class _1 {
                description = "Location type";
                types[] = {"STRING"};
                optional = 0;
            };
            class _2 {
                description = "Is spawning";
                types[] = {"BOOL"};
                optional = 0;
            };
        };
    };
    class AIInit {
        isLocal = 1;
        class params {
            class _0 {
                description = "Unit being initialized";
                types[] = {"OBJECT"};
                optional = 0;
            };
            class _1 {
                description = "Side of the unit";
                types[] = {"SIDE"};
                optional = 0;
            };
            class _2 {
                description = "Marker the unit belongs to";
                types[] = {"STRING"};
                optional = 1;
            };
            class _3 {
                description = "If the unit is a spawner";
                types[] = {"BOOL"};
                optional = 0;
            };
        };
    };
    class Undercover {
        isLocal = 1;
        class params {
            class _0 {
                description = "Reason for undercover break (empty on init)";
                types[] = {"STRING"};
                optional = 1;
            };
        };
    };
/*
    class Example {
        isLocal = 1;
        class params {
            class _0 {
                description = "";
                types[] = {""};
                optional = 0;
            };
        };
    };
*/
};
