///////////////////////////
//   Rebel Information   //
///////////////////////////

#include "..\..\..\script_component.hpp"

["name", "Forward Resistance"] call _fnc_saveToTemplate; 

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Pictures\Markers\marker_rebel_ca.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3u_flag_rebel"] call _fnc_saveToTemplate;

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_I_Hilux_armored_unarmed_NAPA", "HL_RES_DVP"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_I_Hilux_DSHKM_NAPA", "CUP_I_Datsun_PK", "HL_RES_DVP_HMG"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["CUP_V3S_Open_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_I_Hilux_SPG9_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_I_Ural_ZU23_NAPA", "CUP_I_Hilux_zu23_NAPA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_C_DC3_CIV"]] call _fnc_saveToTemplate;       // replace from civ varient s
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["CUP_I_LR_Ambulance_RACS"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_O_Hilux_unarmed_CR_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_03"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412", "CUP_C_SA330_Puma_HC1_ChernAvia", "CUP_I_Merlin_HC3_PMC_Lux_3C"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_I_DSHKM_NAPA", "CUP_B_DSHkM_MiniTriPod_NAPA"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_I_SPG9_NAPA"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_I_ZU23_NAPA"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_I_2b14_82mm_NAPA"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "CUP_MineE_M"] call _fnc_saveToTemplate;
["mineAPERS", "APERSMine_Range_Mag"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

#include "HL_Reb_Vehicle_Attributes.sqf"

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    ["CUP_B_TOW_TriPod_USMC", 3000, "STATICAT", {tierWar > 3}],
    ["CUP_B_AGS_CDF", 3000, "STATICMG", {tierWar > 3}],

    ["CUP_B_BRDM2_HQ_CZ", 2050, "CAR", {true}],
    ["CUP_B_BRDM2_CDF", 2500, "CAR", {true}],

    ["CUP_B_BTR80_FIA", 6000, "APC", {true}],
    ["CUP_B_BMP2_CDF", 9000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["CUP_B_T72_CDF", 20000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
  
    ["CUP_B_ZSU23_CDF", 10000, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    ["CUP_B_CESSNA_T41_ARMED_USA", 10000, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_B_L39_CZ", 40000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],

    ["CUP_B_Mi17_CDF", 15000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_O_Mi8_RU", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "CUP_sgun_slamfire", "WBK_BearRebel_Rifle", "HL_CivHuntingRifle_Mag",
    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", "CUP_1Rnd_12Gauge_Pellets_No3_Buck", "CUP_10x_303_M",
    "CUP_hgun_TaurusTracker455", "CUP_6Rnd_45ACP_M",
    ["CUP_launch_RPG18", 50],
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "CUP_HandGrenade_RGD5", "SmokeShell",
    "CUP_V_I_Carrier_Belt", "CUP_V_I_Guerilla_Jacket", "CUP_V_I_RACS_Carrier_Rig_2", "CUP_V_I_RACS_Carrier_Rig_wdl_2",
    "V_LegStrapBag_black_F", "V_Rangemaster_belt", "V_BandollierB_blk", "V_BandollierB_cbr", "V_Pocketed_black_F",
    "B_FieldPack_cbr", "B_FieldPack_khk", "B_AssaultPack_rgr", "B_AssaultPack_khk",
    "Binocular"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "tf_anprc155";
    _initialRebelEquipment pushBack "tf_anprc155_coyote";
};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "TFAR_anprc155";
    _initialRebelEquipment pushBack "TFAR_anprc155_coyote";
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "CUP_U_C_Citizen_02",
    "CUP_U_C_Citizen_01",
    "CUP_U_C_Citizen_04",
    "CUP_U_C_Citizen_03",
    "CUP_U_C_Rocker_01",
    "CUP_U_C_Rocker_02",
    "CUP_U_C_Rocker_03",
    "CUP_U_C_Rocker_04",
    "CUP_U_C_AirMedic_yellow_01",
    "CUP_U_C_Tracksuit_02",
    "CUP_U_C_Tracksuit_01",
    "U_C_Man_casual_1_F",
    "U_C_Man_casual_2_F",
    "U_C_Man_casual_3_F",
    "U_C_Man_casual_4_F",
    "U_C_Man_casual_5_F",
    "U_C_Man_casual_6_F",
    "U_C_ArtTShirt_01_v1_F",
    "U_C_ArtTShirt_01_v2_F",
    "U_C_ArtTShirt_01_v3_F",
    "U_C_ArtTShirt_01_v4_F",
    "U_C_ArtTShirt_01_v5_F",
    "U_C_ArtTShirt_01_v6_F",
    "U_NikosBody",
    "U_NikosAgedBody",
    "U_C_Journalist",
    "U_C_Poloshirt_blue",
    "U_C_Poloshirt_burgundy",
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour",
    "U_C_Poloshirt_salmon",
    "U_C_Poloshirt_redwhite",
    "U_OrestesBody",
    "U_C_Poor_1",
    "U_C_WorkerCoveralls",
    "U_C_HunterBody_grn",
    "U_C_Uniform_Farmer_01_F",
    "U_I_L_Uniform_01_tshirt_skull_F",
    "U_I_L_Uniform_01_tshirt_black_F",
    "U_I_L_Uniform_01_tshirt_sport_F",
    "U_C_Scientist",
    "U_C_Uniform_Scientist_02_formal_F",
    "U_C_Uniform_Scientist_02_F",
    "U_C_Uniform_Scientist_01_F",
    "CombainCIV_Uniform_2",
    "CombainCIV_Uniform_1",
    "HL_RES_U_Rebel_03",
    "HL_RES_U_Rebel_02",
    "HL_RES_U_Rebel_01",
    "HL_RES_U_Rebel_Medic"
];          //Uniforms given to Player Rebels

private _rebUniformsAI = [
    "CombainCIV_Uniform_2",
    "CombainCIV_Uniform_1",
    "HL_RES_U_Rebel_03",
    "HL_RES_U_Rebel_02",
    "HL_RES_U_Rebel_01",
    "HL_RES_U_Rebel_Medic",
    "CombainCIV_Uniform_2",
    "CombainCIV_Uniform_1"
];          //Uniforms given to AI Rebels

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
    "CUP_H_C_Beanie_02",
    "CUP_H_C_Beret_03",
    "CUP_H_C_Beret_04",
    "CUP_H_C_Ushanka_01",
    "CUP_H_C_Ushanka_02",
    "CUP_H_C_Ushanka_03",
    "CUP_H_Ger_Boonie2_Flecktarn",
    "CUP_H_NAPA_Fedora",
    "H_Bandanna_camo"
    ]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem","GreekHead_A3_05",
"GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09",
"Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09",
"WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_19","WhiteHead_20",
"WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["CUP_D_Male01_CZ_ACR","CUP_D_Male02_CZ_ACR","CUP_D_Male03_CZ_ACR","CUP_D_Male04_CZ_ACR","CUP_D_Male05_CZ_ACR"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniformsAI];
_loadoutData set ["facewear", ["None","CUP_G_Balaclava_blk","CUP_G_Balaclava_oli","CUP_G_Bandanna_aviator","CUP_G_Bandanna_beast",
"CUP_G_Bandanna_blk","CUP_G_Bandanna_khk","CUP_G_Bandanna_oli","CUP_G_Bandanna_shades","CUP_G_Shades_Black"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;