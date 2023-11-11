//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\..\..\script_component.hpp"

["name", "Universal Union"] call _fnc_saveToTemplate;
["spawnMarkerName", "Union Support Portal"] call _fnc_saveToTemplate;

["flag", "Flag_US_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Pictures\Markers\marker_combine_ca.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3u_flag_uu"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["SC_Gator_TC_AR", "SC_Gator_TO_AR"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["SC_AR_Mrap"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["SC_Gator_TC_AR"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["SC_Gator_FB_AR"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["CUP_B_nM1038_Ammo_USMC_DES", "CUP_B_nM1038_Ammo_DF_USMC_DES", "CUP_B_MTVR_Ammo_USMC"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["CUP_B_MTVR_Repair_USMC", "CUP_B_nM1038_Repair_USMC_DES", "CUP_B_nM1038_Repair_DF_USMC_DES"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["CUP_B_MTVR_Refuel_USMC"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["CUP_B_nM997_DF_USMC_DES", "CUP_B_nM997_USMC_DES"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["HL_CMB_CP_APC", "HL_CMB_CP_APC_Razor"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["SC_SaurusAPC_SE", "SC_SaurusAPC_AA_SE", "SC_Ferret_AA_AR", "SC_Ferret_AR", "SC_Ferret_Autocannon_AR"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["HL_CMB_CP_APC","HL_CMB_CP_APC_Razor"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["SC_Mantis"]] call _fnc_saveToTemplate;
["vehiclesAA", ["SC_SaurusAPC_AA_SE"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["HL_CMB_OW_APC", "HL_CMB_OW_APC_Razor"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["CUP_B_LAV25_desert_USMC", "CUP_B_LAV25M240_desert_USMC"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["CUP_B_RHIB2Turret_USMC"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["CUP_B_AAV_USMC", "CUP_B_AAV_USMC_TTS", "CUP_B_LAV25_desert_USMC", "CUP_B_LAV25M240_desert_USMC"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["CUP_B_A10_DYN_USA", "CUP_B_GR9_DYN_GB", "CUP_B_Su25_Dyn_CDF"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["CUP_B_AV8B_DYN_USMC", "CUP_B_GR9_DYN_GB", "CUP_B_GR9_DYN_GB", "CUP_B_SU34_CDF"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["CUP_B_C130J_USMC", "CUP_B_MV22_USMC_RAMPGUN", "CUP_B_C130J_GB"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["HL_CMB_Hunter"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["SC_VTOL_X42S_AR"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["HL_CMB_Hunter"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["HL_CMB_Gunship"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["CUP_B_M270_DPICM_USA","CUP_B_M270_HE_USA"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["CUP_B_M270_HE_USA", ["CUP_12Rnd_MLRS_HE"]],
["CUP_B_M270_DPICM_USA", ["CUP_12Rnd_MLRS_DPICM"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["CUP_B_USMC_DYN_MQ9"]] call _fnc_saveToTemplate;
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["CUP_B_nM1025_M2_USA_DES"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["CUP_B_MTVR_USA"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CUP_B_nM1025_Unarmed_USA_DES"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["CUP_B_M113A3_desert_USA"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_USMC"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_TOW2_TriPod_USMC"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_B_Stinger_AA_pod_Base_USMC"]] call _fnc_saveToTemplate;
["staticMortars", ["CUP_B_M252_USMC"]] call _fnc_saveToTemplate;
["staticHowitzers", [""]] call _fnc_saveToTemplate;

["vehicleRadar", "B_Radar_System_01_F"] call _fnc_saveToTemplate;
["vehicleSam", "B_SAM_System_03_F"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["CUP_Mine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

#include "HL_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["Barklem","GreekHead_A3_05","GreekHead_A3_06",
"GreekHead_A3_09","Sturrock","WhiteHead_02","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_09","WhiteHead_10",
"WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14",
"WhiteHead_15","WhiteHead_17","WhiteHead_18","WhiteHead_19",
"WhiteHead_20","WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG"]] call _fnc_saveToTemplate;
["militaryVoices", ["cp_"]] call _fnc_saveToTemplate;

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

_loadoutData set ["missileATLaunchers", [
    ["CUP_launch_Javelin", "", "", "", ["CUP_Javelin_M"], [], ""],
    ["CUP_launch_M47", "", "", "", ["CUP_Dragon_EP1_M"], [], ""]
]];
_loadoutData set ["AALaunchers", [
    ["CUP_launch_FIM92Stinger", "", "", "", [""], [], ""]
]];
_loadoutData set ["ATLaunchers", [
    ["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["CUP_MAAWS_HEDP_M", "CUP_MAAWS_HEAT_M"], [], ""],
    ["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["CUP_MAAWS_HEAT_M", "CUP_MAAWS_HEDP_M"], [], ""],
    ["CUP_launch_Mk153Mod0", "", "", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M"], ["CUP_SMAW_Spotting"], ""],
    ["CUP_launch_Mk153Mod0", "", "", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEDP_M", "CUP_SMAW_NE_M"], ["CUP_SMAW_Spotting"], ""],
    ["CUP_launch_Mk153Mod0", "", "", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEAA_M", "CUP_SMAW_NE_M"], ["CUP_SMAW_Spotting"], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_M67"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];



//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_PVS15_black"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["CUP_U_B_USMC_FROG1_DMARPAT"]];
_loadoutData set ["traitorVests", ["CUP_V_B_Eagle_SPC_Empty"]];
_loadoutData set ["traitorHats", ["CUP_H_USMC_BOONIE_2_DES"]];

_loadoutData set ["officerUniforms", ["CUP_U_B_USMC_FROG1_DMARPAT"]];
_loadoutData set ["officerVests", ["CUP_V_B_Eagle_SPC_Officer"]];
_loadoutData set ["officerHats", ["CUP_H_USMC_Officer_Cap"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["slUniforms", []];
_loadoutData set ["mgVests", []];
_loadoutData set ["medVests", []];
_loadoutData set ["slVests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["engVests", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", []];
_loadoutData set ["atBackpacks", []];
_loadoutData set ["slBackpacks", []];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", []];
_loadoutData set ["sniHats", []];
_loadoutData set ["glasses", []];
_loadoutData set ["goggles", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];
private _sfmmItems = ["CUP_optic_AN_PVS_10_black"];

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

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["items_marksman_extras", (_mmItems + _sfmmItems)];
_sfLoadoutData set ["items_sniper_extras", (_mmItems + _sfmmItems)];
_sfLoadoutData set ["uniforms", ["HL_CMB_U_OW_Leader"]];
_sfLoadoutData set ["vests", ["HL_CMB_V_OW_Leader"]];
_sfLoadoutData set ["mgVests", ["HL_CMB_V_OW_Leader"]];
_sfLoadoutData set ["medVests", ["HL_CMB_V_OW_Leader"]];
_sfLoadoutData set ["glVests", ["HL_CMB_V_OW_Leader"]];
_sfLoadoutData set ["backpacks", ["B_TacticalPack_blk"]];
_sfLoadoutData set ["slBackpacks", ["B_Kitbag_cbr"]];
_sfLoadoutData set ["atBackpacks", ["B_TacticalPack_blk"]];
_sfLoadoutData set ["helmets", ["HL_CMB_H_OW_Leader"]];
_sfLoadoutData set ["slHat", ["HL_CMB_H_OW_Leader"]];
_sfLoadoutData set ["NVGs", ["NVG_Sundown"]];
_sfLoadoutData set ["binoculars", ["CUP_SOFLAM"]];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

_sfLoadoutData set ["slRifles", [
    ["HL_CMB_arifle_AR2", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]
]];

_sfLoadoutData set ["rifles", [
    ["HL_CMB_arifle_AR2", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]

]];
_sfLoadoutData set ["carbines", [
    ["HLA_Ordinal_AR1", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["HLA_Ordinal_AR1", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["WBK_CP_HeavySmg", "", "", "", ["HLB_HSMG_Mag"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["MMG_01_tan_F", "hlc_bipod_utgshooters", "ace_muzzle_mzls_93mmg", "optic_arco_ak_blk_f", ["150Rnd_93x64_Mag"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["hlc_rifle_bcmblackjack", "optic_arco_ak_blk_f", "", "CUP_optic_SB_11_4x20_PM", ["hlc_50rnd_300BLK_STANAG_EPR"], [], "hlc_bipod_utgshooters"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["HL_SniperAssasin", "", "", "", ["HLA_SniperMag_Mag"], [], ""]
]];
_sfLoadoutData set ["lightATLaunchers", [
    ["launch_O_Titan_short_F", "", "", "", [""], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["hlc_smg_mp5k", "ace_muzzle_mzls_smg_02", "optic_yorris", "", ["hlc_30Rnd_9x19_SD_MP5"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["CombainOrdenal_Uniform_1"]];
_eliteLoadoutData set ["vests", ["CombainOrdenal_vest"]];
_eliteLoadoutData set ["slVests", ["CombainOrdenal_vest"]];
_eliteLoadoutData set ["mgVests", ["CombainOrdenal_vest"]];
_eliteLoadoutData set ["glVests", ["CombainOrdenal_vest"]];
_eliteLoadoutData set ["backpacks", ["OrdenalBackpack", "Combaine_backpack", "HLA_SCBA_01_infestation_F"]];
_eliteLoadoutData set ["atBackpacks", ["OrdenalBackpack"]];
_eliteLoadoutData set ["helmets", ["CombainOrdenal"]];
_eliteLoadoutData set ["slHat", ["CombainOrdenal"]];
_eliteLoadoutData set ["binoculars", ["CUP_LRTV"]];

_eliteLoadoutData set ["slRifles", [
    ["HLA_Ordinal_AR1", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], ["HL_CMB_1Rnd_AR2_Comball"], ""],
    ["WBK_OICW_Rifle", "", "", "", ["HLB_OICW_Mag"], ["3Rnd_HE_Grenade_shell"], ""]
]];

_eliteLoadoutData set ["rifles", [
    ["WBK_OICW_Rifle", "", "", "", ["HLB_OICW_Mag"], [], ""],
    ["HLA_Grunt_AR1SMG", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]
]];

_eliteLoadoutData set ["carbines", [
    ["WBK_CP_HeavySmg_Resist", "", "", "", ["HLB_OICW_Mag"], [], ""],
    ["HLA_Grunt_AR1SMG", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]
]];

_eliteLoadoutData set ["grenadeLaunchers", [
    ["WBK_OICW_Rifle", "", "", "", ["HLB_HSMG_Mag"], [], ""],
    ["HLA_Grunt_AR1SMG", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["HL_CMB_arifle_AR2", "", "", "", ["HL_CMB_30Rnd_AR2_Mag"], ["HL_CMB_1Rnd_AR2_Comball"], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["srifle_DMR_02_F", "", "", "optic_nightstalker", ["ACE_10Rnd_338_300gr_HPBT_Mag"], [], "ace_muzzle_mzls_338"]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["HL_SniperAssasin", "", "", "", ["HLA_SniperMag_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
    ["hlc_smg_mp5k", "", "", "", ["hlc_30Rnd_9x19_B_MP5"], [], ""],
    ["WBK_Revolver_HL1_2", "", "", "", ["HL_Revolver_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", ["Z_C17_Uniform_1", "Z_C17_Uniform_7", "Z_C17_Uniform_5", "Z_C17_Uniform_4", "Z_C17_Uniform_6", "Z_C17_Uniform_3"]];
_militaryLoadoutData set ["slUniforms", ["U_C18_Uniform_6"]];
_militaryLoadoutData set ["vests", ["V_Ballistic_Sundown"]];
_militaryLoadoutData set ["mgVests", ["V_Ballistic_Sundown"]];
_militaryLoadoutData set ["medVests", ["V_Ballistic_Sundown"]];
_militaryLoadoutData set ["slVests", ["V_HeavyBallistic_Sundown"]];
_militaryLoadoutData set ["glVests", ["V_Ballistic_Sundown"]];
_militaryLoadoutData set ["engVests", ['V_Ballistic_Sundown']];
_militaryLoadoutData set ["backpacks", ["Combaine_backpack_white", "Combaine_backpack_Civilian"]];
_militaryLoadoutData set ["slBackpacks", ["Combaine_backpack_NB"]];
_militaryLoadoutData set ["atBackpacks", ["bms_ARVN_zwart_ruck"]];
_militaryLoadoutData set ["helmets", ["H_SM_CivilMask", "H_SM_EliteMask", "H_SM_CMBMask"]];
_militaryLoadoutData set ["binoculars", ["CUP_LRTV"]];

_militaryLoadoutData set ["slRifles", [
    ["CUP_arifle_M4A1_SOMMOD_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_M4A1_SOMMOD_black", "", "CUP_acc_ANPEQ_15", "CUP_optic_ACOG_TA01B_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_M4A1_SOMMOD_black", "", "", "CUP_optic_SB_11_4x20_PM", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_HK_M27", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_ACOG_TA01B_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_HK_M27", "", "CUP_acc_ANPEQ_15", "", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_HK_M27", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""]
]];

_militaryLoadoutData set ["rifles", [
    ["CUP_arifle_M4A1_SOMMOD_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_HK_M27", "CUP_muzzle_snds_M16", "", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_M4A1_SOMMOD_Grip_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_M4A1_SOMMOD_black", "", "CUP_acc_ANPEQ_15", "CUP_optic_CompM4", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_HK_M27", "CUP_muzzle_snds_M16", "", "CUP_optic_CompM4", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_M4A1_SOMMOD_Grip_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_CompM4", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""]

]];
_militaryLoadoutData set ["carbines", [
    ["CUP_arifle_M4A1_standard_short_black", "", "", "CUP_optic_CompM4", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_M4A1_standard_short_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_HK_M27_AG36", "", "CUP_acc_ANPEQ_15", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_Smoke_M203"], ""],
    ["CUP_arifle_mk18_m203_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["CUP_smg_MP5A5", "CUP_muzzle_snds_MP5", "CUP_acc_Flashlight_MP5", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_Red_Tracer_9x19_MP5"], [], ""],
    ["CUP_smg_MP5A5", "", "CUP_acc_Flashlight_MP5", "CUP_optic_MicroT1", ["CUP_30Rnd_Red_Tracer_9x19_MP5"], [], ""],
    ["CUP_smg_MP7", "CUP_muzzle_snds_MP7", "", "CUP_optic_MicroT1", ["CUP_40Rnd_46x30_MP7"], [], ""],
    ["CUP_smg_MP7", "CUP_muzzle_snds_MP7", "", "CUP_optic_Eotech553_Black", ["CUP_40Rnd_46x30_MP7"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["CUP_lmg_Mk48", "", "", "CUP_optic_Eotech553_Black", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"], [], ""],
    ["CUP_lmg_Mk48", "", "", "CUP_optic_ACOG_TA648_308_Black", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"], [], ""],
    ["CUP_lmg_m249_pip1", "", "", "CUP_optic_Eotech553_Black", ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249"], [], ""],
    ["CUP_lmg_M240_B", "", "", "CUP_optic_ACOG_TA648_308_Black", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14_DMR", "CUP_muzzle_snds_M14", "", "CUP_optic_SB_11_4x20_PM", ["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "bipod_01_F_blk"],
    ["CUP_srifle_M14_DMR", "", "", "", ["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "bipod_01_F_blk"],
    ["CUP_srifle_M14_DMR", "", "", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "bipod_01_F_blk"],
    ["CUP_srifle_m110_kac_black", "CUP_muzzle_snds_M110_black", "", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "bipod_01_F_blk"],
    ["CUP_srifle_m110_kac_black", "", "", "CUP_optic_SB_11_4x20_PM", ["CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "bipod_01_F_blk"],
    ["CUP_srifle_m110_kac_black", "CUP_muzzle_snds_M110_black", "", "CUP_optic_SB_3_12x50_PMII", ["CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "bipod_01_F_blk"]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M24_blk", "", "CUP_Mxx_camo_half", "CUP_optic_SB_3_12x50_PMII", ["CUP_5Rnd_762x51_M24"], [], "bipod_01_F_blk"],
    ["CUP_srifle_M24_blk", "", "CUP_Mxx_camo_half", "CUP_optic_LeupoldMk4", ["CUP_5Rnd_762x51_M24"], [], "bipod_01_F_blk"],
    ["CUP_srifle_AWM_blk", "bipod_01_F_blk", "", "SC_TSO55", ["CUP_5Rnd_86x70_L115A1"], [], ""],
    ["CUP_srifle_AWM_blk", "bipod_01_F_blk", "", "SC_TSO55", ["CUP_5Rnd_86x70_L115A1"], [], ""]
]];
_militaryLoadoutData set ["lightATLaunchers", [
    ["launch_MRAWS_sand_rail_F", "", "", "", [""], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["HL_CMB_hgun_USP", "", "", "", ["HL_CMB_18Rnd_9x19_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", ["U_BDU_Raid_urban"]];
_policeLoadoutData set ["vests", ["V_Rangemaster_belt"]];
_policeLoadoutData set ["helmets", ["H_MilCap_gry"]];

_policeLoadoutData set ["shotGuns", [
    ["HL_CMB_sgun_SPAS12", "", "", "", ["HL_CMB_6Rnd_12gBuckshot"], [], ""]
]];
_policeLoadoutData set ["SMGs", [
    ["HL_CMB_SMG_01", "", "", "", ["HL_CMB_30Rnd_SMG_Mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
    ["IMS_HL_StunBaton", "", "", "", [], [], ""]
]];;

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["uniforms", ["CUP_I_B_PARA_Unit_4"]];
_militiaLoadoutData set ["vests", ["CUP_V_I_RACS_Carrier_Rig_wdl_3"]];
_militiaLoadoutData set ["sniVests", ["CUP_V_I_RACS_Carrier_Rig_wdl_3"]];
_militiaLoadoutData set ["backpacks", [ "CUP_B_Bergen_BAF"]];
_militiaLoadoutData set ["slBackpacks", ["CUP_B_Bergen_BAF"]];
_militiaLoadoutData set ["atBackpacks", ["CUP_B_Bergen_BAF"]];
_militiaLoadoutData set ["helmets", ["CUP_H_Ger_M92_RGR_GG"]];

_militiaLoadoutData set ["rifles", [
    ["CUP_arifle_L85A2", "", "", "", ["CUP_30Rnd_556x45_Stanag_L85"], [], ""],
    ["CUP_arifle_M16A1", "", "", "", ["CUP_30Rnd_556x45_Stanag"], [], ""],
    ["CUP_arifle_FNFAL5061_wooden", "", "", "", ["CUP_20Rnd_762x51_FNFAL_Desert_M"], [], ""],
    ["CUP_arifle_IMI_Romat", "", "", "", ["CUP_20Rnd_762x51_FNFAL_M"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["CUP_arifle_Colt727", "", "", "", ["CUP_30Rnd_556x45_Stanag"], [], ""],
    ["CUP_arifle_IMI_Romat", "", "", "", ["CUP_20Rnd_762x51_FNFAL_M"], [], ""],
    ["CUP_arifle_Sa58_Carbine_RIS_AFG", "", "", "", ["CUP_30Rnd_Sa58_M"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL", "", "", "", ["CUP_20Rnd_556x45_Stanag"], ["1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell"], ""],
    ["CUP_arifle_Colt727_M203", "", "", "", ["CUP_20Rnd_556x45_Stanag"], ["1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeYellow_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_MP5A5", "", "", "", ["30Rnd_9x21_Mag_SMG_02"], [], ""],
    ["SMG_03C_black", "", "", "", ["50Rnd_570x28_SMG_03"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["CUP_arifle_RPK74", "", "CUP_optic_1p63", "", ["CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"], [], ""],
    ["CUP_arifle_Galil_black", "", "CUP_optic_CompM4", "", ["CUP_25Rnd_762x51_Green_Tracers_Galil_Mag"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14_DMR", "", "", "CUP_optic_CompM4", ["10Rnd_Mk14_762x51_Mag"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M24_blk", "", "CUP_optic_LeupoldM3LR", "", ["CUP_5Rnd_762x51_M24"], [], "CUP_bipod_VLTOR_Modpod_black"]
]];
_militiaLoadoutData set ["lightATLaunchers", [
    ["CUP_launch_RPG7V", "", "", "", [""], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
    ["HL_CMB_hgun_USP", "", "", "", ["HL_CMB_18Rnd_9x19_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["CUP_U_O_RUS_Gorka_Green"]];
_crewLoadoutData set ["vests", ["CUP_V_CZ_vest19"]];
_crewLoadoutData set ["helmets", ["CUP_H_RUS_Balaclava_Ratnik_Headphones"]];
_crewLoadoutData set ["carbines", [
    ["CUP_smg_MP7_woodland", "", "", "", ["CUP_40Rnd_46x30_MP7"], [], ""]
]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["CUP_U_B_USMC_PilotOverall"]];
_pilotLoadoutData set ["vests", ["CUP_V_B_PilotVest"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_B"]];
_pilotLoadoutData set ["carbines", [
    ["CUP_smg_MP7_woodland", "", "", "", ["CUP_40Rnd_46x30_MP7"], [], ""]
]];	

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    [["slVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    [["slBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
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
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
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
    [["medVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

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
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    [["glSidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["antiTankGrenades", 3] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;


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
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

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
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["lightATLaunchers"] call _fnc_setLauncher;
    ["launcher", 1] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["missileATLaunchers", "ATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 2] call _fnc_addMagazines;
    ["launcher", 2] call _fnc_addAdditionalMuzzleMagazines;
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    ["launcher", 2] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["mgVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
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
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["sniperRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
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


    [selectRandom ["SMGs", "shotGuns"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

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
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
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

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
    ["SquadLeader", _squadLeaderTemplate, [["baseClass", "WBK_Combine_HL2_Type_Elite", true]], [_prefix]],
	["Rifleman", _riflemanTemplate, [["baseClass", "WBK_Combine_Ordinal", true]], [_prefix]],
	["Radioman", _radiomanTemplate, [["baseClass", "WBK_Combine_Ordinal", true]], [_prefix]],
	["Medic", _medicTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["LAT", _latTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["AT", _atTemplate, [["baseClass", "WBK_Hunter_Synth_1", false]], [_prefix]],
	["AA", _aaTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [["baseClass", "WBK_Combine_Hl2_Type_WastelandPatrol", true]], [_prefix]],
	["Marksman", _marksmanTemplate, [["baseClass", "WBK_Combine_ASS_Sniper", false]], [_prefix]],
	["Sniper", _sniperTemplate, [["baseClass", "WBK_Combine_ASS_Sniper", false]], [_prefix]]
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
    ["SquadLeader", _squadLeaderTemplate, [["baseClass", "WBK_Combine_Hl2_Type", true]], [_prefix]],
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
	["SquadLeader", _squadLeaderTemplate, [["baseClass", "WBK_Combine_Grunt", true]], [_prefix]],
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

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
    ["Rifleman", _riflemanTemplate, [["baseClass", "WBK_Combine_Grunt", true]], [_prefix]],
    ["Radioman", _radiomanTemplate, [["baseClass", "WBK_Combine_Grunt", true]], [_prefix]],
    ["Medic", _medicTemplate, [["medic", true], ["baseClass", "WBK_Combine_Grunt_white", true]], [_prefix]],
    ["Engineer", _engineerTemplate, [["engineer", true], ["baseClass", "WBK_Combine_Ordinal", true]], [_prefix]],
    ["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true], ["baseClass", "WBK_Combine_Wallhammer", false]], [_prefix]],
["Grenadier", _grenadierTemplate, [["baseClass", "WBK_HL2_Combine_Type", false]], [_prefix]],
	["AT", _atTemplate, [["baseClass", "WBK_Hunter_Synth_1", false]], [_prefix]],
	["AT", _atTemplate, [["baseClass", "WBK_Hunter_Synth_1", false]], [_prefix]],
    ["AA", _aaTemplate, [["baseClass", "WBK_HumanSynth_1", false]], [_prefix]],
    ["MachineGunner", _machineGunnerTemplate, [["baseClass", "WBK_Combine_APF", false]], [_prefix]],
    ["Marksman", _marksmanTemplate, [["baseClass", "WBK_Combine_ASS_Sniper", false]], [_prefix]],
    ["Sniper", _sniperTemplate, [["baseClass", "WBK_Combine_ASS_Sniper", false]], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout of the pilots
["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _SquadLeaderTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;