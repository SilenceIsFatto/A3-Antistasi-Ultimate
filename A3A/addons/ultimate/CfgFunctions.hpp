class CfgFunctions
{
    class A3U
    {
        class Ammunition
        {
            file = QPATHTOFOLDER(functions\Ammunition);
            class grabForbiddenItems {};
            class removeForbiddenItems {};
            class grabBlackMarketVehicles {};
            class removeUnlockedItems {};
        };
        class blackmarket
        {
            file = QPATHTOFOLDER(functions\blackmarket);
            class hasRequirements {};
            class sidesX {};
        };
        class cba
        {
            file = QPATHTOFOLDER(functions\cba);
            class settings {};
        };
        class init
        {
            file = QPATHTOFOLDER(functions\init);
            class checkMods {};
            class init {};
            class initZones {};
            class popup {};
        };
        class REINF
        {
            file = QPATHTOFOLDER(functions\REINF);
            class blackMarketVehiclePrice {};
        };
        class patches
        {
            file = QPATHTOFOLDER(functions\patches);
            class IMS_stealthKill {};
        };
        class STALKER
        {
            file = QPATHTOFOLDER(functions\STALKER);
            class cleanupAnomalyField {};
            class createAnomalyField {};
            class emission {};
            class fillMapAnomalies {};
        };
        class D37Dome
        {
            file = QPATHTOFOLDER(functions\D37_dome);
            class guidanceLaws {};
            class handleDome {};
            class handleTargets {};
            class initShells {};
            class pickTarget {};
            class postInitEH {postInit	= 1;};
            class watchQuality {};
        };
        class D37cram
        {
            file = QPATHTOFOLDER(functions\D37_cram);
            class handleCRAM {};
            class handleCRAMinit {};
            class pickTargetCRAM {};
            class postInit {postInit = 1;};
        };
        class Utility
        {
            file = QPATHTOFOLDER(functions\Utility);
            class exportCrate {};
            class exportPylons {};
            class exportTowns {};
            class hasAddon {};
            class log {};
            class logisticsGrabSeats {};
            class weightTest {};
        };
        class zones
        {
            file = QPATHTOFOLDER(functions\zones);
            class revealRandomZones {};
            class revealZone {};
            class revealZones {};
            class revealZonesDistance {};
        };
    };
};
