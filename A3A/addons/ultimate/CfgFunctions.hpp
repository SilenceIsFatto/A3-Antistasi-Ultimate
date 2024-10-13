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
            class invaderComeback {};
            class setInvaderState {};
            class simpleAttack {};
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
            class exportTowns {};
            class hasAddon {};
            class log {};
            class logisticsGrabSeats {};
            class weightTest {};
        };
        class zombie
        {
            file = QPATHTOFOLDER(functions\zombie);
            class attackHeli {};
            class spawnZombie {};
            class spawnZombieCrater {};
            class spawnZombieRoar {};
            class spawnZombieWave {};
            class spawnZombieWaves {};
        };
        class zones
        {
            file = QPATHTOFOLDER(functions\zones);
            class revealRandomZones {};
            class revealZone {};
            class revealZones {};
            class revealZonesDistance {};
        };
        class D37Dome
        {
            file = QPATHTOFOLDER(functions\D37\D37_dome);
            class guidanceLaws {};
            class handleDome {};
            class handleMissile {};
            class handleTargets {};
            class handleUAV {};
            class initMissile {};
            class initShells {};
            class pickTarget {};
            class postInitEH {postInit	= 1;};
            class watchQuality {};
        };
        class D37cram
        {
            file = QPATHTOFOLDER(functions\D37\D37_cram);
            class handleCRAM {};
            class handleCRAMinit {};
            class handleTargetsCRAM {};
            class initMissileCRAM {};
            class initShellsCRAM {};
            class pickTargetCRAM {};
            class postInit {postInit = 1;};
        };
    };
};
