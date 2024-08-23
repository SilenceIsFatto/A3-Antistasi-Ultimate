//////////////////////////
//   Side Information   //
//////////////////////////

["name", "ION"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "ION"]] call _fnc_saveToTemplate;

["flag", "Flag_ION"] call _fnc_saveToTemplate;
["flagTexture", "uk3cb_factions\addons\uk3cb_factions_ion\flag\ion_flag_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "UK3CB_Marker_ION"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

// _CAMO_ marker
["vehiclesBasic", ["UK3CB_ION_B_Winter_Quadbike", "UK3CB_ION_B_Winter_M1030"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["UK3CB_ION_B_Winter_SUV", "UK3CB_ION_B_Winter_LSV_02", "UK3CB_ION_B_Winter_M1025"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["UK3CB_ION_B_Winter_SUV_Armed", "UK3CB_ION_B_Winter_LSV_02_Armed", "UK3CB_ION_B_Winter_M1025_M2"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["UK3CB_ION_B_Winter_T810_Closed", "UK3CB_ION_B_Winter_T810_Open"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["UK3CB_ION_B_Winter_T810_Closed", "UK3CB_ION_B_Winter_T810_Open", "UK3CB_ION_B_Winter_T810_Recovery"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["UK3CB_ION_B_Winter_T810_Reammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["UK3CB_ION_B_Winter_T810_Repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["UK3CB_ION_B_Winter_T810_Refuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["UK3CB_ION_B_Winter_Hilux_Ambulance", "UK3CB_ION_B_Winter_Transit_Medevac"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["UK3CB_ION_B_Winter_M113_M2_90", "UK3CB_ION_B_Winter_M113_M240", "UK3CB_B_LAV25_HQ_US_WDL", "UK3CB_B_LAV25_US_WDL"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["UK3CB_ARD_B_BTR80a", "UK3CB_ARD_B_MTLB_Cannon", "RHS_M6_wd", "rhsusf_stryker_m1127_m2_wd"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["UK3CB_ARD_B_BTR80a", "rhsusf_stryker_m1134_wd", "rhsusf_stryker_m1132_m2_np_wd", "rhsusf_stryker_m1127_m2_wd"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["UK3CB_B_AAV_US_WDL", "RHS_M2A3_BUSKIII_wd", "UK3CB_ARD_B_BMP2K", "UK3CB_ARD_B_BRM1K"]] call _fnc_saveToTemplate;

["vehiclesLightTanks",  ["UK3CB_ARD_B_T72BM", "UK3CB_ARD_B_T72B", "a3u_winter_m60a1", "a3u_winter_m60a3"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["a3u_winter_fv4201_chieftain", "UK3CB_ARD_B_T72B", "UK3CB_KDF_B_T72BE", "UK3CB_KDF_B_T72BC"]] call _fnc_saveToTemplate;
["vehiclesAA", ["UK3CB_ARD_B_2S6M_Tunguska", "UK3CB_ARD_B_ZsuTank"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["UK3CB_MDF_B_RHIB"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["UK3CB_MDF_B_RHIB_Gunboat"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["UK3CB_ION_B_Woodland_T28Trojan_CAS", "UK3CB_ION_B_Woodland_T28Trojan_AT", "UK3CB_ION_B_Woodland_T28Trojan"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["UK3CB_ARD_B_MIG29S"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["RHS_C130J"]] call _fnc_saveToTemplate;

["vehiclesHelisTransport", ["UK3CB_ION_B_Woodland_Merlin", "UK3CB_ION_B_Woodland_Orca"]] call _fnc_saveToTemplate;
["vehiclesHelisLight", ["UK3CB_ION_B_Woodland_Bell412_FLIR", "UK3CB_ION_B_Woodland_Bell412_Armed", "UK3CB_ION_B_Woodland_UH1H_M240", "UK3CB_ION_B_Woodland_MELB_MH6M"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["UK3CB_ION_B_Woodland_MELB_AH6M_L", "UK3CB_ION_B_Woodland_Bell412_Armed_AT"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["UK3CB_ION_B_Woodland_Orca_Armed_CAS", "UK3CB_ION_B_Woodland_UH1H_GUNSHIP", "UK3CB_ION_B_Woodland_Bell412_Armed"]] call _fnc_saveToTemplate;

private _vehiclesArtillery = ["a3u_winter_mlrs"];

["vehiclesArtillery", _vehiclesArtillery] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
    ["a3u_winter_mlrs", ["UK3CB_M31_MLRS_X12"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["B_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate;

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["UK3CB_ION_B_Winter_LR_M2", "UK3CB_ION_B_Winter_MB4WD_LMG"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["UK3CB_ION_B_Winter_Transit_Transport"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["UK3CB_ION_B_Winter_LR_Open", "UK3CB_ION_B_Winter_MB4WD_Unarmed"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["UK3CB_ION_B_Winter_M113_M240", "UK3CB_ION_B_Winter_MaxxPro_M2"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["UK3CB_ION_B_Winter_LSV_01_Light", "UK3CB_ION_B_Winter_Landcruiser", "UK3CB_ION_B_Winter_LR_Closed"]] call _fnc_saveToTemplate;
// _CAMO_ marker

["staticMGs", ["UK3CB_ION_B_Winter_M240_High"]] call _fnc_saveToTemplate;
["staticAT", ["RHS_TOW_TriPod_D"]] call _fnc_saveToTemplate;
["staticAA", ["RHS_Stinger_AA_pod_D"]] call _fnc_saveToTemplate;
["staticMortars", ["RHS_M252_D"]] call _fnc_saveToTemplate;
["staticHowitzers", []] call _fnc_saveToTemplate;

["vehicleRadar", ""] call _fnc_saveToTemplate;
["vehicleSam", ""] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

["mortarMagazineHE", "rhs_12Rnd_m821_HE"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["rhsusf_mine_M19"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["rhsusf_mine_m14"]] call _fnc_saveToTemplate;

#include "3CBF_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["AfricanHead_01", "AfricanHead_02", "AfricanHead_03", "Barklem", "GreekHead_A3_02", "GreekHead_A3_03", "GreekHead_A3_05",
"GreekHead_A3_06", "GreekHead_A3_07", "GreekHead_A3_08", "GreekHead_A3_09", "Ioannou", "Mavros", "Sturrock", "WhiteHead_01", "WhiteHead_02",
"WhiteHead_03", "WhiteHead_04", "WhiteHead_05", "WhiteHead_07", "WhiteHead_08", "WhiteHead_09", "WhiteHead_10", "WhiteHead_11", "WhiteHead_13",
"WhiteHead_14", "WhiteHead_15", "WhiteHead_16", "WhiteHead_17", "WhiteHead_18", "WhiteHead_19", "WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["Male01ENG", "Male02ENG", "Male03ENG", "Male04ENG", "Male05ENG", "Male06ENG", "Male07ENG", "Male08ENG", "Male09ENG", "Male10ENG", "Male11ENG", "Male12ENG", "Male01GRE", "Male02GRE", "Male03GRE", "Male04GRE", "Male05GRE", "Male06GRE", "Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB", "Male05ENGB", "Male01ENGFRE", "Male02ENGFRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["lightHELaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["AALaunchers", ["rhs_weap_igla"]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["rhs_mine_M19_mag"]];
_loadoutData set ["APMines", ["rhsusf_mine_m14_mag"]];
_loadoutData set ["lightExplosives", ["rhsusf_m112_mag"]];
_loadoutData set ["heavyExplosives", ["rhsusf_m112x4_mag"]];

_loadoutData set ["antiInfantryGrenades", ["rhs_mag_m67"]];
_loadoutData set ["smokeGrenades", ["rhs_mag_an_m8hc"]];
_loadoutData set ["signalsmokeGrenades", ["rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["rhsusf_ANPVS_14"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["rhsusf_bino_lerca_1200_black"]];

_loadoutData set ["traitorUniforms", ["UK3CB_ION_B_U_Uniform_01_URB"]];
_loadoutData set ["traitorVests", ["UK3CB_V_Carrier_Rig_CREW_BLK", "UK3CB_V_Carrier_Rig_TACTICAL_BLK"]];
_loadoutData set ["traitorHats", ["UK3CB_H_MilCap_ION_BLK", "UK3CB_H_Cap_Back_Earpiece_ION_BLK"]];

// _CAMO_ marker
_loadoutData set ["officerUniforms", ["UK3CB_ION_B_Uniform_Jumper_U_01_WIN", "UK3CB_ION_B_Uniform_Jumper_U_03_WIN"]];
_loadoutData set ["officerVests", ["UK3CB_ION_B_V_LegStrapBag_win"]];
_loadoutData set ["officerHats", ["H_Beret_blk", "rhssaf_beret_black"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["ATvests", []];
_loadoutData set ["MGvests", []];
_loadoutData set ["MEDvests", []];
_loadoutData set ["SLvests", []];
_loadoutData set ["SNIvests", []];
_loadoutData set ["GLvests", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", ["UK3CB_ION_B_B_RIF_WIN_02", "UK3CB_ION_B_B_ASS_WIN_02"]]; // _CAMO_ marker
_loadoutData set ["atBackpacks", ["UK3CB_ION_B_B_ENG_WIN"]];
_loadoutData set ["slBackpacks", ["UK3CB_ION_I_B_RadioBag_WIN"]];
_loadoutData set ["slHat", ["H_Beret_blk"]];
_loadoutData set ["sniHats", ["UK3CB_LSM_B_H_BoonieHat_OLI"]];
_loadoutData set ["glasses", ["rhs_googles_black", "rhs_googles_clear", "rhs_googles_orange", "rhs_googles_yellow", "rhsusf_oakley_goggles_clr", "rhsusf_oakley_goggles_ylw", "rhsusf_oakley_goggles_blk"]];
_loadoutData set ["facewear", ["rhsusf_shemagh_od", "rhsusf_shemagh_gogg_od"]];
_loadoutData set ["aaBackpacks", ["rhs_rpg_2"]];
_loadoutData set ["longRangeRadios", ["UK3CB_ION_I_B_RadioBag_WIN"]];
_loadoutData set ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", [
    "UK3CB_G_Ballistic_Shemagh_White_Tactical_Gloves_Black",
    "UK3CB_G_Ballistic_Black_Tactical_Gloves_Black",
    "UK3CB_G_Ballistic_Black_Tactical_Gloves_Green_Headset",
    "UK3CB_G_Gloves_Green",
    "UK3CB_G_Gloves_Black"
]]; // _CAMO_ marker
_loadoutData set ["goggles", ["rhs_ess_black"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["UK3CB_ION_B_U_SF_Uniform_Short_Shirt_01_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_02_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_03_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_04_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_05_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_06_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_07_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_08_WDL"]];
_sfLoadoutData set ["vests", ["UK3CB_V_MBAV_RIFLEMAN_OLI"]];
_sfLoadoutData set ["mgVests", ["UK3CB_ION_B_V_MBAV_MG_OLI_02"]];
_sfLoadoutData set ["medVests", ["UK3CB_ION_B_V_MBAV_MEDIC_OLI_02"]];
_sfLoadoutData set ["glVests", ["UK3CB_V_MBAV_GRENADIER_OLI"]];
_sfLoadoutData set ["helmets", ["UK3CB_H_Radio_Cap_ION_OLI_ALT", "UK3CB_H_Cap_Headset_ION_OLI", "UK3CB_H_Radio_Cap_ION_OLI", "UK3CB_H_Cap_Back_ION_OLI","UK3CB_H_Radio_Cap_Back_ION_OLI", "UK3CB_H_Radio_Cap_Back_ION_OLI_ALT", "rhsusf_opscore_fg", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_fg", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw"]];
_sfLoadoutData set ["NVGs", ["rhsusf_ANPVS_15"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator"]];
_sfLoadoutData set ["glasses", ["rhs_googles_black", "UK3CB_G_Tactical_Black_Shemagh_Tan", "G_Aviator", "rhsusf_oakley_goggles_blk"]];
_sfLoadoutData set ["facewear", ["rhsusf_shemagh2_gogg_od", "rhsusf_shemagh2_od", "UK3CB_G_Balaclava_Neck_Shemag", "UK3CB_G_Balaclava2_BLK"]];

_sfLoadoutData set ["slRifles", [
    ["rhs_weap_vhsd2", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsgref_30rnd_556x45_vhs2", "rhsgref_30rnd_556x45_vhs2_t"], [], "rhsusf_acc_kac_grip"],
    ["UK3CB_G36V", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230", ["rhssaf_30rnd_556x45_SOST_G36"], [], ""],
    ["UK3CB_G36V", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230_mrds", ["rhssaf_30rnd_556x45_EPR_G36"], [], ""],
    ["rhs_weap_SCARH_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk"], [], "rhsusf_acc_kac_grip"],
    ["rhs_weap_SCARH_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230a_mrds", ["rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk"], [], "rhsusf_acc_kac_grip"],
    ["UK3CB_FAMAS_F1", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15A", "rhsusf_acc_su230_mrds", ["UK3CB_FAMAS_25rnd_556x45"], [], ""],
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];

_sfLoadoutData set ["rifles", [
    ["rhs_weap_vhsd2", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_552", ["rhsgref_30rnd_556x45_vhs2", "rhsgref_30rnd_556x45_vhs2_t"], [], "rhsusf_acc_kac_grip"],
    ["rhs_weap_vhsd2", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsgref_30rnd_556x45_vhs2", "rhsgref_30rnd_556x45_vhs2_t"], [], "rhsusf_acc_kac_grip"],
    ["UK3CB_G36V", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230", ["rhssaf_30rnd_556x45_SOST_G36"], [], ""],
    ["UK3CB_G36V", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230_mrds", ["rhssaf_30rnd_556x45_EPR_G36"], [], ""],
    ["rhs_weap_hk416d145", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_xps3", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
    ["rhs_weap_hk416d145", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_g33_T1", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], [], ""],
    ["rhs_weap_SCARH_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_xps3", ["rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk"], [], "rhsusf_acc_kac_grip"],
    ["rhs_weap_SCARH_STD", "rhsusf_acc_aac_762sdn6_silencer", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_g33_T1", ["rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk"], [], "rhsusf_acc_kac_grip"],
    ["UK3CB_FAMAS_F1", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15A", "rhsusf_acc_compm4", ["UK3CB_FAMAS_25rnd_556x45"], [], ""],
    ["UK3CB_FAMAS_F1", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15A", "rhsusf_acc_g33_xps3", ["UK3CB_FAMAS_25rnd_556x45"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["UK3CB_G36A1_KSK_K", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhssaf_30rnd_556x45_SOST_G36", "rhssaf_30rnd_556x45_EPR_G36"], [], ""],
    ["UK3CB_G36A1_KSK_K", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_xps3", ["rhssaf_30rnd_556x45_EPR_G36"], [], ""],
    ["UK3CB_G36A1_KSK_K", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_compm4", ["rhssaf_30rnd_556x45_SOST_G36"], [], ""],
    ["rhs_weap_vhsk2", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_552", ["rhsgref_30rnd_556x45_vhs2", "rhsgref_30rnd_556x45_vhs2_t"], [], "rhsusf_acc_kac_grip"],
    ["rhs_weap_vhsk2", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_xps3", ["rhsgref_30rnd_556x45_vhs2", "rhsgref_30rnd_556x45_vhs2_t"], [], "rhsusf_acc_kac_grip"],
    ["rhs_weap_vhsk2", "rhsusf_acc_rotex5_grey", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_xps3", ["rhsgref_30rnd_556x45_vhs2", "rhsgref_30rnd_556x45_vhs2_t"], [], "rhsusf_acc_kac_grip"]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230_mrds", ["rhs_mag_30Rnd_556x45_Mk318_PMAG"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_AG36_KSK", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_552", ["rhssaf_30rnd_556x45_SOST_G36"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_AG36_KSK", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_RMR", ["rhssaf_30rnd_556x45_SOST_G36"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_AG36_KSK", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230", ["rhssaf_30rnd_556x45_EPR_G36"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_AG36_KSK", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_su230_mrds", ["rhssaf_30rnd_556x45_EPR_G36"], ["rhs_mag_M441_HE", "rhs_mag_M397_HET", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
    ["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_mrds", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
    ["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_T1_high", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
    ["rhsusf_weap_MP7A2", "rhsusf_acc_rotex_mp7", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_xps3", ["rhsusf_mag_40Rnd_46x30_AP"], [], "rhs_acc_grip_ffg2"],
    ["UK3CB_P90C_TR_black", "muzzle_snds_570", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_compm4", [], [], "rhs_acc_grip_ffg2"],
    ["UK3CB_P90C_TR_black", "muzzle_snds_570", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_mrds", [], [], "rhs_acc_grip_ffg2"],
    ["UK3CB_P90C_TR_black", "muzzle_snds_570", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_T1_high", [], [], "rhs_acc_grip_ffg2"],
    ["UK3CB_P90C_TR_black", "muzzle_snds_570", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_eotech_xps3", [], [], "rhs_acc_grip_ffg2"]
]];
_sfLoadoutData set ["machineGuns", [
    ["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_552", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230_mrds", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_eotech_552", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230_mrds", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_light_L", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    //Makeshift MG36
    ["UK3CB_G36V", "rhsusf_acc_nt4_black", "", "rhsusf_acc_eotech_552", ["rhssaf_100rnd_556x45_EPR_G36"], [], ""],
    ["UK3CB_G36V", "rhsusf_acc_nt4_black", "", "rhsusf_acc_su230_mrds", ["rhssaf_100rnd_556x45_EPR_G36"], [], ""],
    ["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ELCAN", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
    ["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_MDO", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
    ["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230a", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
    ["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_su230a_mrds", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
    ["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_g33_xps3", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
    ["rhs_weap_m240B", "rhsusf_acc_ARDEC_M240", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_ACOG_RMR", ["rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["UK3CB_PSG1A1_RIS", "uk3cb_muzzle_snds_g3", "", "rhsusf_acc_LEUPOLDMK4", ["UK3CB_G3_20rnd_762x51"], [], "rhsusf_acc_harris_bipod"],
    ["UK3CB_PSG1A1_RIS", "uk3cb_muzzle_snds_g3", "", "rhsusf_acc_M8541", ["UK3CB_G3_20rnd_762x51"], [], "rhsusf_acc_harris_bipod"],
    ["UK3CB_PSG1A1_RIS", "uk3cb_muzzle_snds_g3", "", "rhsusf_acc_LEUPOLDMK4_2", ["UK3CB_G3_20rnd_762x51"], [], "rhsusf_acc_harris_bipod"],
    ["rhs_weap_m14_socom_rail", "rhsusf_acc_aac_762sdn6_silencer", "", "rhsusf_acc_M8541", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_m14_bipod"],
    ["rhs_weap_m14_socom_rail", "rhsusf_acc_aac_762sdn6_silencer", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_m14_bipod"],
    ["rhs_weap_m14_socom_rail", "rhsusf_acc_aac_762sdn6_silencer", "", "rhsusf_acc_premier_mrds", ["rhsusf_20Rnd_762x51_m993_Mag"], [], "rhsusf_acc_m14_bipod"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["rhs_weap_XM2010_d", "rhsusf_acc_M2010S_d", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541_d", [], [], "rhsusf_acc_harris_bipod"],
    ["rhs_weap_XM2010_d", "rhsusf_acc_M2010S_d", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4_2_d", [], [], "rhsusf_acc_harris_bipod"],
    ["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_M8541", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
    ["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_premier", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
    ["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
    ["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_M8541", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
    ["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_premier", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
    ["rhs_weap_m40a5", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
    ["rhs_weap_M107", "", "", "rhsusf_acc_M8541", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
    ["rhs_weap_M107", "", "", "rhsusf_acc_premier", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
    ["rhs_weap_M107", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""],
    ["rhs_weap_M107", "", "", "rhsusf_acc_M8541", ["rhsusf_mag_10Rnd_STD_50BMG_mk211"], [], ""]
]];
_sfLoadoutData set ["lightATLaunchers", [
    "rhs_weap_M136",
    "rhs_weap_M136_hedp",
    "rhs_weap_M136_hp"
]];
_sfLoadoutData set ["ATLaunchers", [
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP"], [], ""],
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE"], [], ""],
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["rhsusf_weap_glock17g4", "rhsusf_acc_omega9k", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_FMJ"], [], ""],
    ["UK3CB_CZ75", "rhsusf_acc_omega9k", "", "", ["UK3CB_CZ75_9_20Rnd"], [], ""]
]];
_sfLoadoutData set ["glSidearms", [
    ["rhs_weap_M320", "", "", "", ["rhs_mag_M397_HET", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP"], [], ""],
    ["rhs_weap_M320", "", "", "", ["rhs_mag_m4009", "rhs_mag_m714_White", "rhs_mag_m716_yellow"], [], ""] //Stun
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
// _CAMO_ marker
_eliteLoadoutData set ["uniforms", ["UK3CB_ION_B_U_CombatSmock_01_WIN", "UK3CB_ION_B_U_CombatSmock_04_WIN", "UK3CB_ION_B_U_CombatSmock_06_WIN"]];
_eliteLoadoutData set ["vests", ["UK3CB_ION_B_V_PlateCarrier1_win_01", "UK3CB_ION_B_V_PlateCarrier1_win_02"]];
_eliteLoadoutData set ["ATvests", ["UK3CB_ION_B_V_RIF_ALT_WIN_01", "UK3CB_ION_B_V_SL_WIN_01"]];
_eliteLoadoutData set ["GLvests", ["UK3CB_V_Carrier_Rig_TACTICAL_WHI", "UK3CB_V_Carrier_Rig_CQB_WHI"]];
_eliteLoadoutData set ["SLvests", ["UK3CB_ION_B_V_RIF_WIN_01", "UK3CB_ION_B_V_RIF_ALT_WIN_02"]];
_eliteLoadoutData set ["MGvests", ["UK3CB_ION_B_V_LMG_WIN_01", "UK3CB_ION_B_V_MG_WIN_01"]];
_eliteLoadoutData set ["backpacks", ["UK3CB_ION_B_B_RIF_BLK_02", "UK3CB_ION_B_B_RIF_BLK_03"]];
_eliteLoadoutData set ["medBackpacks", ["UK3CB_ION_B_B_RIF_MED_OLI"]];
_eliteLoadoutData set ["helmets", ["UK3CB_CSAT_U_O_H_6b47_bala_URB", "UK3CB_CSAT_U_O_H_6b47_ess_bala_URB"]];
_eliteLoadoutData set ["slHat", ["UK3CB_CSAT_U_O_H_6b47_bala_URB"]];
_eliteLoadoutData set ["sniHats", ["UK3CB_CSAT_U_O_H_6b47_ess_URB"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator"]];

_eliteLoadoutData set ["slRifles", [
    ["UK3CB_G36V", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_mrds", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G3A3V_RIS", "", "", "rhsusf_acc_su230a_mrds", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""],
    ["rhs_weap_hk416d145", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_mrds", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], [], ""],
    ["UK3CB_AG36V", "", "", "rhsusf_acc_su230_mrds", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "", "", "rhsusf_acc_su230_mrds", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_eliteLoadoutData set ["rifles", [
    ["UK3CB_G36V", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G36V", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G3A3V_RIS", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["UK3CB_G36V_K", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G36V_C", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["rhs_weap_hk416d10", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], [], ""]
]];
_eliteLoadoutData set ["SMGs", [
    ["UK3CB_G36V_C", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["UK3CB_AG36V", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_AG36V", "", "", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "", "", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["UK3CB_MG3_Railed", "", "", "rhsusf_acc_eotech_552", ["UK3CB_MG3_100rnd_762x51_GT"], [], ""],
    ["UK3CB_MG3_Railed", "", "", "rhsusf_acc_su230a_mrds", ["UK3CB_MG3_100rnd_762x51_GT"], [], ""],
    ["rhs_weap_m249_pip_ris", "", "", "rhsusf_acc_eotech_552", ["rhsusf_200rnd_556x45_M855_mixed_box"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_pip_ris", "", "", "rhsusf_acc_su230_mrds", ["rhsusf_200rnd_556x45_M855_mixed_box"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_pip_ris", "", "", "rhsusf_acc_ACOG_MDO", ["rhsusf_200rnd_556x45_M855_mixed_box"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    //Makeshift MG36
    ["UK3CB_G36V", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G36_100rnd_556x45_R", "UK3CB_G36_100rnd_556x45_RT"], [], ""],
    ["UK3CB_G36V", "", "", "rhsusf_acc_su230_mrds", ["UK3CB_G36_100rnd_556x45_R", "UK3CB_G36_100rnd_556x45_RT"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["UK3CB_G3SG1_RIS", "", "", "rhsusf_acc_nxs_3515x50f1_h58", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""],
    ["UK3CB_G3SG1_RIS", "", "", "rhsusf_acc_LEUPOLDMK4_2_mrds", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["UK3CB_PSG1A1_RIS", "", "", "rhsusf_acc_nxs_3515x50f1_h58", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], "rhsusf_acc_harris_bipod"],
    ["UK3CB_PSG1A1_RIS", "", "", "rhsusf_acc_LEUPOLDMK4_2_mrds", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], "rhsusf_acc_harris_bipod"]
]];
_eliteLoadoutData set ["lightATLaunchers", [
    "rhs_weap_m72a7"
]];
_eliteLoadoutData set ["ATLaunchers", [
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP"], [], ""],
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE"], [], ""],
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
    ["rhsusf_weap_glock17g4", "", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
// _CAMO_ marker
_militaryLoadoutData set ["uniforms", ["UK3CB_ION_B_U_Uniform_07_WDL", "UK3CB_ION_B_U_Uniform_05_WDL", "UK3CB_ION_B_U_Uniform_03_WDL", "UK3CB_ION_B_U_Uniform_01_WDL"]];
_militaryLoadoutData set ["vests", ["UK3CB_ION_B_V_PlateCarrier1_win_01", "UK3CB_ION_B_V_PlateCarrier1_win_02"]];
_militaryLoadoutData set ["ATvests", ["UK3CB_ION_B_V_RIF_ALT_WIN_01", "UK3CB_ION_B_V_SL_WIN_01"]];
_militaryLoadoutData set ["GLvests", ["UK3CB_V_Carrier_Rig_TACTICAL_WHI", "UK3CB_V_Carrier_Rig_CQB_WHI"]];
_militaryLoadoutData set ["SLvests", ["UK3CB_ION_B_V_RIF_WIN_01", "UK3CB_ION_B_V_RIF_ALT_WIN_02"]];
_militaryLoadoutData set ["MGvests", ["UK3CB_ION_B_V_LMG_WIN_01", "UK3CB_ION_B_V_MG_WIN_01"]];
_militaryLoadoutData set ["backpacks", ["UK3CB_ION_B_B_RIF_OLI_01", "UK3CB_ION_B_B_RIF_OLI_02"]];
_militaryLoadoutData set ["medBackpacks", ["UK3CB_ION_B_B_RIF_MED_OLI"]];
_militaryLoadoutData set ["helmets", ["UK3CB_CSAT_U_O_H_6b47_6m2_1_URB", "UK3CB_CSAT_U_O_H_6b47_URB", "UK3CB_CSAT_U_O_H_6b47_Bare_BLK"]];
_militaryLoadoutData set ["slHat", ["UK3CB_CSAT_U_O_H_6b47_bala_URB"]];
_militaryLoadoutData set ["sniHats", ["UK3CB_CSAT_U_O_H_6b47_ess_URB"]];
_militaryLoadoutData set ["binoculars", ["Laserdesignator"]];

_militaryLoadoutData set ["slRifles", [
    ["UK3CB_G36V", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_mrds", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G3A3V_RIS", "", "", "rhsusf_acc_su230a_mrds", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""],
    ["rhs_weap_hk416d145", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_su230_mrds", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], [], ""],
    ["UK3CB_AG36V", "", "", "rhsusf_acc_su230_mrds", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "", "", "rhsusf_acc_su230_mrds", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_militaryLoadoutData set ["rifles", [
    ["UK3CB_G36V", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G36V", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G3A3V_RIS", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["UK3CB_G36V_K", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["UK3CB_G36V_C", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""],
    ["rhs_weap_hk416d10", "", "rhsusf_acc_anpeq16a", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], [], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["UK3CB_G36V_C", "", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["UK3CB_AG36V", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_AG36V", "", "", "rhsusf_acc_compm4", ["UK3CB_G36_30rnd_556x45", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["rhs_weap_hk416d145_m320", "", "", "rhsusf_acc_eotech_552", ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["UK3CB_MG3_Railed", "", "", "rhsusf_acc_eotech_552", ["UK3CB_MG3_100rnd_762x51_GT"], [], ""],
    ["UK3CB_MG3_Railed", "", "", "rhsusf_acc_su230a_mrds", ["UK3CB_MG3_100rnd_762x51_GT"], [], ""],
    ["rhs_weap_m249_pip_ris", "", "", "rhsusf_acc_eotech_552", ["rhsusf_200rnd_556x45_M855_mixed_box"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_pip_ris", "", "", "rhsusf_acc_su230_mrds", ["rhsusf_200rnd_556x45_M855_mixed_box"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    ["rhs_weap_m249_pip_ris", "", "", "rhsusf_acc_ACOG_MDO", ["rhsusf_200rnd_556x45_M855_mixed_box"], [], "rhsusf_acc_kac_grip_saw_bipod"],
    //Makeshift MG36
    ["UK3CB_G36V", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G36_100rnd_556x45_R", "UK3CB_G36_100rnd_556x45_RT"], [], ""],
    ["UK3CB_G36V", "", "", "rhsusf_acc_su230_mrds", ["UK3CB_G36_100rnd_556x45_R", "UK3CB_G36_100rnd_556x45_RT"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["UK3CB_G3SG1_RIS", "", "", "rhsusf_acc_nxs_3515x50f1_h58", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""],
    ["UK3CB_G3SG1_RIS", "", "", "rhsusf_acc_LEUPOLDMK4_2_mrds", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["UK3CB_PSG1A1_RIS", "", "", "rhsusf_acc_nxs_3515x50f1_h58", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], "rhsusf_acc_harris_bipod"],
    ["UK3CB_PSG1A1_RIS", "", "", "rhsusf_acc_LEUPOLDMK4_2_mrds", ["UK3CB_G3_20rnd_762x51_GT", "UK3CB_G3_20rnd_762x51_G", "UK3CB_G3_20rnd_762x51_G"], [], "rhsusf_acc_harris_bipod"]
]];
_militaryLoadoutData set ["lightATLaunchers", [
    "rhs_weap_m72a7"
]];
_militaryLoadoutData set ["ATLaunchers", [
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP"], [], ""],
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE"], [], ""],
    ["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["rhsusf_weap_glock17g4", "", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_FMJ", "rhsusf_mag_17Rnd_9x19_JHP"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData set ["uniforms", ["UK3CB_ION_B_U_CombatSmock_03_URB", "UK3CB_ION_B_U_CombatSmock_02_URB"]];
_policeLoadoutData set ["vests", ["UK3CB_V_Carrier_Rig_CREW_BLK", "UK3CB_ION_B_V_PlateCarrier1_blk_01"]];
_policeLoadoutData set ["helmets", ["UK3CB_H_Cap_Back_Earpiece_ION_BLK", "UK3CB_H_Cap_Earpiece_ION_BLK"]];
_policeLoadoutData set ["SMGs", ["UK3CB_P90_black", "UK3CB_P90C_black", "UK3CB_MP5A4"]];
_policeLoadoutData set ["sidearms", [
    ["rhsusf_weap_glock17g4", "", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_JHP"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
// _CAMO_ marker
_militiaLoadoutData set ["uniforms", ["UK3CB_ION_B_U_SF_Uniform_Short_Shirt_02_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_04_WDL", "UK3CB_ION_B_U_SF_Uniform_Short_Shirt_06_WDL"]];
_militiaLoadoutData set ["vests", ["UK3CB_ION_B_V_PlateCarrier1_win_01", "UK3CB_ION_B_V_PlateCarrier1_win_02"]];
_militiaLoadoutData set ["ATvests", ["UK3CB_ION_B_V_RIF_ALT_WIN_01", "UK3CB_ION_B_V_SL_WIN_01"]];
_militiaLoadoutData set ["GLvests", ["UK3CB_V_Carrier_Rig_TACTICAL_WHI", "UK3CB_V_Carrier_Rig_CQB_WHI"]];
_militiaLoadoutData set ["SLvests", ["UK3CB_ION_B_V_RIF_WIN_01", "UK3CB_ION_B_V_RIF_ALT_WIN_02"]];
_militiaLoadoutData set ["MGvests", ["UK3CB_ION_B_V_LMG_WIN_01", "UK3CB_ION_B_V_MG_WIN_01"]];
_militiaLoadoutData set ["backpacks", ["UK3CB_ION_B_B_RIF_OLI_01", "UK3CB_ION_B_B_RIF_OLI_02"]];
_militiaLoadoutData set ["medBackpacks", ["UK3CB_ION_B_B_RIF_MED_OLI"]];
_militiaLoadoutData set ["helmets", ["UK3CB_H_Cap_Headset_ION_OLI", "UK3CB_H_Cap_Back_ION_OLI", "UK3CB_H_Cap_Back_Earpiece_ION_OLI"]];
_militiaLoadoutData set ["slHat", ["UK3CB_H_Radio_Cap_ION_OLI_ALT", "UK3CB_H_Cap_Earpiece_ION_OLI"]];
_militiaLoadoutData set ["sniHats", ["UK3CB_H_MilCap_ION_OLI"]];

_militiaLoadoutData set ["lightATLaunchers", ["rhs_weap_m72a7"]];
_militiaLoadoutData set ["ATLaunchers", [
    ["rhs_weap_maaws", "", "", "", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEDP"], [], ""],
    ["rhs_weap_maaws", "", "", "", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE"], [], ""],
    ["rhs_weap_maaws", "", "", "", ["rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];

_militiaLoadoutData set ["rifles", [
    ["UK3CB_M16A3", "", "", "", ["UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45_RT"], [], ""],
    ["UK3CB_HK33KA2_RIS", "", "", "", ["UK3CB_HK33_30rnd_556x45", "UK3CB_HK33_30rnd_556x45", "UK3CB_HK33_30rnd_556x45_RT"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["UK3CB_M16_Carbine", "", "", "", ["UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45_RT"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["UK3CB_M16A2_UGL", "", "", "", ["UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45", "UK3CB_M16_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""],
    ["UK3CB_HK33KA2_RIS_GL", "", "", "", ["UK3CB_HK33_30rnd_556x45", "UK3CB_HK33_30rnd_556x45", "UK3CB_HK33_30rnd_556x45_RT"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_militiaLoadoutData set ["SMGs", ["UK3CB_MP5A4"]];
_militiaLoadoutData set ["machineGuns", [
    ["UK3CB_MG3", "", "", "", ["UK3CB_MG3_100rnd_762x51_GT"], [], ""],
    ["rhs_weap_fnmag", "", "", "", ["rhsusf_100Rnd_762x51_m62_tracer"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["UK3CB_G3SG1_RIS", "", "", "uk3cb_optic_accupoint_g3", [], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["rhs_weap_m24sws", "", "", "rhsusf_acc_LEUPOLDMK4", [], [], ""]
]];

_militiaLoadoutData set ["sidearms", ["UK3CB_P320_BLK", "UK3CB_P320_KHK"]]; // _CAMO_ marker
_militiaLoadoutData set ["antiInfantryGrenades", ["rhs_mag_rgd5", "rhs_mag_f1"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////
private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["UK3CB_ION_B_U_Uniform_03_URB"]];
_crewLoadoutData set ["vests", ["UK3CB_V_MBAV_RIFLEMAN_BLK", "UK3CB_V_MBAV_BLK"]];
_crewLoadoutData set ["helmets", ["rhssaf_helmet_m97_black_nocamo_black_ess", "UK3CB_CSAT_U_O_H_6b47_Bare_BLK"]];
_crewLoadoutData set ["carbines", [
    ["UK3CB_G36V_C", "", "", "rhsusf_acc_eotech_552", ["UK3CB_G36_30rnd_556x45_R", "UK3CB_G36_30rnd_556x45_W", "UK3CB_G36_30rnd_556x45_G"], [], ""],
    ["UK3CB_MP5A3", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine"], [], ""]
]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["UK3CB_ION_B_U_H_Pilot_Uniform_01_URB", "UK3CB_ION_B_U_H_Pilot_Uniform_02_URB"]];			
_pilotLoadoutData set ["vests", ["UK3CB_V_Pilot_Vest_Black", "UK3CB_V_Carrier_Rig_CREW_BLK"]];			
_pilotLoadoutData set ["helmets", ["rhsusf_hgu56p_visor_black"]];
_pilotLoadoutData set ["carbines", [
    ["UK3CB_MP5A3", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine"], [], ""]
]];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["SLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    if (random 1 < 0.15) then {
		[["lightHELaunchers", "lightATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
		["launcher", 1] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["MEDvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["medBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["grenadeLaunchers"] call _fnc_setPrimary;

    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["GLVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["expBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["ATvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["ATvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["ATLaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["MGvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["SNIvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    ["cloakRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    ["cloakCarbines"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
