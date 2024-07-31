private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "NATO"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "NATO"]] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_NATO"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _basic = ["B_T_Quadbike_01_F"];
private _unarmedVehicles = ["B_T_MRAP_01_F"];
private _armedVehicles = ["B_T_MRAP_01_gmg_F", "B_T_MRAP_01_hmg_F"];
private _Trucks = ["B_T_Truck_01_covered_F", "B_T_Truck_01_transport_F"];
private _cargoTrucks = ["B_T_Truck_01_flatbed_F", "B_T_Truck_01_cargo_F","B_T_UGV_01_olive_F"];
private _ammoTrucks = ["B_T_Truck_01_ammo_F"];
private _repairTrucks = ["B_T_Truck_01_Repair_F","B_T_APC_Tracked_01_CRV_F"];
private _fuelTrucks = ["B_T_Truck_01_fuel_F"];
private _medicalTrucks = ["B_T_Truck_01_medical_F"];
private _lightAPCs = ["B_T_APC_Wheeled_01_cannon_F"];
private _APCs = ["B_T_APC_Wheeled_01_cannon_F"];           // CRV has no cargo: "B_APC_Tracked_01_CRV_F"
private _IFVs = ["B_T_APC_Tracked_01_rcws_F"];

private _airborneVehicles = ["B_T_APC_Wheeled_01_cannon_F","B_T_UGV_01_olive_F"];
private _lightTanks = ["B_T_UGV_01_olive_F"];
private _tanks = ["B_T_MBT_01_cannon_F", "B_T_MBT_01_TUSK_F"];
private _aa = ["B_T_APC_Tracked_01_AA_F"];

private _transportBoat = ["B_T_Boat_Transport_01_F"];
["vehiclesGunBoats", ["B_T_Boat_Armed_01_minigun_F","a3a_Boat_Armed_01_hmg_blufor_F"]] call _fnc_saveToTemplate;

