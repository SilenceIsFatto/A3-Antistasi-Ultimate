class CfgFunctions
{
    class A3U
    {
        class Ammunition
        {
            file = QPATHTOFOLDER(functions\Ammunition);
            class grabForbiddenItems {};
            class removeForbiddenItems {};
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
            class popup {};
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
        class Utility
        {
            file = QPATHTOFOLDER(functions\Utility);
            class exportCrate {};
            class exportPylons {};
            class hasAddon {};
            class log {};
            class logisticsGrabSeats {};
            class weightTest {};
        };
    };
};
