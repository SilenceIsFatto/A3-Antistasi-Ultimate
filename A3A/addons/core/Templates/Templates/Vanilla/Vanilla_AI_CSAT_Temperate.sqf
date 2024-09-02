private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC; ///why lol
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "CSAT"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "CSAT"]] call _fnc_saveToTemplate;

["flag", "Flag_CSAT_F"] call _fnc_saveToTemplate;
["flagTexture", "A3\Data_F\Flags\Flag_CSAT_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_CSAT"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_East_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_CSAT_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["O_T_Quadbike_01_ghex_F"]] call _fnc_saveToTemplate;

private _lightUnarmed = ["O_T_MRAP_02_ghex_F"];
private _lightArmed = ["O_T_MRAP_02_gmg_ghex_F", "O_T_MRAP_02_hmg_ghex_F"];
["vehiclesTrucks", ["O_T_Truck_03_covered_ghex_F", "O_T_Truck_03_transport_ghex_F"]] call _fnc_saveToTemplate;
private _cargoTrucks = ["O_T_Truck_02_F", "O_T_Truck_02_transport_F", "O_T_Truck_03_covered_ghex_F", "O_T_Truck_03_transport_ghex_F","O_T_UGV_01_ghex_F"];
["vehiclesAmmoTrucks", ["O_T_Truck_03_ammo_ghex_F"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["O_T_Truck_03_repair_ghex_F", "O_T_Truck_02_Box_F"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["O_T_Truck_02_fuel_F", "O_T_Truck_03_fuel_ghex_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["O_T_Truck_02_Medical_F", "O_T_Truck_03_medical_ghex_F"]] call _fnc_saveToTemplate;
private _lightAPCs = ["O_T_APC_Wheeled_02_rcws_v2_ghex_F"];
["vehiclesAPCs", ["O_T_APC_Wheeled_02_rcws_v2_ghex_F"]] call _fnc_saveToTemplate;
private _IFVs = ["O_T_APC_Tracked_02_cannon_ghex_F"];
private _Airborne = ["O_T_APC_Wheeled_02_rcws_v2_ghex_F","O_T_UGV_01_rcws_ghex_F"];
["vehiclesLightTanks", ["O_T_UGV_01_rcws_ghex_F"]] call _fnc_saveToTemplate;
private _tanks = ["O_T_MBT_02_cannon_ghex_F","O_T_MBT_02_railgun_ghex_F"];
["vehiclesAA", ["O_T_APC_Tracked_02_AA_ghex_F"]] call _fnc_saveToTemplate;

private _transportBoat = ["O_T_Boat_Transport_01_F"];
["vehiclesGunBoats", ["O_T_Boat_Armed_01_hmg_F"]] call _fnc_saveToTemplate;

private _planesCAS = ["O_Plane_CAS_02_dynamicLoadout_F","O_T_VTOL_02_infantry_dynamicLoadout_F","O_T_UAV_04_CAS_F"];
private _planesAA = ["O_Plane_CAS_02_dynamicLoadout_F","O_T_VTOL_02_infantry_dynamicLoadout_F"];
["vehiclesPlanesTransport", ["O_T_VTOL_02_infantry_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["O_T_VTOL_02_infantry_dynamicLoadout_F"]] call _fnc_saveToTemplate;

private _lightHelicopters = ["O_Heli_Light_02_unarmed_F"];
private _transportHelicopters = ["O_Heli_Light_02_unarmed_F"];

if (_hasHelicopters) then {
    _transportHelicopters append ["O_Heli_Transport_04_covered_F", "O_Heli_Transport_04_bench_F"]; 
};

["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
private _lightAttackHelicopters = ["O_Heli_Light_02_dynamicLoadout_F"];
["vehiclesHelisAttack", ["O_Heli_Attack_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["O_T_MBT_02_arty_ghex_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["O_T_MBT_02_arty_ghex_F",["32Rnd_155mm_Mo_shells_O", "2Rnd_155mm_Mo_Cluster_O", "6Rnd_155mm_Mo_mine_O"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["O_T_UAV_04_CAS_F","O_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
private _uavsPortable = if (_hasWs) then {["O_UAV_02_lxWS", "O_UAV_01_F"]} else {["O_UAV_01_F"]};

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaTrucks", ["O_T_Truck_02_transport_F", "O_T_Truck_02_F"]] call _fnc_saveToTemplate;
private _militiaLightArmed = ["B_G_Offroad_01_armed_F"];
private _militiaCars = ["B_G_Offroad_01_F"];
private _militiaAPCs = ["O_APC_Wheeled_02_rcws_v2_F"];
private _militiaAPCs = ["O_T_APC_Wheeled_02_rcws_v2_ghex_F"];

private _policeVehs = if (_hasContact) then {
    ["B_GEN_Offroad_01_covered_F", "B_GEN_Offroad_01_comms_F", "B_GEN_Offroad_01_gen_F"]
} else {
    ["B_GEN_Offroad_01_gen_F"]
};
if (_hasLawsOfWar) then {
    _policeVehs append ["B_GEN_Van_02_vehicle_F","B_GEN_Van_02_transport_F"];
};

["staticMGs", ["O_HMG_01_high_F","I_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["O_static_AT_F","O_GMG_01_high_F"]] call _fnc_saveToTemplate;
["staticAA", ["O_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["O_Mortar_01_F"]] call _fnc_saveToTemplate;
private _howitzers = [];

private _radar = [];
private _SAM = [];
if (_hasJets) then {
	_planesCAS pushback "O_Plane_Fighter_02_F";
	_planesAA pushback "O_Plane_Fighter_02_Stealth_F";
	_radar pushback "O_Radar_System_02_F";
	_SAM pushback "O_SAM_System_04_F";
};

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

if (_hasApex) then {
    _lightUnarmed pushBack "O_T_LSV_02_unarmed_F";
    _lightArmed append ["O_T_LSV_02_armed_F", "O_T_LSV_02_AT_F"];
    _militiaCars pushBack "I_C_Offroad_02_unarmed_F";
    _militiaLightArmed pushBack "a3a_Offroad_02_LMG_black_F";
    _transportBoat pushBack "I_C_Boat_Transport_02_F";
};

if (_hasRF) then {
    _lightUnarmed append ["O_T_Pickup_rf","O_T_Pickup_Comms_rf"];
    _militiaLightArmed pushBack "O_T_G_Pickup_hmg_rf";
    _militiaCars append ["O_T_Pickup_rf","O_T_Pickup_Comms_rf"];
    _uavsPortable pushBack "O_UAV_RC40_SENSOR_RF";
    _howitzers pushBack "O_T_TwinMortar_RF";
    _policeVehs append ["a3a_police_Pickup_rf", "B_GEN_Pickup_covered_rf", "a3a_police_Pickup_comms_rf"];
};

if (_hasTanks) then {
    _tanks append ["O_T_MBT_04_cannon_F", "O_T_MBT_04_command_F"];
};

if (_hasWs) then {
    _cargoTrucks = ["O_T_Truck_02_cargo_lxWS", "O_T_Truck_02_flatbed_lxWS","O_T_UGV_01_ghex_F"];
    _lightAPCs = ["O_T_APC_Wheeled_02_hmg_lxWS", "O_T_APC_Wheeled_02_unarmed_lxWS"];
    _militiaAPCs = ["O_T_APC_Wheeled_02_hmg_lxWS", "O_T_APC_Wheeled_02_unarmed_lxWS"];
    _IFVs pushBack "O_T_APC_Tracked_02_30mm_lxWS";
    _lightHelicopters pushBack "B_ION_Heli_Light_02_unarmed_lxWS";
    _lightAttackHelicopters pushBack "a3a_ION_Heli_Light_02_dynamicLoadout_lxWS";
};

["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _lightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _lightArmed] call _fnc_saveToTemplate;
["howitzerMagazineHE", "6Rnd_120mm_HE_shells_RF","2Rnd_120mm_Mo_Cluster_RF"] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesAirborne", _Airborne] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["vehiclesHelisLight", _lightHelicopters] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _lightAttackHelicopters]call _fnc_saveToTemplate;

#include "Vanilla_Vehicle_Attributes.sqf"

["animations", [
    ["O_T_Pickup_rf", ["hide_bullbar",0.3,"hide_fuel_tank",1,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_cover",1,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0.3,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack",0.3,"hide_rack_spotlights",0.3,"hide_frame",0.3,"hide_sidesteps",0.3]],
    ["O_T_Pickup_Comms_rf", ["hide_rack",0.3,"hide_rack_antenna",0.3,"hide_frame",0.3,"hide_frame_full",0.3,"hide_frame_full_panel",0.3,"hide_box",0.3,"hide_box_door",0.3,"hide_trunk_door",0.3,"trunk_door_open",0,"box_door_open",0,"hide_police",1,"hide_Services",1,"BeaconsServicesStart",0,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack_spotlights",0.3,"hide_sidesteps",0.3]],
    ["O_T_TwinMortar_RF", ["hide_door_l",0.3,"hide_door_r",0.3]],
    ["O_T_MBT_02_railgun_ghex_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showLog",0.3]],
    ["O_T_MBT_04_command_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3]],
    ["O_T_MBT_04_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3]],
    ["O_T_MBT_02_cannon_ghex_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3, "showLog", 0.4]],
    ["O_T_APC_Wheeled_02_hmg_lxWS", ["mg_hide_armor_front",0.3,"mg_hide_armor_rear",0.3,"mg_Hide_Rail",0.3,"showCanisters",0.3,"showTools",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["O_T_APC_Wheeled_02_unarmed_lxWS", ["showCanisters",0.3,"showTools",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["O_T_APC_Wheeled_02_rcws_v2_ghex_F", ["showCanisters",0.3,"showTools",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["O_LSV_02_armed_F", ["Unarmed_Doors_Hide",0.3]],
    ["O_LSV_02_unarmed_F", ["Unarmed_Doors_Hide",0.3]],
    ["O_LSV_02_AT_F", ["Unarmed_Doors_Hide",0.3]],
    ["I_C_Offroad_02_unarmed_F", ["hideLeftDoor",0.3,"hideRightDoor",0.3,"hideRearDoor",0.3,"hideBullbar",0.3,"hideFenders",0.3,"hideHeadSupportRear",0.3,"hideHeadSupportFront",0.3,"hideRollcage",0.3,"hideSeatsRear",0,"hideSpareWheel",0.3]],
    ["a3a_Offroad_02_LMG_black_F", ["hideLeftDoor",0.3,"hideRightDoor",0.3,"hideRearDoor",0.3,"hideFenders",0.3,"hideHeadSupportFront",0.3,"hideSpareWheel",0.3]],
    ["O_T_APC_Tracked_02_cannon_ghex_F", ["showTracks",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["O_T_APC_Tracked_02_30mm_lxWS", ["showTracks",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["O_T_APC_Tracked_02_AA_ghex_F", ["showTracks",0.3,"showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3]]
]] call _fnc_saveToTemplate;

["variants", [
    ["O_Plane_Fighter_02_F", ["CamoGreyHex", 0.5 , "CamoBlue", 0.5, "CamoAridHex", 0]],
    ["O_Plane_Fighter_02_Stealth_F", ["CamoGreyHex", 0.5 , "CamoBlue", 0.5, "CamoAridHex", 0]],
    ["O_T_VTOL_02_infantry_dynamicLoadout_F", ["Grey", 0.4, "Hex", 0, "GreenHex", 0.6]],
    ["O_Heli_Attack_02_dynamicLoadout_F", ["Black", 1]],
    ["O_T_LSV_02_armed_F", ["Black", 0.3, "GreenHex", 0.7]],
    ["O_T_LSV_02_unarmed_F", ["Black", 0.3, "GreenHex", 0.7]],
    ["O_T_LSV_02_AT_F", ["Black", 0.3, "GreenHex", 0.7]],
    ["a3a_Offroad_02_LMG_black_F", ["Black", 0.3, "Olive", 0.7]],
    ["I_C_Offroad_02_unarmed_F", ["Black", 0.3, "Olive", 0.7]],
    ["O_Heli_Light_02_dynamicLoadout_F", ["Black", 1]],
    ["O_Heli_Transport_04_bench_F", ["Black", 1]],
    ["O_Heli_Transport_04_covered_F", ["Black", 1]],
    ["O_T_MBT_02_railgun_ghex_F", ["Grey", 0.4, "Hex", 0, "GreenHex", 0.6]],
    ["O_T_MBT_04_command_F", ["Grey", 0.2, "Jungle", 0.4, "Hex", 0, "GreenHex", 0.4]],
    ["O_T_MBT_04_cannon_F", ["Grey", 0.2, "Jungle", 0.4, "Hex", 0, "GreenHex", 0.4]],
    ["O_T_MBT_02_cannon_ghex_F", ["Grey", 0.4, "Hex", 0, "GreenHex", 0.6]],
    ["O_Heli_Light_02_unarmed_F", ["Black", 0.4 , "Blackcustom", 0.2, "Opfor",0]],
    ["O_Heli_Light_02_dynamicLoadout_F", ["Black", 0.4 , "Blackcustom", 0.2, "Opfor",0]],
    ["O_T_APC_Tracked_02_30mm_lxWS", ["Hex", 0, "Black", 0.3, "GreenHex", 0.7]],
    ["O_T_APC_Wheeled_02_hmg_lxWS", ["Hex", 0, "Black", 0.3, "GreenHex", 0.7]],
    ["O_T_APC_Wheeled_02_unarmed_lxWS", ["Hex", 0, "Black", 0.3, "GreenHex", 0.7]],
    ["B_ION_Heli_Light_02_unarmed_lxWS", ["GreenHex",0.6, "Black", 0.2 , "Blackcustom", 0.2, "Opfor",0 ,"ION_BLACK",0]],
    ["a3a_ION_Heli_Light_02_dynamicLoadout_lxWS", ["GreenHex",0.6, "Black", 0.2 , "Blackcustom", 0.2, "Opfor",0 ,"ION_BLACK",0]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01CHI","Male02CHI","Male03CHI"]] call _fnc_saveToTemplate;
["faces", ["AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_04","AsianHead_A3_05","AsianHead_A3_06","AsianHead_A3_07"]] call _fnc_saveToTemplate;

["insignia", ["GryffinRegiment", "", ""]] call _fnc_saveToTemplate;
["milInsignia", ["CSAT_ScimitarRegiment", "", ""]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", [
["launch_RPG32_green_F", "", "", "", ["RPG32_F", "RPG32_HE_F"], [], ""]
]];

_loadoutData set ["ATLaunchers", [
["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HEAT"], [], ""],
["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
]];
_loadoutData set ["missileATLaunchers", [
["launch_O_Titan_short_ghex_F", "", "acc_pointer_IR", "", ["Titan_AT"], [], ""],
["launch_O_Titan_short_ghex_F", "", "acc_pointer_IR", "", ["Titan_AT", "Titan_AP"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["launch_O_Titan_ghex_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_OPFOR","O_NVGoggles_ghex_F"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

if (_hasArtOfWar) then {
	_loadoutData set ["officerUniforms", ["U_O_ParadeUniform_01_CSAT_decorated_F","U_O_ParadeUniform_01_CSAT_F"]];
	_loadoutData set ["officerVests", ["V_TacVest_khk", "V_TacVest_brn"]];
	_loadoutData set ["officerHats", ["H_ParadeDressCap_01_CSAT_F", "H_Beret_CSAT_01_F", "H_Beret_blk"]];
} else {
	_loadoutData set ["officerUniforms", ["U_O_T_Officer_F"]];
	_loadoutData set ["officerVests", ["V_BandollierB_ghex_F"]];
	_loadoutData set ["officerHats", ["H_Beret_blk", "H_Beret_CSAT_01_F", "H_MilCap_ghex_F"]];
};
_loadoutData set ["cloakUniforms", ["U_O_T_FullGhillie_tna_F", "U_O_FullGhillie_lsh", "U_O_T_Sniper_F"]];
_loadoutData set ["cloakVests", ["V_HarnessO_ghex_F", "V_BandollierB_ghex_F", "V_TacVest_oli"]];

_loadoutData set ["traitorUniforms", ["U_I_L_Uniform_01_tshirt_olive_F"]];
_loadoutData set ["traitorVests", ["V_TacVest_oli", "V_I_G_resistanceLeader_F", "V_BandollierB_oli"]];
_loadoutData set ["traitorHats", ["H_Cap_grn", "H_Booniehat_oli"]];

_loadoutData set ["uniforms", ["U_O_T_Soldier_F"]];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", ["B_Carryall_ghex_F"]];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_ghex_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["H_Beret_CSAT_01_F", "H_MilCap_ghex_F"]];
_loadoutData set ["sniHats", ["H_Booniehat_oli"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "O_IR_Grenade"];
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
    "G_Aviator",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack"
]];
if (_hasContact) then {
    _loadoutData set ["goggles", ["G_Lowprofile", "G_AirPurifyingRespirator_02_black_F" , "G_AirPurifyingRespirator_02_olive_F"]];
} else {
    _loadoutData set ["goggles", ["G_Lowprofile"]];
};

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["U_O_V_Soldier_Viper_F"]];
_sfLoadoutData set ["vests", ["V_HarnessO_ghex_F","V_BandollierB_ghex_F","V_HarnessOGL_ghex_F"]];
_sfLoadoutData set ["backpacks", ["B_ViperLightHarness_ghex_F", "B_ViperHarness_ghex_F"]];
_sfLoadoutData set ["helmets", ["H_HelmetO_ViperSP_ghex_F"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_02_ghex_F"]];
_sfLoadoutData set ["NVGs", []];
_sfLoadoutData set ["glasses", ["G_Balaclava_TI_blk_F"]];
_sfLoadoutData set ["goggles", ["G_Balaclava_TI_blk_F"]];

if (_hasRF) then {
    (_sfLoadoutData get "helmets") append ["H_HelmetHeavy_Black_RF","H_HelmetHeavy_Simple_Black_RF","H_HelmetHeavy_VisorUp_Black_RF","H_HelmetHeavy_GHex_RF","H_HelmetHeavy_Simple_GHex_RF","H_HelmetHeavy_VisorUp_GHex_RF"];
    (_sfLoadoutData get "Hvests") append ["V_TacVest_rig_oli_RF","V_TacVest_rig_blk_RF"];
};

if (_hasWs) then {
    (_sfLoadoutData get "helmets") append ["lxWS_H_bmask_ghex","lxWS_H_bmask_base"];
    (_sfLoadoutData get "vests") pushBack "V_lxWS_HarnessO_oli";
    (_sfLoadoutData get "Hvests") pushBack "V_lxWS_TacVestIR_oli";
};

_sfLoadoutData set ["slRifles", [
["arifle_ARX_ghex_F", "muzzle_snds_65_TI_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer"], ["10Rnd_50BW_Mag_F"], ""],
["arifle_ARX_ghex_F", "muzzle_snds_65_TI_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer"], ["10Rnd_50BW_Mag_F"], ""],
["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_GL_blk_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_CTAR_GL_blk_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_AK12_F","muzzle_snds_B_snd_F","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""],
["arifle_AK12_GL_F","muzzle_snds_B_snd_F","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
]];
_sfLoadoutData set ["rifles", [
["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_AK12_F","muzzle_snds_B_snd_F","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["arifle_ARX_ghex_F", "muzzle_snds_65_TI_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer"], ["10Rnd_50BW_Mag_F"], ""],
["arifle_CTAR_GL_blk_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_CTAR_GL_blk_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_AK12_GL_F","muzzle_snds_B_snd_F","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
]];

if (_hasWs) then {
    _sfLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["glaunch_GLX_ghex_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], [], ""]
    ]];
};

_sfLoadoutData set ["SMGs", [
["SMG_01_F", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["SMG_01_F", "muzzle_snds_acp", "", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "muzzle_snds_570", "acc_pointer_IR", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["SMG_05_F","muzzle_snds_L","acc_pointer_IR","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
]];

private _mgs = [
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_Aco", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_ACO_grn", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_Arco", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_NVS", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["arifle_CTARS_ghex_F", "muzzle_snds_58_ghex_F", "acc_pointer_IR", "optic_Arco_ghex_F", ["100Rnd_580x42_ghex_Mag_F", "100Rnd_580x42_ghex_Mag_F", "100Rnd_580x42_ghex_Mag_Tracer_F"], [], ""]
];

if (_hasWs) then {
    _mgs append [
        ["LMG_S77_GHex_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Arco_ghex_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Aco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR_sand_lxWS", "optic_Arco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR_sand_lxWS", "optic_Aco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR_sand_lxWS", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR_sand_lxWS", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};

if (_hasMarksman) then {
    _mgs append [
        ["MMG_01_hex_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_Arco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_hex_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_Aco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_hex_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_ACO_grn", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_hex_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_NVS", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_Arco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_Aco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_ACO_grn", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "muzzle_snds_93mmg_tan", "acc_pointer_IR", "optic_NVS", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"]
    ];
};

private _marksmanRifles = [
    ["srifle_DMR_07_ghex_F", "muzzle_snds_65_TI_ghex_F", "", "optic_DMS", [], [], ""],
    ["srifle_DMR_07_ghex_F", "muzzle_snds_65_TI_ghex_F", "", "optic_NVS", [], [], ""],
    ["srifle_DMR_07_ghex_F", "muzzle_snds_65_TI_ghex_F", "", "optic_Arco_ghex_F", [], [], ""],
    ["srifle_DMR_07_ghex_F", "muzzle_snds_65_TI_ghex_F", "", "optic_SOS", [], [], ""]
];

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_04_F", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_04_F", "", "acc_pointer_IR", "optic_DMS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_05_blk_F", "muzzle_snds_93mmg", "acc_pointer_IR", "optic_KHS_blk", ["10Rnd_93x64_DMR_05_Mag","10Rnd_93x64_DMR_05_Mag","10Rnd_93x64_DMR_05_Mag"], [], "bipod_02_F_blk"]
    ];
};

_sfLoadoutData set ["sniperRifles", [
["srifle_GM6_ghex_F", "", "", "optic_LRPS_ghex_F", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_ghex_F", "", "", "optic_DMS_ghex_F", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["hgun_Rook40_F", "muzzle_snds_L", "", "", [], [], ""]
]];

if (_hasWs) then {
    (_sfLoadoutData get "slRifles") append [
        ["arifle_Galat_lxWS","suppressor_h_lxWS","acc_pointer_IR_sand_lxWS","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","suppressor_h_lxWS","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","suppressor_l_lxWS","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_sfLoadoutData get "rifles") append [
        ["arifle_Galat_lxWS","suppressor_h_lxWS","acc_pointer_IR_sand_lxWS","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","suppressor_h_lxWS","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","suppressor_l_lxWS","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_sfLoadoutData get "grenadeLaunchers") append [
        ["arifle_SLR_V_GL_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS","1Rnd_58mm_AT_lxWS","1Rnd_50mm_Smoke_lxWS"], ""],
        ["arifle_VelkoR5_GL_lxWS","suppressor_l_lxWS","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","suppressor_l_lxWS","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
        ["arifle_SLR_Para_lxWS", "suppressor_h_lxWS", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	    ["arifle_SLR_Para_snake_lxWS", "suppressor_h_lxWS", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
};

if (_hasContact) then {
    (_sfLoadoutData get "slRifles") append [
        ["arifle_AK12_lush_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_AK12_GL_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
    ];
    (_sfLoadoutData get "rifles") append [
        ["arifle_AK12_lush_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""]
    ];
    (_sfLoadoutData get "grenadeLaunchers") append [
        ["arifle_AK12_GL_lush_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"],""]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_AK12U_F","muzzle_snds_B","acc_pointer_IR","optic_Arco_AK_blk_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_AK12U_lush_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""]
    ];
    _mgs append [
        ["arifle_RPK12_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_blk_F",["75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_RPK12_arid_F","muzzle_snds_B_khk_F","acc_pointer_IR","optic_Arco_AK_lush_F",["75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_Tracer_F"],[],""]
    ];
};

if (_hasRF) then {
    (_sfLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","muzzle_snds_acp","acc_pointer_IR","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

_sfLoadoutData set ["machineGuns", _mgs];
_sfLoadoutData set ["marksmanRifles", _marksmanRifles];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["vests", ["V_TacVest_oli","V_HarnessOGL_ghex_F","V_HarnessO_ghex_F"]];
_eliteLoadoutData set ["helmets", ["H_HelmetSpecO_ghex_F", "H_HelmetLeaderO_ghex_F"]];
_eliteLoadoutData set ["uniforms", ["U_O_V_Soldier_Viper_F","U_O_T_Soldier_F"]];
_eliteLoadoutData set ["backpacks", ["B_ViperLightHarness_ghex_F", "B_ViperHarness_ghex_F","B_FieldPack_ghex_F","B_Carryall_ghex_F"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_02_ghex_F"]];

if (_hasRF) then {
    (_eliteLoadoutData get "helmets") append ["H_HelmetHeavy_Black_RF","H_HelmetHeavy_Simple_Black_RF","H_HelmetHeavy_VisorUp_Black_RF","H_HelmetHeavy_GHex_RF","H_HelmetHeavy_Simple_GHex_RF","H_HelmetHeavy_VisorUp_GHex_RF","H_HelmetB_plain_sb_tna_RF"];
    (_eliteLoadoutData get "Hvests") append ["V_TacVest_rig_oli_RF","V_TacVest_rig_blk_RF"];
    (_eliteLoadoutData get "backpacks") append ["B_DuffleBag_Olive_NoLogo_RF","O_CommandoMortar_weapon_RF"];
};

if (_hasWs) then {
    (_eliteLoadoutData get "helmets") append ["lxWS_H_bmask_ghex","lxWS_H_bmask_base"];
    (_eliteLoadoutData get "vests") pushBack "V_lxWS_HarnessO_oli";
    (_eliteLoadoutData get "Hvests") pushBack "V_lxWS_TacVestIR_oli";
    (_eliteLoadoutData get "backpacks") pushBack "O_shield_backpack_GHEX_lxWS";
};

_eliteLoadoutData set ["slRifles", [
["arifle_ARX_ghex_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer"], ["10Rnd_50BW_Mag_F"], ""],
["arifle_ARX_ghex_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer"], ["10Rnd_50BW_Mag_F"], ""],
["arifle_CTAR_ghex_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_ghex_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_GL_blk_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_CTAR_GL_blk_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_AK12_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""],
["arifle_AK12_GL_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
]];
_eliteLoadoutData set ["rifles", [
["arifle_CTAR_ghex_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_ghex_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_AK12_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["arifle_CTAR_ghex_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_ghex_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["arifle_ARX_ghex_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_green_mag_Tracer"], ["10Rnd_50BW_Mag_F"], ""],
["arifle_CTAR_GL_blk_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_CTAR_GL_blk_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_AK12_GL_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_F","30Rnd_762x39_AK12_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
]];

if (_hasWs) then {
    _eliteLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["glaunch_GLX_ghex_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], [], ""]
    ]];
};

_eliteLoadoutData set ["SMGs", [
["SMG_01_F", "", "", "optic_Holosight", [], [], ""],
["SMG_01_F", "", "", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_pointer_IR", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""],
["SMG_05_F","","acc_pointer_IR","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
]];

private _mgs = [
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_Aco", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_ACO_grn", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_Arco", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["LMG_Zafir_F", "", "acc_pointer_IR", "optic_NVS", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""],
    ["arifle_CTARS_ghex_F", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["100Rnd_580x42_ghex_Mag_F", "100Rnd_580x42_ghex_Mag_F", "100Rnd_580x42_ghex_Mag_Tracer_F"], [], ""]
];

if (_hasWs) then {
    _mgs append [
        ["LMG_S77_GHex_lxWS", "", "acc_pointer_IR", "optic_Arco_ghex_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "", "acc_pointer_IR", "optic_Aco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "", "acc_pointer_IR", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR_sand_lxWS", "optic_Arco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR_sand_lxWS", "optic_Aco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR_sand_lxWS", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR_sand_lxWS", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};

if (_hasMarksman) then {
    _mgs append [
        ["MMG_01_hex_F", "", "acc_pointer_IR", "optic_Arco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_hex_F", "", "acc_pointer_IR", "optic_Aco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_hex_F", "", "acc_pointer_IR", "optic_ACO_grn", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_hex_F", "", "acc_pointer_IR", "optic_NVS", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "", "acc_pointer_IR", "optic_Arco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "", "acc_pointer_IR", "optic_Aco", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "", "acc_pointer_IR", "optic_ACO_grn", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"],
        ["MMG_01_tan_F", "", "acc_pointer_IR", "optic_NVS", ["150Rnd_93x64_Mag", "150Rnd_93x64_Mag", "150Rnd_93x64_Mag"], [], "bipod_02_F_blk"]
    ];
};

private _marksmanRifles = [
    ["srifle_DMR_07_ghex_F", "", "", "optic_DMS", [], [], ""],
    ["srifle_DMR_07_ghex_F", "", "", "optic_NVS", [], [], ""],
    ["srifle_DMR_07_ghex_F", "", "", "optic_Arco_ghex_F", [], [], ""],
    ["srifle_DMR_07_ghex_F", "", "", "optic_SOS", [], [], ""]
];

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_04_F", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_04_F", "", "acc_pointer_IR", "optic_DMS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_05_blk_F", "", "acc_pointer_IR", "optic_KHS_blk", ["10Rnd_93x64_DMR_05_Mag","10Rnd_93x64_DMR_05_Mag","10Rnd_93x64_DMR_05_Mag"], [], "bipod_02_F_blk"]
    ];
};

_eliteLoadoutData set ["sniperRifles", [
["srifle_GM6_ghex_F", "", "", "optic_LRPS_ghex_F", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_ghex_F", "", "", "optic_DMS_ghex_F", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["hgun_Rook40_F", "", "", "", [], [], ""]
]];

if (_hasWs) then {
    (_eliteLoadoutData get "slRifles") append [
        ["arifle_Galat_lxWS","","acc_pointer_IR_sand_lxWS","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["arifle_Galat_lxWS","","acc_pointer_IR_sand_lxWS","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_eliteLoadoutData get "grenadeLaunchers") append [
        ["arifle_SLR_V_GL_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS","1Rnd_58mm_AT_lxWS","1Rnd_50mm_Smoke_lxWS"], ""],
        ["arifle_VelkoR5_GL_lxWS","","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
    (_eliteLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","","acc_pointer_IR_sand_lxWS","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
        ["arifle_SLR_Para_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	    ["arifle_SLR_Para_snake_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
};

if (_hasContact) then {
    (_eliteLoadoutData get "slRifles") append [
        ["arifle_AK12_lush_F","","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_AK12_GL_F","","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["arifle_AK12_lush_F","","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""]
    ];
    (_eliteLoadoutData get "grenadeLaunchers") append [
        ["arifle_AK12_GL_lush_F","","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"],""]
    ];
    (_eliteLoadoutData get "carbines") append [
        ["arifle_AK12U_F","","acc_pointer_IR","optic_Arco_AK_blk_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_AK12U_lush_F","","acc_pointer_IR","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""]
    ];
    _mgs append [
        ["arifle_RPK12_F","","acc_pointer_IR","optic_Arco_AK_blk_F",["75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_RPK12_arid_F","","acc_pointer_IR","optic_Arco_AK_lush_F",["75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_Tracer_F"],[],""]
    ];
};

if (_hasRF) then {
    (_eliteLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_pointer_IR","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

_eliteLoadoutData set ["machineGuns", _mgs];
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["vests", ["V_HarnessO_ghex_F", "V_TacVest_oli"]];
_militaryLoadoutData set ["glVests", ["V_HarnessOGL_ghex_F"]];
_militaryLoadoutData set ["backpacks", ["B_Carryall_ghex_F", "B_FieldPack_ghex_F", "B_FieldPack_oli", "B_Carryall_oli"]];
_militaryLoadoutData set ["helmets", ["H_HelmetO_ghex_F"]];

if (_hasRF) then {
    (_militaryLoadoutData get "helmets") append ["H_HelmetHeavy_Black_RF","H_HelmetHeavy_Simple_Black_RF","H_HelmetHeavy_VisorUp_Black_RF","H_HelmetHeavy_GHex_RF","H_HelmetHeavy_Simple_GHex_RF","H_HelmetHeavy_VisorUp_GHex_RF","H_HelmetB_plain_sb_tna_RF"];
    (_militaryLoadoutData get "Hvests") append ["V_TacVest_rig_oli_RF","V_TacVest_rig_blk_RF"];
};

if (_hasWs) then {
    (_militaryLoadoutData get "helmets") append ["lxWS_H_bmask_ghex","lxWS_H_bmask_base"];
    (_militaryLoadoutData get "vests") pushBack "V_lxWS_HarnessO_oli";
    (_militaryLoadoutData get "Hvests") pushBack "V_lxWS_TacVestIR_oli";
};

_militaryLoadoutData set ["slRifles", [
["arifle_CTAR_blk_F", "", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_blk_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_GL_blk_F", "", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_CTAR_GL_blk_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["arifle_CTAR_blk_F", "", "acc_flashlight", "optic_Aco", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_blk_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["arifle_CTAR_blk_F", "", "acc_flashlight", "optic_Aco", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""],
["arifle_CTAR_blk_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["arifle_CTAR_GL_blk_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_CTAR_GL_blk_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["SMG_01_F", "", "", "optic_Holosight", [], [], ""],
["SMG_01_F", "", "", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_flashlight", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SMG_05_F","","acc_flashlight","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
]];

private _mgs = [
    ["arifle_CTARS_blk_F", "", "acc_flashlight", "optic_NVS", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "acc_flashlight", "optic_ACO_grn", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "acc_flashlight", "optic_Aco", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""],
    ["arifle_CTARS_blk_F", "", "acc_flashlight", "optic_Arco_blk_F", ["100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_F", "100Rnd_580x42_Mag_Tracer_F"], [], ""]
];
if (_hasWs) then {
    _mgs append [
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_Arco_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "", "acc_flashlight", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "", "acc_flashlight", "optic_Arco_ghex_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_GHex_lxWS", "", "acc_flashlight", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_Arco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_Aco", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};

_militaryLoadoutData set ["marksmanRifles", [
["srifle_DMR_07_blk_F", "", "", "optic_NVS", [], [], ""],
["srifle_DMR_07_blk_F", "", "", "optic_DMS", [], [], ""],
["srifle_DMR_07_blk_F", "", "", "optic_Arco_blk_F", [], [], ""],
["srifle_DMR_07_blk_F", "", "", "optic_SOS", [], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
["srifle_GM6_F", "", "", "optic_LRPS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_F", "", "", "optic_SOS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_militaryLoadoutData set ["sidearms", ["hgun_Rook40_F", "hgun_Pistol_heavy_02_F"]];

if (_hasWs) then {
    (_militaryLoadoutData get "slRifles") append [
        ["arifle_Galat_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_flashlight","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_militaryLoadoutData get "rifles") append [
        ["arifle_Galat_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_flashlight","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_militaryLoadoutData get "grenadeLaunchers") append [
        ["arifle_SLR_V_GL_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS","1Rnd_58mm_AT_lxWS","1Rnd_50mm_Smoke_lxWS"], ""],
        ["arifle_VelkoR5_GL_lxWS","","acc_flashlight","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
    (_militaryLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","","acc_flashlight","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
        ["arifle_SLR_Para_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	    ["arifle_SLR_Para_snake_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
};

if (_hasContact) then {
    (_militaryLoadoutData get "slRifles") append [
        ["arifle_AK12_lush_F","","acc_flashlight","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_AK12_GL_F","","acc_flashlight","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"],""]
    ];
    (_militaryLoadoutData get "rifles") append [
        ["arifle_AK12_lush_F","","acc_flashlight","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""]
    ];
    (_militaryLoadoutData get "grenadeLaunchers") append [
        ["arifle_AK12_GL_lush_F","","acc_flashlight","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"],""]
    ];
    (_militaryLoadoutData get "carbines") append [
        ["arifle_AK12U_F","","acc_flashlight","optic_Arco_AK_blk_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_AK12U_lush_F","","acc_flashlight","optic_Arco_AK_lush_F",["30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_F","30rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""]
    ];
    _mgs append [
        ["arifle_RPK12_F","","acc_flashlight","optic_Arco_AK_blk_F",["75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_F","75rnd_762x39_AK12_Lush_Mag_Tracer_F"],[],""],
        ["arifle_RPK12_arid_F","","acc_flashlight","optic_Arco_AK_lush_F",["75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_F","75rnd_762x39_AK12_Arid_Mag_Tracer_F"],[],""]
    ];
};

if (_hasRF) then {
    (_militaryLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

_militaryLoadoutData set ["machineGuns", _mgs];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE","V_Rangemaster_belt","V_TacVest_gen_F"]];
private _helmets = ["H_Cap_police","H_MilCap_gen_F","H_Beret_gen_F"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SMG_05_F","","","optic_Aco_smg",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
]];
_policeLoadoutData set ["sidearms", ["hgun_Rook40_F"]];

if (_hasGM) then {
    (_policeLoadoutData get "sidearms") append [
        ["gm_m49_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM51_p210_blk","gm_8Rnd_9x19mm_B_DM11_p210_blk"], [], ""],
        ["gm_p1_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM11_p1_blk","gm_8Rnd_9x19mm_B_DM51_p1_blk","gm_8Rnd_9x19mm_BSD_DM81_p1_blk"], [], ""],
        ["gm_p1sd_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM11_p1_blk","gm_8Rnd_9x19mm_B_DM51_p1_blk","gm_8Rnd_9x19mm_BSD_DM81_p1_blk"], [], ""],
        ["gm_p210_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM11_p210_blk","gm_8Rnd_9x19mm_B_DM51_p210_blk"], [], ""],
        ["gm_pim_blk", "", "", "", ["gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk"], [], ""],
        ["gm_pimb_blk", "", "", "", ["gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk"], [], ""],
        ["gm_pm63_handgun_blk", "", "", "", ["gm_15Rnd_9x18mm_B_pst_pm63_blk","gm_25Rnd_9x18mm_B_pst_pm63_blk"], [], ""]
    ];
    (_policeLoadoutData get "SMGs") append [
        ["gm_mp5n_surefire_blk", "", "gm_surefire_l60_wht_surefire_blk", "", ["gm_60Rnd_9x19mm_B_DM11_mp5a3_blk","gm_60Rnd_9x19mm_AP_DM91_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk"], [], ""],
        ["gm_hk512_wud", "", "gm_surefire_l60_wht_hoseclamp_blk", "", ["gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug","gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug"], [], ""],
        ["gm_hk512_ris_wud", "", "gm_surefire_l60_wht_hoseclamp_blk", "optic_Aco", ["gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug","gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug"], [], ""],
        ["gm_mp2a1_blk", "", "", "", ["gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM11_mp2_blk","gm_32Rnd_9x19mm_AP_DM91_mp2_blk"], [], ""],
        ["gm_pm63_blk", "", "", "", ["gm_25Rnd_9x18mm_B_pst_pm63_blk","gm_15Rnd_9x18mm_B_pst_pm63_blk"], [], ""]
    ];
};

if (_hasRF) then {
    (_policeLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","optic_Aco_smg",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["vests", ["V_HarnessO_ghex_F"]];
_militiaLoadoutData set ["glVests", ["V_HarnessOGL_ghex_F"]];
_militiaLoadoutData set ["Hvests", ["V_TacVest_oli"]];
_militiaLoadoutData set ["backpacks", ["B_Carryall_ghex_F", "B_FieldPack_ghex_F", "B_FieldPack_oli", "B_Carryall_oli"]];
_militiaLoadoutData set ["helmets", ["H_Cap_grn", "H_Bandanna_khk", "H_Shemag_olive", "H_HelmetO_ghex_F"]];

if (_hasRF) then {
    (_militaryLoadoutData get "helmets") pushBack "H_HelmetB_plain_sb_tna_RF";
    (_militaryLoadoutData get "Hvests") append ["V_TacVest_rig_oli_RF","V_TacVest_rig_blk_RF"];
};

if (_hasWs) then {
    (_militaryLoadoutData get "vests") pushBack "V_lxWS_HarnessO_oli";
    (_militaryLoadoutData get "Hvests") pushBack "V_lxWS_TacVestIR_oli";
};

private _rifles = [
    ["arifle_Katiba_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green_mag_Tracer"], [], ""],
    ["arifle_AKM_F","","","",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_Green_F"],[],""]
];
private _carbines = [
    ["arifle_Katiba_C_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green_mag_Tracer"], [], ""],
    ["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_Tracer_F"],[],""]
];
private _grenadeLaunchers = [
    ["arifle_Katiba_GL_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
];
private _mgs = [
    ["LMG_Zafir_F", "", "acc_flashlight", "", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""]
];
private _marksmanRifles = [
    ["srifle_DMR_01_F", "", "", "optic_Arco", [], [], "bipod_02_F_hex"],
    ["srifle_DMR_01_F", "", "", "optic_Arco_blk_F", [], [], "bipod_02_F_hex"]
];

if (_hasWs) then {
    _rifles = [
        ["arifle_Velko_lxWS", "", "acc_flashlight", "", ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS", "", "acc_flashlight", "", ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], [], ""]
    ];
    _carbines = [
        ["arifle_VelkoR5_lxWS", "", "acc_flashlight", "", ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], [], ""]
    ];
    _grenadeLaunchers = [
        ["arifle_VelkoR5_GL_lxWS", "", "acc_flashlight", "", ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell"], ""]
    ];
    _mgs = [
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["arifle_Velko_lxWS", "", "acc_flashlight", "", ["50Rnd_556x45_Velko_reload_tracer_green_lxWS", "50Rnd_556x45_Velko_reload_tracer_green_lxWS", "50Rnd_556x45_Velko_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS", "", "acc_flashlight", "", ["50Rnd_556x45_Velko_reload_tracer_green_lxWS", "50Rnd_556x45_Velko_reload_tracer_green_lxWS", "50Rnd_556x45_Velko_tracer_green_lxWS"], [], ""]
    ];
    _marksmanRifles = [
        ["arifle_SLR_lxWS", "", "", "optic_MRCO", ["20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_reload_tracer_green_lxWS"], [], ""],
        ["arifle_SLR_lxWS", "", "", "optic_MRCO", ["20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_reload_tracer_green_lxWS"], [], ""]
    ];
};

_militiaLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SMG_05_F","","acc_flashlight","",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
["srifle_GM6_F", "", "", "optic_Arco", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_F", "", "", "optic_Arco_blk_F", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", ["hgun_Rook40_F"]];

if (_hasCSLA) then {
    _marksmanRifles append [
        ["CSLA_OP63","","","CSLA_PSO1_OP63",["CSLA_OP63_10rnd_7_62PZ59","CSLA_OP63_10rnd_7_62PZ59","CSLA_OP63_10rnd_7_62Odst59"],[],""]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["CSLA_OP63","","","CSLA_PSO1_OP63",["CSLA_OP63_10rnd_7_62PZ59","CSLA_OP63_10rnd_7_62PZ59","CSLA_OP63_10rnd_7_62Odst59"],[],""],
        ["CSLA_HuntingRifle","","","",["CSLA_10Rnd_762hunt","CSLA_10Rnd_762hunt","CSLA_10Rnd_762hunt"],[],""]
    ];
    _rifles append [
        ["US85_FAL","","","",["US85_20Rnd_762x51","US85_20Rnd_762x51","US85_20Rnd_762M61"],[],"US85_FALbpd"],
        ["US85_FALf","","","",["US85_20Rnd_762x51","US85_20Rnd_762x51","US85_20Rnd_762M61"],[],"US85_FALbpd"]
    ];
};

if (_hasGM) then {
    _marksmanRifles append [
        ["gm_svd_wud","","","gm_pso1_dovetail_blk",["gm_10Rnd_762x54mmR_API_7bz3_svd_blk","gm_10Rnd_762x54mmR_API_7bz3_svd_blk","gm_10Rnd_762x54mmR_API_7bz3_svd_blk"],[],""]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["gm_svd_wud","","","gm_pso6x36_1_dovetail_gry",["gm_10Rnd_762x54mmR_API_7bz3_svd_blk","gm_10Rnd_762x54mmR_API_7bz3_svd_blk","gm_10Rnd_762x54mmR_API_7bz3_svd_blk"],[],""]
    ];
    _mgs append [
        ["gm_rpkn_wud","","","gm_zfk4x25_blk",["gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk","gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk","gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk"],[],""],
        ["gm_rpk74n_wud","","","gm_pka_dovetail_blk",["gm_45Rnd_545x39mm_B_7N6_ak74_prp","gm_45Rnd_545x39mm_B_7N6_ak74_prp","gm_45Rnd_545x39mm_B_7N6_ak74_prp"],[],""],
        ["gm_rpk_wud","","","gm_zvn64_rpk",["gm_75Rnd_762x39mm_B_57N231_ak47_blk","gm_75Rnd_762x39mm_B_57N231_ak47_blk","gm_75Rnd_762x39mm_B_57N231_ak47_blk"],[],""],
        ["gm_hmgpkm_prp","","","",["gm_100Rnd_762x54mm_B_T_t46_pk_grn","gm_100Rnd_762x54mm_B_T_t46_pk_grn","gm_100Rnd_762x54mm_B_T_t46_pk_grn"],[],""]
    ];
    _rifles append [
        ["gm_akmsn_wud","","","gm_pka_dovetail_gry",["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"],[],""],
        ["gm_ak74n_wud","","","gm_zvn64_ak",["gm_30Rnd_545x39mm_B_7N6_ak74_org","gm_30Rnd_545x39mm_B_7N6_ak74_org","gm_30Rnd_545x39mm_B_7N6_ak74_org"],[],""],
        ["gm_akml_wud","","","gm_zvn64_ak",["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"],[],""],
        ["gm_akmn_wud","","","gm_zvn64_ak",["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"],[],""],
        ["gm_akms_wud","","","gm_zvn64_ak",["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"],[],""],
        ["gm_akmsl_wud","","","gm_zvn64_ak",["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"],[],""]
    ];
    _grenadeLaunchers append [
        ["gm_akm_pallad_wud","","","gm_zvn64_ak",["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"],""]
    ];
    _carbines append [
        ["gm_mpikms72k_brn","","","",["gm_30Rnd_762x39mm_B_57N231_mpikm_blk","gm_30Rnd_762x39mm_B_57N231_mpikm_blk","gm_30Rnd_762x39mm_B_57N231_mpikm_blk"],[],""],
        ["gm_mpiaks74nk_brn","","","",["gm_30Rnd_545x39mm_B_7N6_ak74_org","gm_30Rnd_545x39mm_B_7N6_ak74_org","gm_30Rnd_545x39mm_B_7N6_ak74_org"],[],""]
    ];
    
};

if (_hasRF) then {
    (_militiaLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
    _marksmanRifles append [
        ["srifle_h6_oli_rf", "", "", "optic_MRCO",["10Rnd_556x45_AP_Stanag_RF","10Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF"], [], ""],
        ["srifle_DMR_01_black_RF","","","optic_VRCO_RF",["10Rnd_762x54_Mag","10Rnd_762x54_Mag","10Rnd_762x54_Mag"],[],""]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["srifle_h6_oli_rf", "", "", "optic_DMS",["10Rnd_556x45_AP_Stanag_RF","10Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF"], [], ""],
        ["srifle_DMR_01_black_RF","","","optic_DMS",["10Rnd_762x54_Mag","10Rnd_762x54_Mag","10Rnd_762x54_Mag"],[],""]
    ];
};

_militiaLoadoutData set ["rifles", _rifles];
_militiaLoadoutData set ["carbines", _carbines];
_militiaLoadoutData set ["grenadeLaunchers",_grenadeLaunchers];
_militiaLoadoutData set ["machineGuns", _mgs];
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["U_O_CombatUniform_ocamo"]];
_crewLoadoutData set ["vests", ["V_HarnessO_brn"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_O"]];

if (_hasTanks) then {
    (_crewLoadoutData get "helmets") pushBack "H_Tank_black_F";
};

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_O_PilotCoveralls","U_O_PilotCoveralls"]];
_pilotLoadoutData set ["vests", ["V_BandollierB_khk"]];
_pilotLoadoutData set ["helmets", ["H_CrewHelmetHeli_O", "H_PilotHelmetHeli_O"]];

if (_hasRF) then {
    (_sfLoadoutData get "slRifles") append [
        ["arifle_ash12_wood_RF","suppressor_127x55_small_wood_RF","acc_pointer_IR","optic_Arco_ghex_F",["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], [], ""],
        ["arifle_ash12_wood_RF","suppressor_127x55_small_wood_RF","acc_pointer_IR","optic_Arco_ghex_F",["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], [], ""]
    ];
    (_sfLoadoutData get "rifles") append [["arifle_ash12_wood_RF","suppressor_127x55_small_wood_RF","acc_pointer_IR","optic_Holosight_lush_F",["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], [], ""]];
    (_sfLoadoutData get "grenadeLaunchers") append [["arifle_ash12_GL_wood_RF", "suppressor_127x55_small_wood_RF", "acc_pointer_IR", "optic_Holosight_lush_F", ["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell","1Rnd_RC40_HE_shell_RF","1Rnd_RC40_SmokeWhite_shell_RF","1Rnd_RC40_shell_RF"], ""]];
    (_sfLoadoutData get "marksmanRifles") append [
        ["arifle_ash12_LR_wood_RF","suppressor_127x55_big_wood_RF","acc_pointer_IR","optic_Arco_ghex_F",["10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF"], [], "bipod_02_F_hex"],
        ["arifle_ash12_LR_wood_RF","suppressor_127x55_big_wood_RF","acc_pointer_IR","optic_DMS",["10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF"], [], "bipod_02_F_hex"],
        ["arifle_ash12_LR_wood_RF","suppressor_127x55_big_wood_RF","acc_pointer_IR","optic_SOS",["10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF"], [], "bipod_02_F_hex"]  
    ];
    (_eliteLoadoutData get "slRifles") append [
        ["arifle_ash12_wood_RF","","acc_pointer_IR","optic_Arco_ghex_F",["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], [], ""],
        ["arifle_ash12_wood_RF","","acc_pointer_IR","optic_Arco_ghex_F",["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], [], ""]
    ];
    (_eliteLoadoutData get "rifles") append [["arifle_ash12_wood_RF","","acc_pointer_IR","optic_Holosight_lush_F",["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], [], ""]];
    (_eliteLoadoutData get "grenadeLaunchers") append [["arifle_ash12_GL_wood_RF", "", "acc_pointer_IR", "optic_Holosight_lush_F", ["20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF","20Rnd_127x55_Mag_wood_RF"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell","1Rnd_RC40_HE_shell_RF","1Rnd_RC40_SmokeWhite_shell_RF","1Rnd_RC40_shell_RF"], ""]];
    (_eliteLoadoutData get "marksmanRifles") append [
        ["arifle_ash12_LR_wood_RF","","acc_pointer_IR","optic_Arco_ghex_F",["10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF"], [], "bipod_02_F_hex"],
        ["arifle_ash12_LR_wood_RF","","acc_pointer_IR","optic_DMS",["10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF"], [], "bipod_02_F_hex"],
        ["arifle_ash12_LR_wood_RF","","acc_pointer_IR","optic_SOS",["10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF","10Rnd_127x55_Mag_wood_RF"], [], "bipod_02_F_hex"]  
    ];
    (_policeLoadoutData get "sidearms") append ["hgun_Glock19_RF"];
};

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
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
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

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
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

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
    ["vests"] call _fnc_setVest;
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
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

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
    ["vests"] call _fnc_setVest;
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
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
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
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines", "marksmanRifles"]] call _fnc_setPrimary;
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