private _planesCAS = ["B_Plane_CAS_01_dynamicLoadout_F","B_UAV_02_dynamicLoadout_F"];
private _planesAA = ["B_Plane_CAS_01_dynamicLoadout_F","B_UAV_02_dynamicLoadout_F"];
["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["B_T_VTOL_01_armed_F"]] call _fnc_saveToTemplate;
private _transportHelicopters = ["B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_tropic_F"];

if (_hasHelicopters) then {
    _transportHelicopters append ["B_Heli_Transport_03_F", "B_Heli_Transport_03_unarmed_F"];
};
private _helisLight = ["B_Heli_Light_01_F"];
private _helisLightAttack = ["B_Heli_Light_01_dynamicLoadout_F"];
private _helisAttack = ["B_Heli_Attack_01_dynamicLoadout_F"];

private _artillery = ["B_T_MBT_01_arty_F","B_T_MBT_01_mlrs_F"];

["magazines", createHashMapFromArray [
    ["B_T_MBT_01_arty_F",["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_mine"]],
    ["B_T_MBT_01_mlrs_F",["12Rnd_230mm_rockets", "12Rnd_230mm_rockets_cluster"]],
    ["APC_Wheeled_01_mortar_base_lxWS",["64Rnd_60mm_Mo_guided_lxWS"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["B_T_UAV_03_dynamicLoadout_F", "B_UAV_05_F", "B_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
private _uavsPortable = if (_hasWs) then {["B_UAV_02_lxWS", "B_UAV_01_F"]} else {["B_UAV_01_F"]};

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
private _militiaLightArmed = ["B_G_Offroad_01_armed_F"];
private _militiaTrucks = ["B_T_Truck_01_transport_F", "B_T_Truck_01_covered_F"];
private _militiaCars = ["B_G_Offroad_01_F"];
private _militiaAPCs = [];

private _policeVehs = if (_hasContact) then {
    ["B_GEN_Offroad_01_covered_F", "B_GEN_Offroad_01_comms_F", "B_GEN_Offroad_01_gen_F"]
} else {
    ["B_GEN_Offroad_01_gen_F"]
};
if (_hasLawsOfWar) then {
    _policeVehs append ["B_GEN_Van_02_vehicle_F","B_GEN_Van_02_transport_F"];
};

private _staticMG = ["B_G_HMG_02_high_F", "B_HMG_01_high_F"];
private _staticAT = ["B_T_Static_AT_F","B_GMG_01_high_F"];
["staticAA", ["B_T_Static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["B_T_Mortar_01_F"]] call _fnc_saveToTemplate;
private _howitzers = [];

private _radar = [];
private _SAM = [];

if (_hasJets) then {
	_planesCAS append ["B_Plane_Fighter_01_F","B_UAV_05_F"];
	_planesAA append ["B_Plane_Fighter_01_Stealth_F","B_UAV_05_F"];
	_radar pushback "B_Radar_System_01_F";
	_SAM append ["B_SAM_System_03_F","B_SAM_System_02_F","B_SAM_System_01_F","B_AAA_System_01_F"];
	_howitzers pushBack "B_Ship_Gun_01_F";
};

["howitzerMagazineHE", "magazine_ShipCannon_120mm_HE_shells_x32","magazine_ShipCannon_120mm_HE_cluster_shells_x2"] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;


["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

if (_hasApex) then {
    _unarmedVehicles append ["B_T_LSV_01_unarmed_F", "B_CTRG_LSV_01_light_F"];
    _armedVehicles append ["B_T_LSV_01_AT_F", "B_T_LSV_01_armed_F"];
    _militiaCars pushBack "I_C_Offroad_02_unarmed_F";
    _militiaLightArmed pushBack "a3a_Offroad_02_LMG_black_F";
    _transportBoat pushBack "I_C_Boat_Transport_02_F";
};

if (_hasTanks) then {
    _lightTanks = ["B_T_AFV_Wheeled_01_cannon_F", "B_T_AFV_Wheeled_01_up_cannon_F"];
};

//If Western Sahara DLC
if (_hasWs) then {
    _artillery pushBack "B_T_APC_Wheeled_01_mortar_lxWS";
    _APCs pushBack "B_T_APC_Wheeled_01_atgm_lxWS";
    _lightAPCs = ["B_T_APC_Wheeled_01_command_lxWS"];
    _airborneVehicles pushBack "B_T_APC_Wheeled_01_command_lxWS";
    _militiaAPCs pushBack "B_T_APC_Wheeled_01_command_lxWS";
};

if (_hasRF) then {
    _unarmedVehicles append ["B_T_Pickup_rf","B_T_Pickup_Comms_rf"];
    _armedVehicles pushBack "B_T_Pickup_mmg_rf";
    _militiaLightArmed pushBack "B_T_Pickup_hmg_rf";
    _militiaCars append ["B_T_Pickup_rf","B_T_Pickup_Comms_rf"];
    _aa pushBack "B_T_Pickup_aat_rf";
    _uavsPortable pushBack "B_UAV_RC40_SENSOR_RF";
    _howitzers pushBack "B_T_TwinMortar_RF";
    _policeVehs append ["a3a_police_Pickup_rf", "B_GEN_Pickup_covered_rf", "a3a_police_Pickup_comms_rf"];
    _helisLight pushBack "B_Heli_light_03_unarmed_RF";
    _transportHelicopters append ["I_Heli_EC_01A_military_RF","B_Heli_EC_04_military_RF"];
    _helisLightAttack append ["a3a_Heli_light_03_dynamicLoadout_RF","a3a_black_Heli_light_03_dynamicLoadout_RF","B_Heli_EC_03_RF"];
    _helisAttack pushBack "a3a_black_Heli_EC_02_RF";
};

if (_hasGM) then {
    _aa pushBack "gm_ge_army_gepard1a1_noinsignia";
    _basic append ["gm_ge_army_k125","gm_dk_army_bibera0_noinsignia"];
    _lightTanks append ["gm_dk_army_Leopard1a3_noinsignia","gm_ge_army_Leopard1a1_noinsignia","gm_ge_army_Leopard1a1a2_noinsignia","gm_ge_army_Leopard1a3a1_noinsignia","gm_ge_army_Leopard1a5_noinsignia"];
    _militiaAPCs append ["gm_ge_army_fuchsa0_reconnaissance_noinsignia","gm_ge_army_fuchsa0_engineer_noinsignia","gm_ge_army_fuchsa0_command_noinsignia","gm_ge_army_luchsa2_noinsignia","gm_ge_army_luchsa1_noinsignia","gm_dk_army_m113a1dk_apc_noinsignia","gm_dk_army_m113a1dk_command_noinsignia","gm_dk_army_m113a1dk_engineer_noinsignia","gm_dk_army_m113a2dk_noinsignia","gm_ge_army_m113a1g_apc_noinsignia","gm_ge_army_m113a1g_apc_milan_noinsignia","gm_ge_army_m113a1g_command_noinsignia"];
    _IFVs append ["gm_dk_army_m113a2dk_noinsignia","gm_ge_army_marder1a1plus_noinsignia","gm_ge_army_marder1a1a_noinsignia","gm_ge_army_marder1a2_noinsignia"];
    _militiaTrucks append ["gm_pl_army_ural4320_cargo","gm_ge_army_u1300l_cargo"];
    _militiaCars append ["gm_ge_army_iltis_cargo","gm_pl_army_uaz469_cargo","gm_dk_army_typ253_cargo","gm_dk_army_typ247_cargo","gm_dk_army_typ1200_cargo"];
    _militiaLightArmed append ["gm_ge_army_iltis_milan","gm_ge_army_iltis_mg3"];
    _policeVehs append ["gm_gc_pol_p601","gm_ge_pol_typ1200","gm_ge_pol_typ253","gm_ge_pol_w123"];
    _airborneVehicles pushBack "gm_dk_army_m113a2dk_noinsignia";
    _Trucks append ["gm_ge_army_u1300l_cargo","gm_ge_army_kat1_451_cargo"];
    _cargoTrucks append ["gm_dk_army_u1300l_container","gm_ge_army_kat1_454_cargo","gm_ge_army_kat1_451_container","gm_ge_army_kat1_452_container"];
    _ammoTrucks append ["gm_ge_army_kat1_451_reammo","gm_ge_army_kat1_454_reammo"];
    _repairTrucks append ["gm_ge_army_u1300l_repair","gm_dk_army_bpz2a0_noinsignia"];
    _fuelTrucks pushBack "gm_ge_army_kat1_451_refuel";
    _medicalTrucks append ["gm_ge_army_m113a1g_medic_noinsignia","gm_ge_army_u1300l_medic","gm_dk_army_m113a1dk_medic_noinsignia"];
    _helisLight append ["gm_ge_army_bo105m_vbh_noinsignia","gm_ge_army_bo105p1m_vbh_noinsignia","gm_ge_army_bo105p1m_vbh_swooper_noinsignia"];
    _transportHelicopters append ["gm_ge_army_ch53g_noinsignia","gm_ge_army_ch53gs_noinsignia"];
    _helisAttack append ["gm_ge_army_bo105p_pah1a1_noinsignia","gm_ge_army_bo105p_pah1_noinsignia"];
};

if (_hasCSLA) then {
    _staticMG pushBack "US85_M2h";
    _staticAT pushBack "US85_TOW_Stat";
    _basic pushBack "US85_M1030";
    _helisLightAttack pushback "US85_MH60FFAR";
    _helisAttack pushBack "US85_AH1F";
    _transportHelicopters append ["US85_MH60M134","US85_UH60","US85_UH60M240"];
    _lightAPCs append ["US85_M113","AFMC_M113A2ext"];
    _militiaAPCs append ["US85_M113","AFMC_M113A2ext","US85_LAV25"];
    _APCs pushBack "US85_LAV25";
    _militiaCars append ["US85_M1008c","US85_M1008","US85_M1025_ua","US85_M1043_ua"];
    _militiaLightArmed append ["US85_M1025_M2","US85_M1025_M60","US85_M1043_M2","US85_M1043_M60","US85_M998SFGT"];
    _militiaTrucks append ["US85_M923a1c","US85_M923o","US85_M923c","US85_M923a1o","US85_M923a1cm2","US85_M923a1om2"];
    _airborneVehicles append ["US85_LAV25","US85_M113","AFMC_M113A2ext"];
    _aa pushback "US85_M163";
    _tanks append ["US85_M1IP","US85_M1A1"];
    _ammoTrucks append ["US85_M923a","US85_M923a1_a"];
    _repairTrucks append ["US85_M113_DTP","US85_M923r"];
    _fuelTrucks append ["US85_M923f","US85_M923a1_f"];
    _medicalTrucks pushBack "US85_M113_AMB";
    _policeVehs append ["CSLA_CIV_ADA1600VB","CSLA_CIV_Sarka1200PO","CSLA_CIV_Sarka1200VB","CSLA_AZU_VB"];
};

["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", _militiaTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesAA", _aa] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesTrucks", _Trucks] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;
["vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;
["vehiclesBasic", _basic] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate;
["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _helisLightAttack] call _fnc_saveToTemplate;
["vehiclesHelisLight", _helisLight] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _helisAttack] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesArtillery", _artillery] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesAPCs", _APCs] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _armedVehicles] call _fnc_saveToTemplate;
["vehiclesLightTanks",  _lightTanks] call _fnc_saveToTemplate;
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;

#include "Vanilla_Vehicle_Attributes.sqf"

["animations", [
    ["a3a_APC_Wheeled_03_cannon_blufor_F",["showCamonetHull",0.3,"showBags",0.3,"showBags2",0.3,"showTools",0.3,"showSLATHull",0.3]],
    ["B_Heli_light_03_unarmed_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0,"hide_tread",0.3]],
    ["a3a_green_Heli_light_03_unarmed_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0.3,"hide_tread",0.3]],
    ["a3a_Heli_light_03_dynamicLoadout_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0.3]],
    ["a3a_black_Heli_light_03_dynamicLoadout_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0.3]],
    ["a3a_Heli_EC_02_RF", ["hide_antenna",0.3,"hide_ir_small",0.3,"hide_ir_large",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["I_Heli_EC_01A_military_RF", ["hide_winch",0.3,"hide_mirror",0.3,"hide_antenna",0.3,"hide_ir_small",0.3,"hide_ir_large",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["B_Heli_EC_04_military_RF", ["hide_ir_large",0.3,"hide_radar",0.3,"hide_searchlamp",0.3,"hide_winch",0.3,"hide_float_bags",0.3,"hide_antenna",0.3,"hide_refuelprobe",0.3,"hide_sensor",0.3,"hide_ir_small",0.3,"hide_fueltanks",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["B_Heli_EC_03_RF", ["hide_radar",0.3,"hide_float_bags",0.3,"hide_antenna",0.3,"hide_refuelprobe",0.3,"hide_sensor",0.3,"hide_ir_small",0.3,"hide_ir_large",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["B_T_Pickup_aat_rf", ["hide_frame",0.3,"hide_frame_full",0.3,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack",0.3,"hide_rack_spotlights",0.3,"hide_sidesteps",0.3]],
    ["B_T_Pickup_rf", ["hide_bullbar",0.3,"hide_fuel_tank",1,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_cover",1,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0.3,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack",0.3,"hide_rack_spotlights",0.3,"hide_frame",0.3,"hide_sidesteps",0.3]],
    ["B_T_Pickup_Comms_rf", ["hide_rack",0.3,"hide_rack_antenna",0.3,"hide_frame",0.3,"hide_frame_full",0.3,"hide_frame_full_panel",0.3,"hide_box",0.3,"hide_box_door",0.3,"hide_trunk_door",0.3,"trunk_door_open",0,"box_door_open",0,"hide_police",1,"hide_Services",1,"BeaconsServicesStart",0,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack_spotlights",0.3,"hide_sidesteps",0.3]],
    ["B_T_Pickup_mmg_rf", ["hide_trunk_cover",1,"hide_frame_full",0.3,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_frame",0.3,"hide_sidesteps",0.3]],
    ["B_T_TwinMortar_RF", ["hide_door_l",0.3,"hide_door_r",0.3]],
    ["B_T_MBT_01_cannon_F", ["showCamonetTurret", 0.3, "showCamonetHull", 0.3]],
    ["B_T_MBT_01_TUSK_F", ["showCamonetTurret", 0.3, "showCamonetHull", 0.3]],
    ["B_T_AFV_Wheeled_01_up_cannon_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3]],
    ["B_T_AFV_Wheeled_01_cannon_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3]],
    ["B_T_APC_Tracked_01_rcws_F", ["showCamonetHull",0.3]],
    ["B_LSV_01_AT_F", ["HideDoor1",0.5,"HideDoor2",0.5,"HideDoor3",0.5,"HideDoor4",0.5]],
    ["B_LSV_01_unarmed_F", ["HideDoor1",0.5,"HideDoor2",0.5,"HideDoor3",0.5,"HideDoor4",0.5]],
    ["B_LSV_01_AT_F", ["HideDoor1",0.5,"HideDoor2",0.5,"HideDoor3",0.5,"HideDoor4",0.5]],
    ["B_CTRG_LSV_01_light_F", ["HideDoor1",0.5,"HideDoor2",0.5,"HideDoor3",0.5,"HideDoor4",0.5]],
    ["I_C_Offroad_02_unarmed_F", ["hideLeftDoor",0.3,"hideRightDoor",0.3,"hideRearDoor",0.3,"hideBullbar",0.3,"hideFenders",0.3,"hideHeadSupportRear",0.3,"hideHeadSupportFront",0.3,"hideRollcage",0.3,"hideSeatsRear",0,"hideSpareWheel",0.3]],
    ["a3a_Offroad_02_LMG_black_F", ["hideLeftDoor",0.3,"hideRightDoor",0.3,"hideRearDoor",0.3,"hideFenders",0.3,"hideHeadSupportFront",0.3,"hideSpareWheel",0.3]],
    ["B_T_APC_Wheeled_01_command_lxWS", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3,"showSLATTurret",0.3]],
    ["B_T_APC_Wheeled_01_atgm_lxWS", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3,"showSLATTurret",0.3]],
    ["B_T_APC_Wheeled_01_mortar_lxWS",["showBags",0.3,"showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3,"showSLATTurret",0.3]],
    ["B_T_APC_Wheeled_01_cannon_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3,"showSLATTurret",0.3]],
    ["B_T_APC_Tracked_01_AA_F", ["showCamonetHull",0.3,"showCamonetTurret",0.3,"showSLATHull",0.3]],
    ["gm_dk_army_m113a1dk_command_noinsignia", ["antennaMast_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"generator_01_unhide",0.3,"storageBox_01_unhide",0.3,"IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_m113a2dk_noinsignia", ["camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3]],
    ["gm_dk_army_Leopard1a3_noinsignia", ["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gm_dk_army_m113a1dk_medic_noinsignia", ["IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_m113a1dk_apc_noinsignia",["MachineGunTurret_01_addonarmor_01_unhide",0.3,"MachineGunTurret_01_addonarmor_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"ammo_01_unhide",0.3,"ammo_02_unhide",0.3,"ammo_03_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_m113a1dk_engineer_noinsignia", ["ladder_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"Tarp_01_unhide",0.3,"ammo_01_unhide",0,"ammo_02_unhide",0.3,"ammo_03_unhide",0.3,"MachineGunTurret_01_addonarmor_01_unhide",0.3,"MachineGunTurret_01_addonarmor_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_m109_noinsignia",["CamoNet_01_unhide",0.3,"ammo_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_dk_army_bpz2a0_noinsignia", ["beacon_01_org_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_bibera0_noinsignia", ["beacon_01_org_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_Leopard1a3_noinsignia",["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gm_ge_army_gepard1a1_noinsignia",	["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"beacon_01_org_unhide",0,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_ge_army_m113a1g_apc_noinsignia", ["IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"CamoNet_02_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_m113a1g_apc_milan_noinsignia", ["IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"CamoNet_02_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_m113a1g_command_noinsignia",["antennaMast_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"generator_01_unhide",0.3,"storageBox_01_unhide",0.3,"IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_m113a1g_medic_noinsignia",["IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"CamoNet_02_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_luchsa1_noinsignia",["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"radio_03_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_ge_army_luchsa2_noinsignia",["radio_03_unhide",0.3,"SignsExtraWide_unhide",0.3,"TurretBox_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_ge_army_marder1a1plus_noinsignia",["beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"CamoNet_01_unhide",0.3,"supply_01_unhide",0.3,"supply_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_ge_army_marder1a1a_noinsignia", ["beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"CamoNet_01_unhide",0.3,"supply_01_unhide",0.3,"supply_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_ge_army_marder1a2_noinsignia", ["beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"CamoNet_01_unhide",0.3,"supply_01_unhide",0.3,"supply_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gm_ge_army_fuchsa0_command_noinsignia", ["radio_04_unhide",0.3,"antennamast_01_elev_trigger",0.3,"beacon_01_org_unhide",0.3,"beacon_01_blu_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_rack_unhide",0.3,"StowingBox_01_unhide",0.3,"SignsExtraWide_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_fuchsa0_engineer_noinsignia", ["ringbuoy_01_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"CamoNet_01_unhide",0.3,"CamoNet_02_rack_unhide",0.3,"SignsExtraWide_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_fuchsa0_reconnaissance_noinsignia", ["beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"CamoNet_01_unhide",0.3,"CamoNet_02_rack_unhide",0.3,"StowingBox_01_unhide",0.3,"SignsExtraWide_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_ge_army_ch53gs_noinsignia", ["fueltank_1_1_unhide",0.3]],
    ["gm_ge_army_bo105m_vbh_noinsignia", ["door_1_1_unhide",0.3,"door_1_2_unhide",0.3,"door_2_1_unhide",0.3,"door_2_2_unhide",0.3]],
    ["gm_ge_army_bo105p1m_vbh_noinsignia", ["door_1_1_unhide",0.3,"door_1_2_unhide",0.3,"door_2_1_unhide",0.3,"door_2_2_unhide",0.3]],
    ["gm_ge_army_bo105p1m_vbh_swooper_noinsignia", ["swooperRopes_unhide",0.3,"door_2_1_unhide",0.3,"door_2_2_unhide",0.3,"door_1_1_unhide",0.3,"door_1_2_unhide",0.3]],
    ["gm_ge_army_Leopard1a1_noinsignia", ["CamoNet_01_unhide",0.3,"CamoNet_04_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"SpareWheel_03_unhide",0.3,"SpareWheel_04_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gm_ge_army_Leopard1a1a2_noinsignia", ["CamoNet_01_unhide",0.3,"CamoNet_04_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_05_unhide",0.3,"CamoNet_03_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"SpareWheel_03_unhide",0.3,"SpareWheel_04_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gm_ge_army_Leopard1a3a1_noinsignia",["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gm_ge_army_Leopard1a5_noinsignia", ["CamoNet_01_unhide",0.3,"CamoNet_04_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_05_unhide",0.3,"CamoNet_03_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"SpareWheel_03_unhide",0.3,"SpareWheel_04_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["US85_M1A1", ["ADD_smallAmmobox",0.3,"ADD_medAmmoBox",0.3,"ADD_topStuff",0.3,"ADD_cardBoardBox",0.3,"ADD_trackLink",0.3,"ADD_spareWheel",0.3,"ADD_frontTowRings",0.3,"ADD_rearTowRings",0.3,"ADD_frontTowBar",0.3,"ADD_rearTowBar",0.3,"ADD_leftTowCable",0.3,"ADD_rightTowCable",0.3,"ADD_alice",0.3,"ADD_fuelCan",0.3,"ADD_camoNet",0.3]],
    ["US85_M1IP", ["ADD_topStuff",0.3,"ADD_cardBoardBox",0.3,"ADD_trackLink",0.3,"ADD_spareWheel",0.3,"ADD_frontTowRings",0.3,"ADD_rearTowRings",0.3,"ADD_frontTowBar",0.3,"ADD_rearTowBar",0.3,"ADD_leftTowCable",0.3,"ADD_rightTowCable",0.3,"ADD_alice",0.3,"ADD_fuelCan",0.3,"ADD_camoNet",0.3]],
    ["AFMC_M113A2ext",["AddBox",0.3,"AddBagsSide",0.3,"AddInt1",0.3,"AddTools",0.3,"AddSpareWheel",0.3,"AddKanister",0.3,"AddTop1",0.3,"AddTop2",0.3,"AddCamonet",0.3,"AddBarbwire",0.3,"AddMetalRope",0.3]],
    ["US85_M163",["AddKanister",0.3,"AddTop1",0.3,"AddTop2",0.3,"AddCamonet",0.3,"AddMetalRope",0.3,"AddTools",0.3,"AddTurret1",0.3]],
    ["US85_LAV25", ["addKanister_body",0.3,"addKanister_turret",0.3,"addBackpacks_turret",0.3,"addAmmo25mm_turret",0.3,"addTools",0.3,"addCamonet",0.3,"addBarbwire",0.3,"addRope",0.3]],
    ["US85_M113_AMB",["AddBagsSide",0.3,"AddInt1",0.3,"AddTools",0.3,"AddKanister",0.3,"AddTop1",0.3,"AddTop2",0.3,"AddCamonet",0.3,"AddBarbwire",0.3,"AddMetalRope",0.3]],
    ["US85_M113_DTP",["AddBagsSide",0.3,"AddInt1",0.3,"AddInt2",0.3,"AddTop2",0.3,"AddSpareWheel",0.3,"AddKanister",0.3,"AddTop1",0.3,"AddCamonet",0.3,"AddBarbwire",0.3,"AddMetalRope",0.3]],
    ["US85_M113", ["AddBox",0.3,"AddBagsSide",0.3,"AddInt1",0.3,"AddTools",0.3,"AddKanister",0.3,"AddTop1",0.3,"AddTop2",0.3,"AddCamonet",0.3,"AddBarbwire",0.3,"AddMetalRope",0.3]],
    ["US85_M1008c", ["addCanvas",0.3,"addCanvasFrame",0.3,"addBenches",0.3,"addRearFrame",0.3,"addFrontFrame",0.3]],
    ["US85_M1008", ["addCanvas",0.3,"addCanvasFrame",0.3,"addBenches",0.3,"addRearFrame",0.3,"addFrontFrame",0.3]],
    ["US85_M1008_S250", ["addFrontFrame",0.5]],
    ["US85_M1025_ua", ["AddBarbwire",0.3,"AddSparewheel",0.3,"AddCamonet",0.3]],
    ["US85_M1025_M2", ["AddBarbwire",0.3,"AddSparewheel",0.3,"AddCamonet",0.3]],
    ["US85_M1025_M60", ["AddBarbwire",0.3,"AddSparewheel",0.3,"AddCamonet",0.3,"AddSandBags",0.3]],
    ["US85_M1043_ua", ["AddBarbwire",0.3,"AddSparewheel",0.3,"AddCamonet",0.3]],
    ["US85_M1043_M2", ["AddBarbwire",0.3,"AddSparewheel",0.3,"AddCamonet",0.3]],
    ["US85_M1043_M60", ["AddBarbwire",0.3,"AddSparewheel",0.3,"AddCamonet",0.3,"AddSandBags",0.3]],
    ["US85_M923a",["ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_reammo",0.3,"ADD_side_benches",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3,"ADD_roof",0.3]],
    ["US85_M923cargo", ["ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_reammo",0,"ADD_repair",0,"ADD_side_benches",0.3,"ADD_explosive",0.3,"ADD_explosive_tailgate",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3,"ADD_roof",0.3]],
    ["US85_M923f",["ADD_spareWheel",0.3,"ADD_fuelcan",0.3,"ADD_roof",0.3]],
    ["US85_M923a1_r", ["ADD_repair",1,"ADD_tarpRoof",0.3,"ADD_roof",0.3,"ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_side_benches",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3]],
    ["US85_M923a1_s280", ["ADD_tarpRoof",0.3,"ADD_roof",0.3,"ADD_s280",0.3,"ADD_s280_ac",0.3,"ADD_s280_panel",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3]],
    ["US85_M923a1o", ["ADD_tarpRoof",0.3,"ADD_roof",0.3,"ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3]],
    ["US85_M923a1om2", ["ADD_ammoBox",0.3,"ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3]],
    ["US85_M923a1c", ["ADD_tarpRoof",0.3,"ADD_roof",0.3,"ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3]],
    ["US85_M923a1cm2", ["ADD_ammoBox",0.3,"ADD_tailgate",0.3,"ADD_canvas",0.3,"ADD_frame",0.3,"ADD_spareWheel",0.3,"ADD_fuelcan",0.3]],
    ["US85_M998SFGT",["AddBarbwire", 0.3,"AddBumper",0.3,"AddBackpacks",0.3,"AddRoofCover",0.3,"AddRearFrame",0.3]],
    ["US85_AH1F",["addAirIntakeCovers",0.3,"addASO_Tail",0.3]],
    ["US85_MH60M134", ["addWinch",0.5]],
    ["US85_MH60FFAR", ["addWinch",0.5]],
    ["US85_UH60", ["addESSS",0.5,"addWinch",0.5]],
    ["US85_UH60M240", ["addWinch",0.5]]
]] call _fnc_saveToTemplate;

["variants", [
    ["a3a_Heli_light_03_dynamicLoadout_RF", ["NAVY",0.5,"NAVY_CAMO",0.5,"OLIVE",0.5]],
    ["a3a_black_Heli_light_03_dynamicLoadout_RF", ["NAVY",0.5,"NAVY_CAMO",0.5,"OLIVE",0.5]],
    ["B_Heli_light_03_unarmed_RF", ["NAVY",0.5,"NAVY_CAMO",0.5,"OLIVE",0.5,"Black",0.5]],
    ["I_Heli_EC_01A_military_RF",["CAMO_SWISS",0.5,"MARINE",0.5,"OLIVE",0.5,"AAF_Olive",0]],
    ["a3a_black_Heli_EC_02_RF",["CAMO_SWISS",0.5,"MARINE",0.5,"OLIVE",0.5]],
    ["B_Heli_EC_03_RF",["CAMO_SWISS",0.5,"MARINE",0.5,"OLIVE",0.5]],
    ["B_Heli_EC_04_military_RF",["CAMO_SWISS",0.5,"MARINE",0.5,"OLIVE",0.5]],
    ["B_UAV_05_F", ["DarkGreyCamo", 0.5, "DarkGrey", 0.5]], 
    ["B_AAA_System_01_F", ["Green", 1.0]],
    ["B_SAM_System_01_F", ["Green", 1.0]],
    ["B_SAM_System_02_F", ["Green", 1.0]],
    ["B_T_VTOL_01_infantry_F", ["Blue",0.4 , "Olive", 0.6]],
    ["B_Plane_Fighter_01_F", ["DarkGreyCamo", 0.4, "DarkGrey", 0.6]],
    ["B_Plane_Fighter_01_Stealth_F", ["DarkGreyCamo", 0.4, "DarkGrey", 0.6]],
    ["B_Radar_System_01_F", ["Olive", 1]],
    ["B_SAM_System_03_F", ["Olive", 1]],
    ["B_T_APC_Wheeled_01_command_lxWS", ["BLACK", 0.3, "Olive", 0.7]],
    ["B_T_APC_Wheeled_01_atgm_lxWS", ["BLACK", 0.3, "Olive", 0.7]],
    ["B_T_APC_Wheeled_01_mortar_lxWS", ["BLACK", 0.3, "Olive", 0.7]],
    ["B_Heli_Transport_03_F", ["Black", 0.5, "Green", 0.5]],
    ["B_Heli_Transport_03_unarmed_F", ["Black", 0.5, "Green", 0.5]],
    ["B_Heli_Transport_01_F", ["Green", 0.4, "Black", 0.2 , "Sand", 0]],
    ["B_T_LSV_01_AT_F", ["Black", 0.3, "Olive", 0.5, "Dazzle", 0.2]],
    ["B_T_LSV_01_unarmed_F", ["Black", 0.3, "Olive", 0.5, "Dazzle", 0.2]],
    ["B_T_LSV_01_AT_F", ["Black", 0.3, "Olive", 0.5, "Dazzle", 0.2]],
    ["a3a_Offroad_02_LMG_black_F", ["Black", 0.3, "Olive", 0.7]],
    ["I_C_Offroad_02_unarmed_F", ["Black", 0.3, "Olive", 0.7]],
    ["gm_ge_pol_w123", ["gm_darklblue",1]],
    ["gm_ge_pol_typ1200",["gm_saphireblue",1]],
    ["gm_gc_pol_p601", ["gm_kosmosblau",1]],
    ["gm_ge_pol_typ253",["gm_navyblue_damusowhite",1]],
    ["gm_dk_army_typ1200_cargo", ["gm_merdc_grn",1]],
    ["gm_dk_army_typ253_cargo", ["gm_merdc_grn",1]],
    ["gm_ge_army_iltis_milan", ["gm_merdc_grn",1]],
    ["gm_ge_army_iltis_mg3", ["gm_merdc_grn",1]],
    ["gm_dk_army_typ247_cargo", ["gm_merdc_grn",1]],
    ["gm_ge_army_iltis_cargo", ["gm_merdc_grn",1]],
    ["gm_ge_army_u1300l_medic", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_451_refuel", ["gm_merdc_grn",1]],
    ["gm_ge_army_u1300l_repair", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_451_reammo", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_454_reammo", ["gm_merdc_grn",1]],
    ["gm_dk_army_u1300l_container", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_454_cargo", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_451_container", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_452_container", ["gm_merdc_grn",1]],
    ["gm_ge_army_u1300l_cargo", ["gm_merdc_grn",1]],
    ["gm_ge_army_kat1_451_cargo", ["gm_merdc_grn",1]],
    ["gm_dk_army_bpz2a0_noinsignia", ["gm_merdc_grn",1]],
    ["gm_dk_army_Leopard1a3_noinsignia", ["gm_merdc_grn",1]],
    ["gm_dk_army_m113a2dk_noinsignia", ["gm_merdc_grn",1]],
    ["gm_ge_army_bo105p1m_vbh_swooper_noinsignia",["gm_ge_oli",0.8 ,"gm_ge_hornet",0.2]],
    ["gm_ge_army_bo105p1m_vbh_noinsignia", ["gm_ge_oli",0.8 ,"gm_ge_hornet",0.2]],
    ["gm_ge_army_bo105m_vbh_noinsignia", ["gm_ge_oli",0.8 ,"gm_ge_hornet",0.2]],
    ["gm_ge_army_ch53gs_noinsignia",["gm_ge_oli",0.8 ,"gm_ge_olo",0.2 ,"gm_ge_olu",0.2]],
    ["gm_ge_army_ch53g_noinsignia",["gm_ge_oli",0.8 ,"gm_ge_olo",0.2 ,"gm_ge_olu",0.2]],
    ["gm_ge_army_fuchsa0_reconnaissance_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_fuchsa0_engineer_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_fuchsa0_command_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_marder1a2_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_marder1a1a_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_marder1a1plus_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_luchsa2_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_luchsa1_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_m113a1g_medic_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_m113a1g_command_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_m113a1g_apc_milan_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_m113a1g_apc_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_gepard1a1_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_bibera0_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_bpz2a0_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_m109_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_m113a1dk_engineer_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_m113a1dk_command_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_m113a1dk_apc_noinsignia",["gm_merdc_grn",1]],
    ["gm_dk_army_m113a2dk_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_Leopard1a1_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_Leopard1a1a2_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_Leopard1a3a1_noinsignia",["gm_merdc_grn",1]],
    ["gm_ge_army_Leopard1a5_noinsignia",["gm_merdc_grn",1]],
    ["CSLA_AZU_VB", ["vb2",1]],
    ["US85_MH60FFAR",["BLACK", 0.3, "NATO",0.3]],
    ["US85_MH60M134",["BLACK", 0.3, "NATO",0.3]],
    ["US85_UH60",["BLACK", 0.3, "NATO",0.3]],
    ["US85_UH60M240",["BLACK", 0.3, "NATO",0.3]],
    ["US85_AH1F",["NATOds", 0.3, "NATO", 0.3, "NATOgs",0.3]],
    ["US85_M1A1", ["NATOg",1]],
    ["US85_M1IP", ["NATOg",1]],
    ["US85_M163",["NATOg",1]],
    ["US85_M113",["NATOg",1]],
    ["US85_M923a",["NATOg",1]],
    ["US85_M923a1_a",["NATOg",1]],
    ["US85_M923r",["NATOg",1]],
    ["US85_M923f",["NATOg",1]],
    ["US85_M923a1_f",["NATOg",1]],
    ["AFMC_M113A2ext",["NATOg",1]],
    ["US85_M113_AMB",["NATOg",1]],
    ["US85_M113_DTP",["NATOg",1]],
    ["US85_LAV25",["NATOg",1]],
    ["US85_M1008c",["NATOg",1]],
    ["US85_M1008",["NATOg",1]],
    ["US85_M1025_ua",["NATOg",1]],
    ["US85_M1043_ua",["NATOg",1]],
    ["US85_M1043_M60",["NATOg",1]],
    ["US85_M1043_M2",["NATOg",1]],
    ["US85_M1025_M2",["NATOg",1]],
    ["US85_M1025_M60",["NATOg",1]],
    ["US85_M998SFGT",["NATOg",1]],
    ["US85_M923o",["NATOg",1]],
    ["US85_M923c",["NATOg",1]],
    ["US85_M923a1o",["NATOg",1]],
    ["US85_M923a1om2",["NATOg",1]],
    ["US85_M923a1c",["NATOg",1]],
    ["US85_M923a1cm2",["NATOg",1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG","Male01ENGFRE","Male02ENGFRE"]] call _fnc_saveToTemplate;
private _faces = ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem",
"GreekHead_A3_05","GreekHead_A3_07","WhiteHead_01","WhiteHead_02",
"WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07",
"WhiteHead_08","WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
"WhiteHead_21","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31", "WhiteHead_32",
"TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_06","TanoanHead_A3_09",
"TanoanHead_A3_08","RussianHead_4","LivonianHead_5","LivonianHead_2","LivonianHead_9","RussianHead_1","LivonianHead_6","LivonianHead_3","RussianHead_3",
"LivonianHead_1","RussianHead_2","LivonianHead_10","LivonianHead_8","LivonianHead_4","LivonianHead_7","RussianHead_5","Sturrock"
];
if (_hasRF) then {
    _faces append ["Pilot1_Head_rf","Pilot2_Head_rf"];
};
if (_hasWs) then {
    _faces append ["lxWS_Journalist_Head","lxWS_Givens_Head"];
};
if (_hasGM) then {
    _faces append [
        "gm_WhiteHead_01_camo_01",
        "gm_WhiteHead_02_camo_01",
        "gm_WhiteHead_03_camo_01",
        "gm_WhiteHead_04_camo_01",
        "gm_WhiteHead_05_camo_01",
        "gm_WhiteHead_06_camo_01",
        "gm_WhiteHead_07_camo_01",
        "gm_WhiteHead_08_camo_01",
        "gm_WhiteHead_09_camo_01",
        "gm_WhiteHead_10_camo_01",
        "gm_WhiteHead_11_camo_01",
        "gm_WhiteHead_12_camo_01",
        "gm_WhiteHead_13_camo_01",
        "gm_WhiteHead_14_camo_01",
        "gm_WhiteHead_15_camo_01",
        "gm_WhiteHead_16_camo_01",
        "gm_WhiteHead_17_camo_01",
        "gm_WhiteHead_18_camo_01",
        "gm_WhiteHead_19_camo_01",
        "gm_WhiteHead_20_camo_01",
        "gm_WhiteHead_21_camo_01"
    ];
};
["sfVoices", ["Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB", "Male05ENGB"]] call _fnc_saveToTemplate;
["eliteVoices", ["Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB",
"Male05ENGB","Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG",
"Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG","Male01ENGFRE","Male02ENGFRE"]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;
["insignia", ["111thID", "", ""]] call _fnc_saveToTemplate;
["sfInsignia", ["CTRG"]] call _fnc_saveToTemplate;


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
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""],
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["launch_NLAW_F"]];
_loadoutData set ["missileATLaunchers", [
["launch_I_Titan_short_F", "", "acc_pointer_IR", "", ["Titan_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["launch_B_Titan_olive_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];
_loadoutData set ["sidearms", ["hgun_P07_khk_F", "hgun_P07_blk_F"]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
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
_loadoutData set ["NVGs", ["NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["U_I_L_Uniform_01_tshirt_olive_F"]];
_loadoutData set ["traitorVests", ["V_BandollierB_oli", "V_TacVest_oli"]];
_loadoutData set ["traitorHats", ["H_Cap_grn", "H_Cap_oli"]];

if (_hasArtOfWar) then {
	_loadoutData set ["officerUniforms", ["U_B_ParadeUniform_01_US_decorated_F","U_B_ParadeUniform_01_US_F"]];
	_loadoutData set ["officerVests", ["V_TacVest_oli"]];
	_loadoutData set ["officerHats", ["H_ParadeDressCap_01_US_F" ,"H_Beret_Colonel", "H_Beret_02"]];
} else {
	_loadoutData set ["officerUniforms", ["U_B_CombatUniform_tshirt_mcam_wdL_f", "U_B_CombatUniform_vest_mcam_wdl_f", "U_B_CombatUniform_mcam_wdl_f"]];
	_loadoutData set ["officerVests", ["V_TacVest_oli"]];
	_loadoutData set ["officerHats", ["H_MilCap_wdl", "H_Beret_Colonel", "H_Beret_02"]];
};

_loadoutData set ["cloakUniforms", ["U_B_T_Sniper_F", "U_B_T_FullGhillie_tna_F"]];
_loadoutData set ["cloakVests", ["V_Chestrig_oli"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", []];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_wdl_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["H_Beret_02"]];
_loadoutData set ["sniHats", ["H_Booniehat_wdl"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "B_IR_Grenade"];
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
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack",
    "G_Squares_Tinted",
    "G_Squares",
    "G_Tactical_Clear",
    "G_Tactical_Black"
]];
if (_hasContact) then {
    _loadoutData set ["goggles", ["G_Combat", "G_AirPurifyingRespirator_01_F"]];
} else {
    _loadoutData set ["goggles", ["G_Combat"]];
};
if (_hasCSLA) then {
    (_loadoutData get "glasses") pushBack "CSLA_glsPlscSpring";
};
if (_hasRF) then {
    (_loadoutData get "glasses") append ["G_Glasses_black_RF","G_Glasses_white_RF"];
};
if (_hasWs) then {
    (_loadoutData get "goggles") pushBack "G_Combat_lxWS";
};
//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["NVGs", ["NVGoggles"]];
_sfLoadoutData set ["uniforms", ["U_B_CTRG_1", "U_B_CTRG_3", "U_B_CTRG_2"]];  
_sfLoadoutData set ["vests", ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG","V_PlateCarrier1_blk","V_PlateCarrier2_blk"]];
_sfLoadoutData set ["Hvests", ["V_PlateCarrierH_CTRG","V_PlateCarrier2_blk"]];
_sfLoadoutData set ["glVests", ["V_PlateCarrierH_CTRG","V_PlateCarrier2_blk","V_PlateCarrierIAGL_oli"]];
_sfLoadoutData set ["backpacks", ["B_Kitbag_rgr", "B_AssaultPack_rgr", "B_Carryall_wdl_F", "B_Carryall_green_F"]];
_sfLoadoutData set ["atBackpacks", ["B_Kitbag_rgr","B_Carryall_wdl_F", "B_Carryall_green_F"]];
_sfLoadoutData set ["helmets", ["H_HelmetSpecB", "H_HelmetB_light_black", "H_Bandanna_khk_hs","H_Watchcap_camo", "H_HelmetB_TI_tna_F"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator"]];

if (_hasApex) then {
    _sfLoadoutData set ["goggles", ["G_Balaclava_Skull1", "G_Balaclava_blk","G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_shades","G_Combat","G_Goggles_VR","G_Tactical_Clear","G_Tactical_Black","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F"]];
    _sfLoadoutData set ["glasses", ["G_Balaclava_Skull1", "G_Balaclava_blk","G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_shades","G_Combat","G_Goggles_VR","G_Tactical_Clear","G_Tactical_Black","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F"]];
}else{
    _sfLoadoutData set ["glasses", [
    "G_Aviator",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack",
    "G_Squares_Tinted",
    "G_Squares",
    "G_Tactical_Clear",
    "G_Tactical_Black"
]];
_sfLoadoutData set ["goggles", ["G_Combat"]];
};

if (_hasApex) then {
_sfLoadoutData set ["NVGs", ["NVGogglesB_gry_F","NVGogglesB_blk_F"]];
(_sfLoadoutData get "helmets") pushBack "H_HelmetB_TI_tna_F";
(_sfLoadoutData get "vests") pushBack "V_PlateCarrier1_rgr_noflag_F";
(_sfLoadoutData get "Hvests") pushBack "V_PlateCarrier2_rgr_noflag_F";
(_sfLoadoutData get "uniforms") append ["U_B_CTRG_Soldier_urb_1_F", "U_B_CTRG_Soldier_urb_3_F", "U_B_CTRG_Soldier_urb_2_F","U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F","U_B_CTRG_Soldier_2_F"];
};

if (_hasContact) then {
(_sfLoadoutData get "goggles") pushBack "G_AirPurifyingRespirator_01_F";
(_sfLoadoutData get "glasses") pushBack "G_AirPurifyingRespirator_01_F";
(_sfLoadoutData get "uniforms") pushBack "U_B_CBRN_Suit_01_MTP_F";
};

if (_hasWs) then {
(_sfLoadoutData get "helmets") append ["lxWS_H_bmask_white","H_bmask_snake_lxws","H_turban_02_mask_snake_lxws","lxWS_H_bmask_base","H_turban_02_mask_black_lxws","lxWS_H_bmask_camo01","lxWS_H_Bandanna_blk_hs","lxWS_H_Headset","H_Beret_Headset_lxWS"];
(_sfLoadoutData get "goggles") append ["G_Balaclava_snd_lxWS","G_Balaclava_blk_lxWS","G_Combat_lxWS","G_Headset_lxWS"];
(_sfLoadoutData get "glasses") append ["G_Balaclava_snd_lxWS","G_Balaclava_blk_lxWS","G_Combat_lxWS","G_Headset_lxWS"];
};

if (_hasRF) then {
(_sfLoadoutData get "NVGs") append ["TiGoggles_grn_RF","TiGoggles_RF"];
(_sfLoadoutData get "helmets") pushBack "H_HelmetB_plain_sb_tna_RF";
(_sfLoadoutData get "glVests") pushBack "V_PlateCarrierLite_black_noFlag_RF";
};

private _slRifles = [
    ["arifle_MX_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_MX_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_MX_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MX_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MX_GL_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_GL_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_GL_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_GL_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
];
private _rifles = [
    ["arifle_MX_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Holosight_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MX_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
];
private _carbines = [
    ["arifle_MXC_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Holosight_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MXC_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
];
private _grenadeLaunchers = [
    ["arifle_MX_GL_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Holosight_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_MX_GL_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
];
private _mgs = [
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
];
if (_hasApex) then {
    _slRifles append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
    ];
    _rifles append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
    ];
    _carbines append [
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
    ];
    _grenadeLaunchers append [
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
    ];
    _mgs append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_NVS", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_NVS", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"]
    ];
} else {
    _mgs append [
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"]
    ];
};

if (_hasWs) then {
    _sfLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""]
    ]];
};

private _marksmanRifles = [
    ["arifle_MXM_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_SOS", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], "bipod_01_F_khk"],
    ["arifle_MXM_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_NVS", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], "bipod_01_F_khk"],
    ["arifle_MXM_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], "bipod_01_F_khk"],
    ["srifle_EBR_F", "muzzle_snds_B", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "muzzle_snds_B", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "muzzle_snds_B", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
];
if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_LRPS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_tws", [], [], "bipod_01_F_blk"]
    ];
};
_sfLoadoutData set ["marksmanRifles", _marksmanRifles];

_sfLoadoutData set ["SMGs", [
["SMG_01_F", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["SMG_01_F", "muzzle_snds_acp", "", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "muzzle_snds_570", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "muzzle_snds_570", "acc_pointer_IR", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

_sfLoadoutData set ["sniperRifles", [
["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["hgun_Pistol_heavy_01_green_F", "muzzle_snds_acp", "acc_flashlight_pistol", "optic_MRD_black", [], [], ""],
["hgun_P07_F", "muzzle_snds_L", "", "", [], [], ""],
["hgun_ACPC2_F", "muzzle_snds_acp", "acc_flashlight_pistol", "", [], [], ""]
]];

if (_hasWs) then {
    _slRifles append [
        ["sgun_aa40_lxWS","muzzle_snds_12Gauge_lxWS","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_XMS_Base_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Shot_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6rnd_HE_Mag_lxWS","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS"],""],
        ["arifle_XMS_Shot_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_Holosight_lush_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6rnd_HE_Mag_lxWS","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS"],""]
    ];
    _rifles append [
        ["sgun_aa40_lxWS","muzzle_snds_12Gauge_lxWS","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_XMS_Base_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Shot_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS","6Rnd_12Gauge_Pellets"],""],
        ["arifle_XMS_Shot_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_Holosight_lush_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS","6Rnd_12Gauge_Pellets"],""]
    ];
    _grenadeLaunchers append [
        ["arifle_XMS_GL_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","UGL_FlareCIR_F","1Rnd_Pellet_Grenade_shell_lxWS"],""],
        ["arifle_XMS_GL_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","UGL_FlareCIR_F","1Rnd_Pellet_Grenade_shell_lxWS"],""]
    ];
    _marksmanRifles append [
        ["srifle_EBR_blk_lxWS", "muzzle_snds_B", "acc_pointer_IR", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], "bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
        ["arifle_SLR_Para_lxWS", "suppressor_h_lxWS", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	    ["arifle_SLR_Para_snake_lxWS", "suppressor_h_lxWS", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
    _mgs append [
        ["arifle_XMS_M_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_NVS",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","suppressor_l_khaki_lxWS","acc_pointer_IR","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_NVS",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"]
    ];
};

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F","muzzle_snds_B_lush_F","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_06_olive_F","muzzle_snds_B_lush_F","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_03_multicam_F","muzzle_snds_B","acc_pointer_IR","optic_SOS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_01_F_mtp"],
        ["srifle_DMR_03_F", "muzzle_snds_B", "acc_pointer_IR", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_02_F","muzzle_snds_338_black","acc_pointer_IR","optic_AMS",["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"],[],"bipod_01_F_blk"],
        ["srifle_DMR_02_camo_F", "muzzle_snds_338_green", "acc_pointer_IR", "optic_AMS_khk", ["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"], [], "bipod_01_F_mtp"]
    ];
    (_sfLoadoutData get "sniperRifles") append [
        ["srifle_DMR_02_F","muzzle_snds_338_black","acc_pointer_IR","optic_AMS",["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"],[],"bipod_01_F_blk"],
        ["srifle_DMR_02_camo_F", "muzzle_snds_338_green", "acc_pointer_IR", "optic_AMS_khk", ["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"], [], "bipod_01_F_mtp"]
    ];
    _mgs append [
        ["MMG_02_black_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_Holosight_blk_F", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_MRCO", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_Hamr", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_NVS", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"]
    ];
};

if (_hasContact) then {
    (_sfLoadoutData get "slRifles") append [
        ["arifle_MSBS65_UBS_F","muzzle_snds_H","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","muzzle_snds_H","acc_pointer_IR","optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_F","muzzle_snds_H","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F","muzzle_snds_H","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_sfLoadoutData get "rifles") append [
        ["arifle_MSBS65_UBS_F","muzzle_snds_H","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","muzzle_snds_H","acc_pointer_IR","optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_sfLoadoutData get "grenadeLaunchers") append [
        ["arifle_MSBS65_GL_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""],
        ["arifle_MSBS65_GL_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""],
        ["arifle_MSBS65_GL_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""],
        ["arifle_MSBS65_GL_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_MSBS65_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""],
        ["arifle_MSBS65_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""],
        ["arifle_MSBS65_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""],
        ["arifle_MSBS65_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""]
    ];
    (_sfLoadoutData get "marksmanRifles") append [
        ["arifle_MSBS65_Mark_F", "muzzle_snds_H", "acc_pointer_IR", "optic_DMS_weathered_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_01_F_khk"],
        ["arifle_MSBS65_Mark_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_DMS_weathered_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_01_F_khk"]
    ];
    _mgs append [
        ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_DMS_weathered_Kir_F", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_01_F_khk"],
        ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_01_F_khk"],
        ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_01_F_khk"]
    ];
};

if (_hasRF) then {
    (_sfLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","muzzle_snds_acp","","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
    (_sfLoadoutData get "sidearms") append [
        ["hgun_Glock19_auto_RF","muzzle_snds_L","acc_flashlight_IR_pistol_RF","optic_MRD_black",["65Rnd_9x19_Red_Mag_RF","33Rnd_9x19_Red_Mag_RF","17Rnd_9x19_red_Mag_RF"],[],""],
        ["hgun_Glock19_auto_Tan_RF","muzzle_snds_L","acc_pointer_IR_pistol_RF","optic_MRD_tan_RF",["33Rnd_9x19_Red_Mag_khk_RF","33Rnd_9x19_Red_Mag_khk_RF","33Rnd_9x19_Red_Mag_khk_RF"],[],""],
        ["hgun_Glock19_RF","muzzle_snds_L","acc_pointer_IR_pistol_RF","optic_MRD_black",["17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF"],[],""],
        ["hgun_Glock19_Tan_RF","muzzle_snds_L","acc_flashlight_IR_pistol_RF","optic_MRD_tan_RF",["33Rnd_9x19_Mag_khk_RF","33Rnd_9x19_Mag_khk_RF","33Rnd_9x19_Mag_khk_RF"],[],""],
        ["hgun_DEagle_RF","","","optic_VRCO_pistol_RF",["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"],[],""],
        ["hgun_DEagle_classic_RF","","","optic_VRCO_pistol_RF",["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"],[],""],
        ["hgun_DEagle_bronze_RF","","","optic_VRCO_pistol_RF",["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"],[],""]
    ];
};

_sfLoadoutData set ["slRifles", _slRifles];
_sfLoadoutData set ["rifles", _rifles];
_sfLoadoutData set ["carbines", _carbines];
_sfLoadoutData set ["grenadeLaunchers", _grenadeLaunchers];
_sfLoadoutData set ["machineGuns", _mgs];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", ["NVGoggles"]]; 
_eliteLoadoutData set ["uniforms", ["U_B_CombatUniform_tshirt_mcam_wdL_f", "U_B_CombatUniform_vest_mcam_wdl_f", "U_B_CombatUniform_mcam_wdl_f"]];
_eliteLoadoutData set ["helmets", ["H_HelmetB_plain_wdl", "H_HelmetSpecB_wdl", "H_HelmetB_light_wdl"]];
_eliteLoadoutData set ["vests", ["V_PlateCarrier1_wdl", "V_PlateCarrier2_wdl", "V_PlateCarrierSpec_wdl"]];
_eliteLoadoutData set ["Hvests", ["V_PlateCarrierSpec_wdl"]];
_eliteLoadoutData set ["glVests", ["V_PlateCarrierGL_wdl"]];
_eliteLoadoutData set ["backpacks", ["B_Carryall_wdl_F", "B_Kitbag_sgg"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator"]];

if (_hasApex) then {
    _eliteLoadoutData set ["goggles", ["G_Balaclava_Skull1", "G_Balaclava_blk","G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_shades","G_Combat","G_Goggles_VR","G_Tactical_Clear","G_Tactical_Black","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F"]];
    _eliteLoadoutData set ["glasses", ["G_Balaclava_Skull1", "G_Balaclava_blk","G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_shades","G_Combat","G_Goggles_VR","G_Tactical_Clear","G_Tactical_Black","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F"]];
}else{
    _eliteLoadoutData set ["glasses", [
    "G_Aviator",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack",
    "G_Squares_Tinted",
    "G_Squares",
    "G_Tactical_Clear",
    "G_Tactical_Black"
]];
_eliteLoadoutData set ["goggles", ["G_Combat"]];
};

if (_hasApex) then {
_eliteLoadoutData set ["NVGs", ["NVGogglesB_gry_F","NVGogglesB_blk_F"]];
(_eliteLoadoutData get "helmets") pushBack "H_HelmetB_TI_tna_F";
(_eliteLoadoutData get "vests") pushBack "V_PlateCarrier1_rgr_noflag_F";
(_eliteLoadoutData get "Hvests") pushBack "V_PlateCarrier2_rgr_noflag_F";
(_eliteLoadoutData get "uniforms") append ["U_B_CTRG_Soldier_urb_1_F", "U_B_CTRG_Soldier_urb_3_F", "U_B_CTRG_Soldier_urb_2_F","U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F","U_B_CTRG_Soldier_2_F"];
};

if (_hasContact) then {
(_eliteLoadoutData get "goggles") pushBack "G_AirPurifyingRespirator_01_F";
(_eliteLoadoutData get "glasses") pushBack "G_AirPurifyingRespirator_01_F";
};

if (_hasWs) then {
(_eliteLoadoutData get "helmets") append ["lxWS_H_bmask_white","H_bmask_snake_lxws","H_turban_02_mask_snake_lxws","lxWS_H_bmask_base","H_turban_02_mask_black_lxws","lxWS_H_bmask_camo01","lxWS_H_Bandanna_blk_hs","lxWS_H_Headset","H_Beret_Headset_lxWS"];
(_eliteLoadoutData get "backpacks") pushBack "B_shield_backpack_lxWS";
};

if (_hasRF) then {
(_eliteLoadoutData get "NVGs") append ["TiGoggles_grn_RF","TiGoggles_RF"];
(_eliteLoadoutData get "backpacks") pushBack "B_DuffleBag_Olive_NoLogo_RF";
(_eliteLoadoutData get "helmets") pushBack "H_HelmetB_plain_sb_tna_RF";
(_eliteLoadoutData get "vests") append ["V_TacVest_rig_oli_RF","V_TacVest_rig_blk_RF"];
(_eliteLoadoutData get "glVests") pushBack "V_PlateCarrierLite_black_noFlag_RF";
};

_eliteLoadoutData set ["sniperRifles", [
["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["hgun_Pistol_heavy_01_green_F", "", "acc_flashlight_pistol", "optic_MRD_black", [], [], ""]
]];

_eliteLoadoutData set ["rifles", [
["arifle_MX_Black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["arifle_MXC_Black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MXC_Black_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MXC_Black_F", "", "acc_pointer_IR", "optic_Aco", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MXC_Black_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["arifle_MX_GL_Black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_pointer_IR", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["SMG_01_F", "", "", "optic_Holosight", [], [], ""],
["SMG_01_F", "", "", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_pointer_IR", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["arifle_MX_SW_Black_F", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["arifle_MX_SW_Black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["arifle_MX_SW_Black_F", "", "acc_pointer_IR", "optic_Aco", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"]
];

private _marksmanRifles = [
    ["arifle_MXM_Black_F", "", "acc_pointer_IR", "optic_SOS", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["arifle_MXM_Black_F", "", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"]
];

if (_hasApex) then {
    _slRifles append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
    ];
    _rifles append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
    ];
    _carbines append [
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
    ];
    _grenadeLaunchers append [
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
    ];
    _mgs append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_NVS", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_NVS", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Holosight", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_Hamr", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_khk_F", "muzzle_snds_m_khk_F", "acc_pointer_IR", "optic_ERCO_khk_F", ["150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_F", "150Rnd_556x45_Drum_Green_Mag_Tracer_F"], [], "bipod_01_F_blk"]
    ];
} else {
    _mgs append [
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
        ["arifle_MX_SW_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"]
    ];
};

if (_hasWs) then {
    (_eliteLoadoutData get "slRifles") append [
        ["sgun_aa40_lxWS","","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_XMS_Base_lxWS","","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_pointer_IR_lush_lxWS","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Shot_lxWS","","acc_pointer_IR","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6rnd_HE_Mag_lxWS","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS"],""],
        ["arifle_XMS_Shot_khk_lxWS","","acc_pointer_IR_lush_lxWS","optic_Holosight_lush_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6rnd_HE_Mag_lxWS","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS"],""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["sgun_aa40_lxWS","","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_XMS_Base_lxWS","","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_pointer_IR_lush_lxWS","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Shot_lxWS","","acc_pointer_IR","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS","6Rnd_12Gauge_Pellets"],""],
        ["arifle_XMS_Shot_khk_lxWS","","acc_pointer_IR_lush_lxWS","optic_Holosight_lush_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS","6Rnd_12Gauge_Pellets"],""]
    ];
    (_eliteLoadoutData get "grenadeLaunchers") append [
        ["arifle_XMS_GL_lxWS","","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","UGL_FlareCIR_F","1Rnd_Pellet_Grenade_shell_lxWS"],""],
        ["arifle_XMS_GL_khk_lxWS","","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","UGL_FlareCIR_F","1Rnd_Pellet_Grenade_shell_lxWS"],""]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
        ["arifle_SLR_Para_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	    ["arifle_SLR_Para_snake_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
    _marksmanRifles append [
        ["srifle_EBR_blk_lxWS", "", "acc_pointer_IR", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], "bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_pointer_IR","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_pointer_IR","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"]
    ];
    _mgs append [
        ["arifle_XMS_M_khk_lxWS","","acc_pointer_IR","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_pointer_IR","optic_NVS",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_pointer_IR","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_pointer_IR","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_pointer_IR","optic_NVS",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_pointer_IR","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"]
    ];
};

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F","","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_06_olive_F","","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_03_multicam_F","","acc_pointer_IR","optic_SOS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_01_F_mtp"],
        ["srifle_DMR_03_F", "", "acc_pointer_IR", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_02_F","","acc_pointer_IR","optic_AMS",["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"],[],"bipod_01_F_blk"],
        ["srifle_DMR_02_camo_F", "", "acc_pointer_IR", "optic_AMS_khk", ["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"], [], "bipod_01_F_mtp"]
    ];
    (_eliteLoadoutData get "sniperRifles") append [
        ["srifle_DMR_02_F","","acc_pointer_IR","optic_AMS",["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"],[],"bipod_01_F_blk"],
        ["srifle_DMR_02_camo_F", "", "acc_pointer_IR", "optic_AMS_khk", ["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"], [], "bipod_01_F_mtp"]
    ];
    _mgs append [
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_MRCO", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_Hamr", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_NVS", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"]
    ];
};

if (_hasContact) then {
    (_eliteLoadoutData get "slRifles") append [
        ["arifle_MSBS65_UBS_F","","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","","acc_pointer_IR","optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_F","","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_black_F", "", "acc_pointer_IR", "optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F","","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_black_F", "", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["arifle_MSBS65_UBS_F","","acc_pointer_IR","optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","","acc_pointer_IR","optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag"],[],""],
        ["arifle_MSBS65_UBS_black_F", "", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F", "", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_eliteLoadoutData get "grenadeLaunchers") append [
        ["arifle_MSBS65_GL_F", "", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""],
        ["arifle_MSBS65_GL_F", "", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""],
        ["arifle_MSBS65_GL_black_F", "", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""],
        ["arifle_MSBS65_GL_black_F", "", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""]
    ];
    (_eliteLoadoutData get "carbines") append [
        ["arifle_MSBS65_F", "", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""],
        ["arifle_MSBS65_F", "", "acc_pointer_IR", "optic_Holosight_blk_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""],
        ["arifle_MSBS65_black_F", "", "acc_pointer_IR", "optic_ico_01_black_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""],
        ["arifle_MSBS65_black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], ""]
    ];
    (_eliteLoadoutData get "marksmanRifles") append [
        ["arifle_MSBS65_Mark_F", "", "acc_pointer_IR", "optic_DMS_weathered_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_01_F_khk"],
        ["arifle_MSBS65_Mark_black_F", "", "acc_pointer_IR", "optic_DMS_weathered_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_01_F_khk"]
    ];
    _mgs append [
        ["LMG_Mk200_black_F", "", "acc_pointer_IR", "optic_DMS_weathered_Kir_F", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_01_F_khk"],
        ["LMG_Mk200_black_F", "", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_01_F_khk"],
        ["LMG_Mk200_black_F", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_01_F_khk"]
    ];
};

if (_hasRF) then {
    (_eliteLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
    (_eliteLoadoutData get "sidearms") append [
        ["hgun_Glock19_auto_RF","","acc_flashlight_IR_pistol_RF","optic_MRD_black",["65Rnd_9x19_Red_Mag_RF","33Rnd_9x19_Red_Mag_RF","17Rnd_9x19_red_Mag_RF"],[],""],
        ["hgun_Glock19_auto_Tan_RF","","acc_pointer_IR_pistol_RF","optic_MRD_tan_RF",["33Rnd_9x19_Red_Mag_khk_RF","33Rnd_9x19_Red_Mag_khk_RF","33Rnd_9x19_Red_Mag_khk_RF"],[],""],
        ["hgun_Glock19_RF","","acc_pointer_IR_pistol_RF","optic_MRD_black",["17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF"],[],""],
        ["hgun_Glock19_Tan_RF","","acc_flashlight_IR_pistol_RF","optic_MRD_tan_RF",["33Rnd_9x19_Mag_khk_RF","33Rnd_9x19_Mag_khk_RF","33Rnd_9x19_Mag_khk_RF"],[],""],
        ["hgun_DEagle_RF","","","optic_VRCO_pistol_RF",["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"],[],""],
        ["hgun_DEagle_classic_RF","","","optic_VRCO_pistol_RF",["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"],[],""],
        ["hgun_DEagle_bronze_RF","","","optic_VRCO_pistol_RF",["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"],[],""]
    ];
};

_eliteLoadoutData set ["machineGuns", _mgs];
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["U_B_CombatUniform_tshirt_mcam_wdL_f", "U_B_CombatUniform_vest_mcam_wdl_f", "U_B_CombatUniform_mcam_wdl_f"]];
_militaryLoadoutData set ["vests", ["V_PlateCarrier1_wdl", "V_PlateCarrier2_wdl"]];
_militaryLoadoutData set ["Hvests", ["V_PlateCarrier1_wdl", "V_PlateCarrier2_wdl", "V_PlateCarrierSpec_wdl"]];
_militaryLoadoutData set ["glVests", ["V_PlateCarrier1_wdl", "V_PlateCarrier2_wdl", "V_PlateCarrierGL_wdl"]];
_militaryLoadoutData set ["backpacks", ["B_Carryall_wdl_F", "B_Kitbag_sgg", "B_AssaultPack_rgr", "B_Kitbag_mcamo"]];
_militaryLoadoutData set ["atBackpacks", ["B_Carryall_wdl_F", "B_AssaultPack_rgr", "B_Kitbag_mcamo"]];
_militaryLoadoutData set ["helmets", ["H_HelmetB_plain_wdl", "H_HelmetSpecB_wdl", "H_HelmetB_light_wdl"]];

_militaryLoadoutData set ["slRifles", [
["arifle_MX_Black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["arifle_MX_Black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MX_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["arifle_MXC_Black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MXC_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MXC_Black_F", "", "acc_flashlight", "optic_Aco", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
["arifle_MXC_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_MX_GL_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Holosight", [], [], ""],
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_flashlight", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Holosight_blk_F", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
["arifle_MX_SW_Black_F", "", "", "optic_NVS", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
["arifle_MX_SW_Black_F", "", "acc_flashlight", "optic_ACO_grn", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
["arifle_MX_SW_Black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
["arifle_MX_SW_Black_F", "", "acc_flashlight", "optic_Aco", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"]
]];
_militaryLoadoutData set ["sniperRifles", [
["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["hgun_Pistol_heavy_01_green_F", "", "acc_flashlight_pistol", "", [], [], ""],
["hgun_P07_blk_F", "", "", "", [], [], ""],
["hgun_P07_khk_F", "", "", "", [], [], ""]
]];

private _marksmanRifles = [
    ["arifle_MXM_Black_F", "", "acc_flashlight", "optic_NVS", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["arifle_MXM_Black_F", "", "acc_flashlight", "optic_SOS", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["arifle_MXM_Black_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "", "acc_flashlight", "optic_SOS", [], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"]
];

if (_hasMarksman) then {
    _mgs append [
        ["MMG_02_black_F", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], "bipod_01_F_blk"],
        ["MMG_02_black_F", "", "acc_flashlight", "optic_tws_mg", [], [], "bipod_01_F_blk"]
    ];
    _marksmanRifles append [
        ["srifle_DMR_02_F", "", "acc_flashlight", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_02_F", "", "acc_flashlight", "optic_LRPS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_F", "", "acc_flashlight", "optic_SOS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_F", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_khaki_F", "", "acc_flashlight", "optic_SOS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_khaki_F", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"]
    ];
} else {
    _marksmanRifles append [
        ["srifle_EBR_F", "", "acc_flashlight", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["srifle_EBR_F", "", "acc_flashlight", "optic_SOS", [], [], "bipod_01_F_blk"],
        ["srifle_EBR_F", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"]
    ];
};

if (_hasWs) then {
    (_militaryLoadoutData  get "slRifles") append [
        ["sgun_aa40_lxWS","","acc_flashlight","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_XMS_Base_lxWS","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Shot_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6rnd_HE_Mag_lxWS","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS"],""],
        ["arifle_XMS_Shot_khk_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6rnd_HE_Mag_lxWS","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS"],""]
    ];
    (_militaryLoadoutData  get "rifles") append [
        ["sgun_aa40_lxWS","","acc_flashlight","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_XMS_Base_lxWS","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Shot_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS","6Rnd_12Gauge_Pellets"],""],
        ["arifle_XMS_Shot_khk_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6rnd_Smoke_Mag_lxWS","6Rnd_12Gauge_Pellets"],""]
    ];
    (_militaryLoadoutData get "grenadeLaunchers") append [
        ["arifle_XMS_GL_lxWS","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","UGL_FlareCIR_F","1Rnd_Pellet_Grenade_shell_lxWS"],""],
        ["arifle_XMS_GL_khk_lxWS","","acc_flashlight","optic_MRCO",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","UGL_FlareCIR_F","1Rnd_Pellet_Grenade_shell_lxWS"],""]
    ];
    _marksmanRifles append [
        ["srifle_EBR_blk_lxWS", "", "acc_flashlight", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], "bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"]
    ];
    (_militaryLoadoutData  get "machineGuns") append [
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_NVS",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_NVS",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"]
    ];
};

if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F","","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_06_olive_F","","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_03_multicam_F","","acc_flashlight","optic_SOS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_01_F_mtp"],
        ["srifle_DMR_03_F", "", "acc_flashlight", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_02_F","","acc_flashlight","optic_AMS",["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"],[],"bipod_01_F_blk"],
        ["srifle_DMR_02_camo_F", "", "acc_flashlight", "optic_AMS_khk", ["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"], [], "bipod_01_F_mtp"]
    ];
    (_militaryLoadoutData  get "sniperRifles") append [
        ["srifle_DMR_02_F","","acc_flashlight","optic_AMS",["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"],[],"bipod_01_F_blk"],
        ["srifle_DMR_02_camo_F", "", "acc_flashlight", "optic_AMS_khk", ["10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag"], [], "bipod_01_F_mtp"]
    ];
    (_militaryLoadoutData  get "machineGuns") append [
        ["MMG_02_black_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_flashlight", "optic_MRCO", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_flashlight", "optic_Hamr", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_flashlight", "optic_NVS", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"]
    ];
};

if (_hasRF) then {
    (_militaryLoadoutData  get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
    (_militaryLoadoutData  get "sidearms") append [
        ["hgun_Glock19_RF","","","optic_MRD_black",["17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF"],[],""],
        ["hgun_Glock19_Tan_RF","","","optic_MRD_tan_RF",["33Rnd_9x19_Mag_khk_RF","33Rnd_9x19_Mag_khk_RF","33Rnd_9x19_Mag_khk_RF"],[],""]
    ];
};

_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_Marshal"]];
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE","V_Rangemaster_belt"]];
private _helmets = ["H_Cap_police"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};

if (_hasApex) then {
    _helmets append ["H_MilCap_gen_F","H_Beret_gen_F"];
    (_policeLoadoutData get "vests") pushBack "V_TacVest_gen_F";
    (_policeLoadoutData get "uniforms") append ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"];
};

_policeLoadoutData set ["helmets", _helmets];
_policeLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["hgun_Rook40_F"]];

if (_hasApex) then {
    (_policeLoadoutData get "SMGs") append [
        ["SMG_05_F","","","optic_Aco_smg",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
    ];
};
if (_hasRF) then {
    (_policeLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","optic_Aco_smg",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

if (_hasRF) then {
    (_policeLoadoutData get "sidearms") append ["hgun_Glock19_RF"];
};

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["U_B_CombatUniform_tshirt_mcam_wdL_f", "U_B_CombatUniform_vest_mcam_wdl_f", "U_B_CombatUniform_mcam_wdl_f"]];
_militiaLoadoutData set ["vests", ["V_Chestrig_oli", "V_PlateCarrier1_wdl","V_TacVestIR_blk","V_CarrierRigKBT_01_Olive_F"]];
_militiaLoadoutData set ["Hvests", ["V_PlateCarrier2_wdl"]];
_militiaLoadoutData set ["glVests", ["V_Chestrig_oli", "V_PlateCarrier1_wdl","V_TacVestIR_blk"]];
_militiaLoadoutData set ["backpacks", ["B_AssaultPack_wdl_F","B_FieldPack_oli","B_FieldPack_green_F"]];
_militiaLoadoutData set ["atBackpacks", ["B_Carryall_wdl_F","B_TacticalPack_oli"]];
_militiaLoadoutData set ["helmets", ["H_HelmetB_light_wdl", "H_MilCap_wdl", "H_Bandanna_camo"]];

if (_hasWs) then {
    (_militiaLoadoutData get "uniforms") pushBack "U_lxWS_ION_Casual4";
    (_militiaLoadoutData get "vests") pushBack "V_lxWS_TacVestIR_oli";
    (_militiaLoadoutData get "helmets") append ["lxWS_H_PASGT_goggles_olive_F","lxWS_H_PASGT_goggles_black_F"];
};

if (_hasRF) then {
    (_militiaLoadoutData get "vests") append ["V_TacVest_rig_oli_RF", "V_TacVest_rig_blk_RF"];
    (_militiaLoadoutData get "helmets") pushBack "H_HelmetB_plain_sb_wdl_RF";
};

if (_hasLawsOfWar) then {
    (_militiaLoadoutData get "helmets") append ["H_PASGT_basic_olive_F", "H_PASGT_basic_black_F"];
};
if (_hasApex) then {
    (_militiaLoadoutData get "vests") pushBack "V_TacChestrig_oli_F";
};

_militiaLoadoutData set ["slRifles", [
    ["arifle_MX_GL_Black_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_Black_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
    ["arifle_MX_Black_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["arifle_MXC_Black_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["arifle_MX_GL_Black_F", "", "acc_flashlight", "", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["arifle_MX_SW_Black_F", "", "acc_flashlight", "", ["100Rnd_65x39_caseless_black_mag", "100Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["arifle_MXM_Black_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_blk"],
    ["arifle_MXM_Black_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "", "acc_flashlight", "optic_MRCO", [], [], "bipod_01_F_blk"]
]];

_militiaLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_camo", "", "", "", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_03C_TR_camo", "", "acc_flashlight", "optic_Aco_smg", ["50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03"], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];

_militiaLoadoutData set ["sniperRifles", [
    ["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
    ["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_militiaLoadoutData set ["sidearms", ["hgun_ACPC2_F", "hgun_P07_blk_F", "hgun_P07_khk_F"]];

if (_hasWs) then {
    _militiaLoadoutData set ["slRifles", [
        ["arifle_XMS_Base_lxWS","","acc_flashlight","",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_flashlight","",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""]
    ]];
    _militiaLoadoutData set ["rifles", [
        ["arifle_XMS_Base_lxWS","","acc_flashlight","",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_flashlight","",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""]
    ]];
    _militiaLoadoutData set ["carbines", [
        ["arifle_XMS_Base_lxWS","","acc_flashlight","",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""],
        ["arifle_XMS_Base_khk_lxWS","","acc_flashlight","",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],""]
    ]];
    _militiaLoadoutData set ["marksmanRifles", [
        ["srifle_EBR_F", "", "acc_flashlight", "optic_Hamr", [], [], "bipod_01_F_snd"],
        ["srifle_EBR_F", "", "acc_flashlight", "optic_MRCO", [], [], "bipod_01_F_snd"],
        ["srifle_EBR_blk_lxWS", "", "acc_flashlight", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], "bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_DMS_weathered_F",["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red"],[],"bipod_01_F_blk"]
    ]];
    _militiaLoadoutData set ["machineGuns", [
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_khk_lxWS","","acc_flashlight","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_Hamr",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"],
        ["arifle_XMS_M_lxWS","","acc_flashlight","optic_Holosight_blk_F",["75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS","75Rnd_556x45_Stanag_red_lxWS"],[],"bipod_01_F_blk"]
    ]];
};

if (_hasApex) then {
    (_militiaLoadoutData get "SMGs") append [
        ["SMG_05_F","","acc_flashlight","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
    ];
};

if (_hasMarksman) then {
    (_militiaLoadoutData get "marksmanRifles") append [
        ["srifle_DMR_06_camo_F","","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_06_olive_F","","","optic_DMS_weathered_F",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_02_F_lush"],
        ["srifle_DMR_03_tan_F","","","optic_SOS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_01_F_snd"],
        ["srifle_DMR_03_multicam_F","","","optic_SOS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"],[],"bipod_01_F_mtp"],
        ["srifle_DMR_03_F", "", "", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"]
    ];
    (_militiaLoadoutData get "machineGuns") append [
        ["MMG_02_black_F", "", "", "optic_Holosight_blk_F", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "", "optic_MRCO", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "", "optic_Hamr", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "", "optic_NVS", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"]
    ];
};

if (_hasContact) then {
    (_militiaLoadoutData get "machineGuns") append [
        ["LMG_Mk200_black_F", "", "", "optic_DMS_weathered_Kir_F", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_arid"],
        ["LMG_Mk200_black_F", "", "", "optic_MRCO", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_arid"],
        ["LMG_Mk200_black_F", "", "", "optic_Hamr", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_arid"]
    ];
    (_militiaLoadoutData get "marksmanRifles") append [
        ["srifle_DMR_06_hunter_F","","","optic_DMS_weathered_F",["10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag"],[],""]
    ];
};

if (_hasRF) then {
    (_militiaLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
    (_militiaLoadoutData get "sidearms") append [
        ["hgun_Glock19_RF","","","optic_MRD_black",["17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF"],[],""],
        ["hgun_Glock19_Tan_RF","","","optic_MRD_tan_RF",["33Rnd_9x19_Mag_Tan_RF","33Rnd_9x19_Mag_Tan_RF","33Rnd_9x19_Mag_Tan_RF"],[],""]
    ];
    (_militiaLoadoutData get "marksmanRifles") append [
        ["srifle_h6_oli_rf","","","optic_MRCO",["10Rnd_556x45_AP_Stanag_red_khk_RF","10Rnd_556x45_AP_Stanag_red_khk_RF","20Rnd_556x45_AP_Stanag_red_khk_RF"],[],""],
        ["srifle_h6_blk_rf", "", "", "optic_MRCO",["10Rnd_556x45_AP_Stanag_RF","10Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF"], [], ""]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["srifle_h6_oli_rf","","","optic_MRCO",["10Rnd_556x45_AP_Stanag_red_khk_RF","10Rnd_556x45_AP_Stanag_red_khk_RF","20Rnd_556x45_AP_Stanag_red_khk_RF"],[],""],
        ["srifle_h6_blk_rf", "", "", "optic_MRCO",["10Rnd_556x45_AP_Stanag_RF","10Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF"], [], ""],
        ["srifle_DMR_01_black_RF","","","optic_DMS",["10Rnd_762x54_Mag","10Rnd_762x54_Mag","10Rnd_762x54_Mag"],[],""]
    ];
};

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["U_B_CombatUniform_tshirt_mcam_wdL_f", "U_B_CombatUniform_mcam_wdl_f"]];
_crewLoadoutData set ["vests", ["V_Chestrig_oli", "V_TacVest_oli"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_B"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_B_HeliPilotCoveralls"]];
_pilotLoadoutData set ["vests", ["V_TacVest_oli"]];
_pilotLoadoutData set ["helmets", ["H_CrewHelmetHeli_B", "H_PilotHelmetHeli_B"]];

if (_hasRF) then {
    (_pilotLoadoutData get "uniforms") pushBack "U_B_HeliPilotCoveralls_MTP_RF";
};

if (_hasGM) then {
    /* _militiaLoadoutData set ["AALaunchers",  ["gm_fim43_oli", "", "", "", ["gm_1Rnd_70mm_he_m585_fim43"], [], ""]];
    _militaryLoadoutData set ["AALaunchers",  ["gm_fim43_oli", "", "", "", ["gm_1Rnd_70mm_he_m585_fim43"], [], ""]]; */
    (_militiaLoadoutData get "rifles") append [
        ["gm_c7a1_oli", "", "", "", ["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"], [], ""],
        ["gm_c7a1_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_gvm95_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_m16a1_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_m16a2_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_sg551_ris_oli","","","",["gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"],[],""],
        ["gm_sg551_ris_blk","","","",["gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"],[],""],
        ["gm_sg551_swat_blk","","acc_flashlight","optic_Aco",["gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"],[],""],
        ["gm_g36e_blk", "", "", "", ["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"], [], ""],
        ["gm_g36a1_blk","","","",["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"],[],""],
        ["gm_g3a4a1_ris_oli", "", "", "optic_MRCO", ["gm_40Rnd_762x51mm_B_T_DM21_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A1_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], ["gm_1rnd_67mm_heat_dm22a1_g3"], ""],
        ["gm_g3ka4a1_ris_blk", "", "", "gm_c79a1_blk", ["gm_40Rnd_762x51mm_AP_DM151_g3_blk","gm_40Rnd_762x51mm_B_DM41_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], ""]
    ];
    (_militiaLoadoutData get "slRifles") append [
        ["gm_c7a1_oli", "", "", "", ["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"], [], ""],
        ["gm_c7a1_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_gvm95_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_m16a1_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_m16a2_blk","","","",["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"],[],""],
        ["gm_sg551_ris_oli","","","",["gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"],[],""],
        ["gm_sg551_ris_blk","","","",["gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"],[],""],
        ["gm_sg551_swat_blk","","acc_flashlight","optic_Aco",["gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"],[],""],
        ["gm_g36e_blk", "", "", "", ["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"], [], ""],
        ["gm_g36a1_blk","","","",["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"],[],""],
        ["gm_g3a4a1_ris_oli", "", "", "optic_MRCO", ["gm_40Rnd_762x51mm_B_T_DM21_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A1_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], ["gm_1rnd_67mm_heat_dm22a1_g3"], ""],
        ["gm_g3ka4a1_ris_blk", "", "", "gm_c79a1_blk", ["gm_40Rnd_762x51mm_AP_DM151_g3_blk","gm_40Rnd_762x51mm_B_DM41_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], ""]
    ];
    (_militiaLoadoutData get "machineGuns") append [
        ["gm_mg3_blk", "", "", "", ["gm_120Rnd_762x51mm_B_T_DM21_mg3_grn","gm_120Rnd_762x51mm_B_T_DM21A2_mg3_grn"], [], ""],
        ["gm_mg8a2_blk", "", "", "gm_blits_stanagHK_blk", ["gm_100Rnd_762x51mm_B_T_DM21_mg8_oli","gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli"], [], "gm_g8_bipod_blk"]
    ];
    (_militiaLoadoutData get "marksmanRifles") append [
        ["gm_msg90_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"],
        ["gm_msg90a1_blk","","","gm_blits_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"],[],"gm_msg90_bipod_blk"]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["gm_psg1_blk","","","gm_zf6x42_psg1_stanag_blk",["gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk","gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_militiaLoadoutData get "helmets") append [
        "gm_ge_headgear_m92_cover_glasses_oli",
        "gm_ge_headgear_m92_cover_oli",
        "gm_dk_headgear_m96_cover_wdl",
        "gm_dk_headgear_m96_oli",
        "gm_ge_headgear_m92_flk",
        "gm_ge_headgear_m92_cover_blk",
        "gm_ge_headgear_m92_glasses_flk",
        "gm_ge_headgear_m92_cover_glasses_blk",
        "gm_ge_headgear_m92_cover_glasses_oli"
    ];
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

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    ["backpacks"] call _fnc_setBackpack;

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

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
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
