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
        CBA_Event = CBA_EVENT_SERVER_INIT_CIVILIAN_UNIT;
    };
    class civVehInit {
        CBA_Event = CBA_EVENT_SERVER_INIT_CIVILIAN_VEHICLE;
    };
    class locationSpawned {
        CBA_Event = CBA_EVENT_SERVER_SPAWN_LOCATION;
    };
    class AIInit {
        CBA_Event = CBA_EVENT_SERVER_INIT_AI_UNIT;
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
