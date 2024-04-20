class planeLoadouts
{
    // It also has support for these parameters, though I haven't used them before.
    // mainGun
    // rocketLauncher[]
    // missileLauncher[]
    // bombRacks[]
    // diveParams[]
    class CASDIVE
    {
        /* class B_Plane_CAS_01_dynamicLoadout_F
        {
            loadout[] = {"","","","","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_BombCluster_03_F","","","",""};
            mainGun = "Gatling_30mm_Plane_CAS_01_F";
            bombRacks[] = {"Bomb_04_Plane_CAS_01_F", "BombCluster_03_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        }; */

        /// TFC
        class TFC_CP140_dynamicLoadout
        {
            loadout[] = {"","","","","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_1Rnd_BombCluster_01_F"};
            bombRacks[] = {"weapon_GBU12Launcher","BombCluster_01_F"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        /// AMF/R3F
        class R3F_ALCA_ADLA
        {
            loadout[] = {"","","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_BombCluster_01_F","",""};
            mainGun = "Twin_Cannon_20mm_gunpod";
            bombRacks[] = {"Bomb_04_Plane_CAS_01_F","BombCluster_01_F"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class R3F_GRIPEN
        {
            loadout[] = {"","","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_1Rnd_BombCluster_01_F"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            bombRacks[] = {"weapon_GBU12Launcher","BombCluster_01_F"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class AMF_RAFALE_B_01_F
        {
            loadout[] = {"","","","","PylonRack_3Rnd_GBU12_LGB","PylonRack_3Rnd_LGM_AASM","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","","","PylonRack_Missile_TANK_01_x1_f"};
            mainGun = "weapon_30m791";
            bombRacks[] = {"GBU12BombLauncherAmf","weapon_AASMLauncherAmf","dummy_TankLauncherAmf"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class AMF_RAFALE_CRO_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_EGYPTIAN_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_ARABIAN_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_GREEK_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_INDIA_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_INDO_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_QATARIAN_01_B : AMF_RAFALE_B_01_F {};

        class AMF_RAFALE_C_01_F
        {
            loadout[] = {"","","","","PylonRack_3Rnd_LGM_AASM","PylonRack_3Rnd_LGM_AASM","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","","","PylonRack_Missile_TANK_01_x1_f"};
            mainGun = "weapon_30m791";
            bombRacks[] = {"weapon_AASMLauncherAmf","dummy_TankLauncherAmf"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class AMF_RAFALE_CRO_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_EGYPTIAN_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_ARABIAN_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_GREEK_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_INDIA_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_INDO_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_QATARIAN_01_C : AMF_RAFALE_C_01_F {};

        class AMF_RAFALE_M_01_F
        {
            loadout[] = {"","","","","PylonRack_3Rnd_GBU12_LGB","PylonRack_3Rnd_GBU12_LGB","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","","","PylonRack_Missile_TANK_01_x1_f"};
            mainGun = "weapon_30m791";
            bombRacks[] = {"dummy_TankLauncherAmf","GBU12BombLauncherAmf"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class EAW_A4N
        {
            loadout[] = {"EAW_A4N_60Bomb_Mag_P","EAW_A4N_60Bomb_Mag_P"};
            mainGun = "EAW_A4N_MG";
            bombRacks[] = {"EAW_A4N_Bomb_Pod1","EAW_A4N_Bomb_Pod2"};
            diveParams[] = {1000, 300, 100, 55, 15, {0,0}};
        };
    };

    class CAS
    {
       /* class B_Plane_CAS_01_dynamicLoadout_F
        {
            loadout[] = {"PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F"};
            mainGun = "Gatling_30mm_Plane_CAS_01_F";
            rocketLauncher[] = {"Rocket_04_HE_Plane_CAS_01_F"};
            missileLauncher[] = {"Missile_AGM_02_Plane_CAS_01_F", "missiles_SCALPEL"};
        }; */

        /// TFC
        class TFC_CP140_dynamicLoadout
        {
            loadout[] = {"","","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_1Rnd_BombCluster_01_F"};
            missileLauncher[] = {"weapon_AGM_65Launcher"};
            bombRacks[] = {"weapon_GBU12Launcher","BombCluster_01_F"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        /// AMF/R3F
        class R3F_ALCA_ADLA
        {
            loadout[] = {"missiles_SCALPEL","Twin_Cannon_20mm_gunpod","r3f_tigre_roquettes","Rocket_04_HE_Plane_CAS_01_F","r3f_tigre_hellfire","Rocket_04_AP_Plane_CAS_01_F","amf_tigre_sneb"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            rocketLauncher[] = {"r3f_tigre_roquettes","Rocket_04_HE_Plane_CAS_01_F","Rocket_04_AP_Plane_CAS_01_F","amf_tigre_sneb"};
            missileLauncher[] = {"Missile_AGM_02_Plane_CAS_01_F","r3f_tigre_hellfire"};
        };
        class R3F_GRIPEN
        {
            loadout[] = {"","","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x2","PylonRack_Missile_AGM_02_x2"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_AGM_65Launcher"};
        };
        class AMF_RAFALE_B_01_F
        {
            loadout[] = {"","","","","PylonPod_1Rnd_SCALP_x1_aile2","PylonPod_1Rnd_SCALP_x1_aile2","PylonPod_1Rnd_SCALP_x1_aile","PylonPod_1Rnd_SCALP_x1_aile","","","PylonRack_1Rnd_SCALP_x1"};
            mainGun = "weapon_30m791";
            missileLauncher[] = {"weapon_ScalpLauncherAmf"};
        };
        class AMF_RAFALE_CRO_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_EGYPTIAN_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_ARABIAN_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_GREEK_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_INDIA_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_INDO_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_QATARIAN_01_B : AMF_RAFALE_B_01_F {};

        class AMF_RAFALE_C_01_F
        {
            loadout[] = {"","","","PylonRack_3Rnd_GBU12_LGB","PylonRack_3Rnd_GBU12_LGB","PylonPod_1Rnd_SCALP_x1_aile","PylonPod_1Rnd_SCALP_x1_aile","","","PylonRack_1Rnd_SCALP_x1"};
            mainGun = "weapon_30m791";
            missileLauncher[] = {"weapon_ScalpLauncherAmf"};
            bombRacks[] = {"GBU12BombLauncherAmf"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class AMF_RAFALE_CRO_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_EGYPTIAN_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_ARABIAN_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_GREEK_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_INDIA_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_INDO_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_QATARIAN_01_C : AMF_RAFALE_C_01_F {};

        class AMF_RAFALE_M_01_F
        {
            loadout[] = {"","","","","PylonRack_3Rnd_LGM_AASM","PylonRack_3Rnd_LGM_AASM","PylonPod_1Rnd_SCALP_x1_aile","PylonPod_1Rnd_SCALP_x1_aile","","","PylonRack_1Rnd_SCALP_x1"};
            mainGun = "weapon_30m791";
            missileLauncher[] = {"weapon_ScalpLauncherAmf"};
            bombRacks[] = {"weapon_AASMLauncherAmf"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class EAW_A4N
        {
            loadout[] = {"EAW_A4N_60Bomb_Mag_P","EAW_A4N_60Bomb_Mag_P"};
            mainGun = "EAW_A4N_MG";
            bombRacks[] = {"EAW_A4N_Bomb_Pod1","EAW_A4N_Bomb_Pod2"};
            diveParams[] = {1000, 300, 100, 55, 15, {0,0}};
        };
    };
   
    class AA
    {
        /// TFC
        class TFC_CP140_dynamicLoadout
        {
            loadout[] = {"PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x2","PylonRack_Missile_AMRAAM_C_x2"};
            missileLauncher[] = {"weapon_BIM9xLauncher","weapon_AMRAAMLauncher"};
        };
        /// AMF/R3F
        class R3F_ALCA_ADLA
        {
            loadout[] = {"PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_AAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonWeapon_300Rnd_20mm_shells","PylonRack_r3f_tigre_mistral","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_AAA_missiles"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            missileLauncher[] = {"missiles_ASRAAM","Missile_AA_04_Plane_CAS_01_F","missiles_Zephyr","r3f_tigre_mistral"};
        };
        class R3F_GRIPEN
        {
            loadout[] = {"PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x2","PylonRack_Missile_BIM9X_x2"};
            mainGun = "weapon_Fighter_Gun20mm_AA";
            missileLauncher[] = {"weapon_BIM9xLauncher","weapon_AMRAAMLauncher"};
        };
        class AMF_RAFALE_B_01_F
        {
            loadout[] = {"PylonMissile_Missile_MICAIR_x1","PylonMissile_Missile_MICAIR_x1","PylonRack_3_Missile_MICAEM_x1","PylonRack_3_Missile_MICAEM_x1","PylonRack_Missile_METEOR_1_x1","PylonRack_Missile_METEOR_1_x1","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_METEOR_INT_x1","PylonRack_Missile_METEOR_INT_x1","PylonRack_Missile_TANK_01_x1_f"};
            mainGun = "weapon_30m791";
            missileLauncher[] = {"weapon_MICAIRLauncher","weapon_MICAEMLauncher","weapon_METEORLauncher"};
        };
        class AMF_RAFALE_CRO_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_EGYPTIAN_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_ARABIAN_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_GREEK_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_INDIA_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_INDO_01_B : AMF_RAFALE_B_01_F {};
        class AMF_RAFALE_QATARIAN_01_B : AMF_RAFALE_B_01_F {};

        class AMF_RAFALE_C_01_F
        {
            loadout[] = {"PylonMissile_Missile_MICAEM_x1","PylonMissile_Missile_MICAEM_x1","PylonRack_3_Missile_MICAEM_x1","PylonRack_3_Missile_MICAEM_x1","PylonRack_Missile_MICAIR_x1","PylonRack_Missile_MICAIR_x1","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_METEOR_INT_x1","PylonRack_Missile_METEOR_INT_x1","PylonRack_Missile_TANK_01_x1_f"};
            mainGun = "weapon_30m791";
            missileLauncher[] = {"weapon_MICAIRLauncher","weapon_MICAEMLauncher","weapon_METEORLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class AMF_RAFALE_CRO_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_EGYPTIAN_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_ARABIAN_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_GREEK_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_INDIA_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_INDO_01_C : AMF_RAFALE_C_01_F {};
        class AMF_RAFALE_QATARIAN_01_C : AMF_RAFALE_C_01_F {};

        class AMF_RAFALE_M_01_F
        {
            loadout[] = {"PylonMissile_Missile_MICAIR_x1","PylonMissile_Missile_MICAIR_x1","PylonRack_3_Missile_MICAEM_x1","PylonRack_3_Missile_MICAEM_x1","PylonRack_Missile_MICAEM_x1","PylonRack_Missile_MICAEM_x1","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_METEOR_INT_x1","PylonRack_Missile_METEOR_INT_x1","PylonRack_Missile_TANK_01_x1_f"};
            mainGun = "weapon_30m791";
            missileLauncher[] = {"weapon_MICAIRLauncher","weapon_MICAEMLauncher","weapon_METEORLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class B_AMF_PLANE_FIGHTER_02_F
        {
            loadout[] = {"PylonRack_Missile_MAGIC2_x1","PylonRack_mirage2_Missile_MICAEM_x1","PylonRack_mirage2_Missile_MICAEM_x1","PylonRack_Missile_MAGIC2_x1","PylonRack_mirage1_Missile_MICAIR_x1","PylonRack_mirage1_Missile_MICAIR_x1"};
            mainGun = "weapon_30defa554";
            missileLauncher[] = {"weapon_MAGIC2Launcher","weapon_MICAIRLauncher","weapon_MICAEMLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class fow_va_a6m_white
        {
            mainGun = "fow_w_type99_cannon_2x";
        };
        class fow_va_f6f_c
        {
            mainGun = "fow_w_m2_cannon_2x";
        };
    };
};
