private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "AAF"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "AAF"]] call _fnc_saveToTemplate;

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", "a3\data_f\flags\flag_aaf_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_AAF"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _basic = ["I_Quadbike_01_F"];
private _unarmedVehicles = ["I_MRAP_03_F"];
private _armedVehicles = ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"];
private _Trucks = ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
private _cargoTrucks = ["I_Truck_02_transport_F", "I_Truck_02_covered_F","I_UGV_01_F"];
private _ammoTrucks = ["I_Truck_02_ammo_F"];
private _repairTrucks = ["I_Truck_02_box_F"];
private _fuelTrucks = ["I_Truck_02_fuel_F"];
private _medicalTrucks = ["I_Truck_02_medical_F"];
private _lightAPCs = [];
private _APCs = ["I_APC_Wheeled_03_cannon_F"];
private _IFVs = ["I_APC_tracked_03_cannon_F"];
private _airborneVehicles = ["I_APC_Wheeled_03_cannon_F","I_UGV_01_rcws_F"];
private _tanks = ["I_MBT_03_cannon_F"];
private _lightTanks = ["I_UGV_01_rcws_F"];
private _aa = ["I_LT_01_AA_F"]; ///"B_APC_Tracked_01_AA_F"

private _transportBoat = ["I_Boat_Transport_01_F"];
["vehiclesGunBoats", ["I_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate;

private _planesCAS = ["I_Plane_Fighter_03_dynamicLoadout_F","I_UAV_02_dynamicLoadout_F"];
private _planesAA = ["I_Plane_Fighter_03_dynamicLoadout_F","I_UAV_02_dynamicLoadout_F"];
if (_hasJets) then {
	_planesCAS pushback "I_Plane_Fighter_04_F";
	_planesAA pushback "I_Plane_Fighter_04_F";
};
private _planesTransport = [];

private _helisLight = ["I_Heli_light_03_unarmed_F"];
private _transportHelicopters = ["I_Heli_Transport_02_F"];
private _helisLightAttack =  ["I_Heli_light_03_dynamicLoadout_F"];
private _helisAttack = [];

private _artillery = ["I_Truck_02_MRL_F"];
["magazines", createHashMapFromArray [
["I_Truck_02_MRL_F", ["12Rnd_230mm_rockets", "12Rnd_230mm_rockets_cluster"]],
["gm_pl_army_2s1",["gm_1Rnd_122x447mm_he_of462","gm_1Rnd_122x447mm_he_3of56"]],
["gm_pl_army_ural375d_mlrs",["gm_40Rnd_mlrs_122mm_he_9m22u","gm_40Rnd_mlrs_122mm_icm_9m218","gm_40Rnd_mlrs_122mm_mine_9m28k"]],
["gmx_aaf_m109_wdl",["gm_1Rnd_155mm_he_dm21","gm_1Rnd_155mm_he_dm111","gm_1Rnd_155mm_icm_dm602"]],
["gmx_aaf_kat1_463_mlrs_wdl",["gm_36Rnd_mlrs_110mm_he_dm21","gm_36Rnd_mlrs_110mm_icm_dm602","gm_36Rnd_mlrs_110mm_mine_dm711"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["I_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
private _uavsPortable = if (_hasWs) then {["I_UAV_02_lxWS", "I_UAV_01_F"]} else {["I_UAV_01_F"]};

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:

private _militiaLightArmed = ["B_G_Offroad_01_armed_F"];
private _militiaTrucks = ["I_Truck_02_transport_F", "I_Truck_02_covered_F"];
private _militiaCars = ["B_G_Offroad_01_F"];
private _militiaAPCs = if (_hasTanks) then {["I_LT_01_cannon_F"]} else {[]};

private _policeVehs = if (_hasContact) then {
    ["B_GEN_Offroad_01_covered_F", "B_GEN_Offroad_01_comms_F", "B_GEN_Offroad_01_gen_F"]
} else {
    ["B_GEN_Offroad_01_gen_F"]
};

if (_hasLawsOfWar) then {
    _policeVehs append ["B_GEN_Van_02_vehicle_F","B_GEN_Van_02_transport_F"];
};

private _staticMG = ["I_HMG_02_high_F","I_HMG_01_high_F"];
private _staticAT = ["I_static_AT_F","I_GMG_01_high_F"];
private _staticAA = ["I_static_AA_F"];
["staticMortars", ["B_Mortar_01_F"]] call _fnc_saveToTemplate;
private _howitzers =  [];

private _radar = [];
private _SAM = [];

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

if (_hasApex) then {
    _militiaCars pushBack "I_C_Offroad_02_unarmed_F";
    _militiaLightArmed pushBack "a3a_Offroad_02_LMG_black_F";
    _transportBoat pushBack "I_C_Boat_Transport_02_F";
};

if (_hasRF) then {
    _unarmedVehicles append ["I_Pickup_rf","I_Pickup_Comms_rf"];
    _armedVehicles pushBack "I_Pickup_mmg_rf";
    _militiaLightArmed append ["I_Pickup_mmg_rf","I_Pickup_hmg_rf"];
    _militiaCars append ["I_Pickup_rf","I_Pickup_Comms_rf"];
    _aa pushBack "I_Pickup_aat_rf";
    _SAM pushback "I_Pickup_aat_rf";
    _uavsPortable pushBack "I_UAV_RC40_SENSOR_RF";
    _howitzers pushBack "I_TwinMortar_RF";
    _policeVehs append ["a3a_police_Pickup_rf", "B_GEN_Pickup_covered_rf", "a3a_police_Pickup_comms_rf"];
    _helisLight append ["a3a_AAF_Heli_light_03_unarmed_RF","a3a_green_Heli_light_03_unarmed_RF"];
    _transportHelicopters append ["I_Heli_EC_01A_military_RF","B_Heli_EC_04_military_RF"];
    _helisLightAttack append ["a3a_AAF_Heli_light_03_dynamicLoadout_RF","B_Heli_EC_03_RF"];
    _helisAttack pushBack "a3a_Heli_EC_02_RF";
};

//If Tank DLC
if (_hasTanks) then {
    _lightTanks append ["I_LT_01_AT_F", "I_LT_01_cannon_F"];
    //_aa pushBack "I_LT_01_AA_F";
    _radar pushback "I_LT_01_scout_F";
    _SAM pushback "I_LT_01_AA_F";
};
//If Western Sahara DLC
if (_hasWs) then {
    _cargoTrucks = ["I_Truck_02_flatbed_lxWS", "I_Truck_02_cargo_lxWS","I_UGV_01_F"];
    _aa pushBack "I_A_Truck_02_aa_lxWS";
    _staticAA pushBack "I_Tura_ZU23_lxWS";
};

//If GM cdlc + extra AAF mod

if (isClass (configFile >> "cfgVehicles" >> "gmx_aaf_m113a2dk_wdl") && _hasGM) then {
    _staticMG pushBack "gmx_aaf_mg3_aatripod";
    _staticAT pushBack "gmx_aaf_milan_launcher_tripod";
    _basic append ["gm_ge_army_k125","gmx_aaf_brpz1_wdl","gm_gc_army_ural44202_noinsignia"];
    _planesTransport append ["gmx_aaf_do28d2_wdl","gm_gc_airforce_l410t_noinsignia"];
    _helisLight append ["gmx_aaf_bo105m_vbh_wdl","gmx_aaf_bo105p1m_vbh_wdl","gmx_aaf_bo105p1m_vbh_swooper_wdl","gm_gc_airforce_mi2p_noinsignia","gm_gc_bgs_mi2p_noinsignia","gm_gc_airforce_mi2t_noinsignia"];
    _helisLightAttack append ["gmx_aaf_bo105p_pah1_wdl","gm_gc_airforce_mi2us_noinsignia","gm_gc_airforce_mi2urn_noinsignia","gm_gc_bgs_mi2us_noinsignia"];
    _helisAttack append ["gmx_aaf_bo105p_pah1a1_wdl","gm_pl_airforce_mi2urpg","gm_pl_airforce_mi2urs_noinsignia","gm_pl_airforce_mi2urp_noinsignia","gm_ge_army_bo105p_pah1a1_noinsignia"];
    _transportHelicopters append ["gmx_aaf_ch53g_wdl","gmx_aaf_ch53gs_wdl"];
    _artillery append ["gm_pl_army_2s1","gm_pl_army_ural375d_mlrs","gmx_aaf_m109_wdl","gmx_aaf_kat1_463_mlrs_wdl"];
    _lightAPCs append ["gmx_aaf_fuchsa0_command_wdl","gmx_aaf_fuchsa0_engineer_wdl","gmx_aaf_fuchsa0_reconnaissance_wdl"];
    _militiaAPCs append ["gm_gc_army_btr60pa_noinsignia","gm_gc_army_btr60pa_dshkm_noinsignia","gm_gc_army_btr60pb_noinsignia","gm_gc_army_btr60pu12_noinsignia","gm_pl_army_ot64a_noinsignia"];
    _APCs append ["gmx_aaf_luchsa1_wdl","gmx_aaf_luchsa2_wdl","gm_pl_army_brdm2","gm_gc_army_brdm2rkh"];
    _IFVs append ["gmx_aaf_m113a1g_apc_wdl","gmx_aaf_m113a1g_apc_milan_wdl","gmx_aaf_m113a1g_command_wdl","gmx_aaf_marder1a1plus_wdl","gmx_aaf_marder1a1a_wdl","gmx_aaf_marder1a2_wdl","gmx_aaf_m113a2dk_wdl"];
    _militiaTrucks append ["gmx_aaf_kat1_451_cargo_wdl","gmx_aaf_u1300l_cargo_wdl","gm_gc_bgs_ural4320_cargo_noinsignia"];
    _unarmedVehicles append ["gm_gc_army_brdm2um_noinsignia","gmx_aaf_iltis_cargo_wdl","gm_dk_army_typ253_cargo","gm_dk_army_typ1200_cargo"];
    _armedVehicles append ["gmx_aaf_iltis_milan_wdl","gm_ge_army_iltis_mg3"];
    _militiaCars append ["gm_dk_army_typ1200_cargo","gm_dk_army_typ253_cargo","gm_dk_army_typ253_mp","gm_gc_bgs_p601_noinsignia","gm_gc_bgs_uaz469_cargo_noinsignia"];
    _militiaLightArmed append ["gmx_aaf_iltis_milan_wdl","gm_ge_army_iltis_mg3","gm_gc_army_brdm2_noinsignia","gm_gc_army_uaz469_spg9_noinsignia","gm_gc_army_uaz469_dshkm_noinsignia"];
    _policeVehs append ["gm_gc_pol_p601","gm_ge_pol_typ1200","gm_ge_pol_typ253","gm_ge_pol_w123"];
    _lightTanks append ["gm_gc_army_bmp1sp2_noinsignia","gm_gc_army_pt76b_noinsignia"];
    _airborneVehicles append ["gmx_aaf_luchsa1_wdl","gmx_aaf_luchsa2_wdl","gmx_aaf_fuchsa0_reconnaissance_wdl","gmx_aaf_fuchsa0_command_wdl"];
    _aa append ["gmx_aaf_gepard1a1_wdl","gm_gc_army_zsu234v1_noinsignia"];
    _Trucks append ["gmx_aaf_kat1_451_cargo_wdl","gmx_aaf_u1300l_cargo_wdl"];
    _cargoTrucks append ["gmx_aaf_kat1_451_container_wdl","gmx_aaf_kat1_454_cargo_wdl","gmx_aaf_u1300l_container_wdl","gm_dk_army_typ247_cargo","gm_gc_bgs_ural4320_cargo_noinsignia"];
    _tanks append ["gmx_aaf_leopard1a1a1_wdl","gm_ge_army_Leopard1a1a2_noinsignia","gmx_aaf_leopard1a3_wdl","gm_ge_army_Leopard1a3a1_noinsignia","gmx_aaf_leopard1a5_wdl","gm_gc_army_t55_noinsignia","gm_gc_army_t55a_noinsignia","gm_gc_army_t55ak_noinsignia","gm_gc_army_t55am2_noinsignia","gm_gc_army_t55am2b_noinsignia","gm_pl_army_t55ak_noinsignia"];
    _ammoTrucks append ["gmx_aaf_kat1_451_reammo_wdl","gmx_aaf_kat1_454_reammo_wdl","gm_gc_bgs_ural4320_reammo_noinsignia"];
    _repairTrucks append ["gmx_aaf_u1300l_repair_wdl","gmx_aaf_bpz2a0_wdl","gm_gc_bgs_ural4320_repair_noinsignia"];
    _fuelTrucks append ["gmx_aaf_kat1_451_refuel_wdl","gm_gc_bgs_ural375d_refuel_noinsignia"];
    _medicalTrucks append ["gmx_aaf_u1300l_medic_wdl","gmx_aaf_m113a1g_medic_wdl","ggm_gc_bgs_ural375d_medic_noinsignia"];
};

if (_hasCSLA) then {
    _staticMG pushBack "US85_M2h";
    _staticAT pushBack "US85_TOW_Stat";
    _staticAA pushBack "CSLA_PLdvK59_Stat";
    _basic append ["CSLA_JARA250","US85_M1030","US85_M1008_S250","US85_M923a1_s280","CSLA_MU90_noinsignia"];
    _helisLightAttack append ["US85_MH60FFAR"];
    _helisAttack append ["US85_AH1F","CSLA_Mi17pylons_noinsignia","CSLA_Mi24V_noinsignia"];
    _transportHelicopters append ["US85_MH60M134","US85_UH60","US85_UH60M240","CSLA_Mi17_noinsignia","CSLA_Mi17mg_noinsignia"];
    _lightAPCs append ["US85_M113","AFMC_M113A2ext"];
    _lightTanks append ["CSLA_BVP1_noinsignia","CSLA_BPzV_noinsignia"];
    _militiaAPCs append ["US85_M113","AFMC_M113A2ext"];
    _APCs append ["US85_LAV25","CSLA_OT64C_noinsignia","CSLA_OT65A_noinsignia"];
    _IFVs append ["CSLA_OT62_noinsignia"];
    _unarmedVehicles append ["US85_M1025_ua","US85_M1043_ua","FIA_BTR40_noinsignia"];
    _armedVehicles append ["US85_M1025_M2","US85_M1025_M60","US85_M1043_M2","US85_M1043_M60","US85_M998SFGT","FIA_BTR40_DSKM_noinsignia"];
    _militiaCars append ["US85_M1008c","US85_M1008","CSLA_AZU_noinsignia","CSLA_AZU_para_noinsignia","CSLA_AZU_R2_noinsignia"];
    _militiaLightArmed append ["US85_M1025_M2","US85_M1025_M60","US85_M1043_M2","US85_M1043_M60","US85_M998SFGT"];
    _militiaTrucks append ["US85_M923a1c","US85_M923o","US85_M923c","US85_M923a1o"];
    _airborneVehicles append ["US85_LAV25","US85_M113"];
    _aa append ["US85_M163","CSLA_PLdvK59V3S_noinsignia"];
    _Trucks append ["US85_M923a1cm2","US85_M923a1om2","CSLA_F813o_noinsignia","CSLA_F813_noinsignia","CSLA_V3SLizard_noinsignia","CSLA_V3So_noinsignia","CSLA_V3S_noinsignia"];
    _cargoTrucks append ["US85_M923cargo","US85_M923a1_cargo","CSLA_F813o_noinsignia","CSLA_F813_noinsignia","CSLA_V3SLizard_noinsignia","CSLA_V3So_noinsignia","CSLA_V3S_noinsignia"];
    _tanks append ["US85_M1IP","US85_M1A1","CSLA_T72_noinsignia","CSLA_T72M_noinsignia","CSLA_T72M1_noinsignia"];
    _ammoTrucks append ["US85_M923a","US85_M923a1_a","CSLA_V3Sa_noinsignia"];
    _repairTrucks append ["US85_M113_DTP","US85_M923r","CSLA_DTP90_noinsignia","CSLA_V3Sr_noinsignia"];
    _fuelTrucks append ["US85_M923f","US85_M923a1_f","CSLA_V3Sf_noinsignia"];
    _medicalTrucks append ["US85_M113_AMB","CSLA_OZV90_noinsignia"];
    _policeVehs append ["CSLA_CIV_ADA1600VB","CSLA_CIV_Sarka1200PO","CSLA_CIV_Sarka1200VB","CSLA_AZU_VB"];
};

["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["howitzerMagazineHE", "6Rnd_120mm_HE_shells_RF","2Rnd_120mm_Mo_Cluster_RF"] call _fnc_saveToTemplate;
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", _militiaTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehiclesBasic", _basic] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", _planesTransport] call _fnc_saveToTemplate;
["vehiclesHelisLight", _helisLight] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _helisLightAttack] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _helisAttack] call _fnc_saveToTemplate;
["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesArtillery", _artillery] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesAPCs", _APCs] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _armedVehicles] call _fnc_saveToTemplate;
["vehiclesLightTanks",  _lightTanks] call _fnc_saveToTemplate;
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
["vehiclesAA", _aa] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["vehiclesTrucks", _Trucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;
["vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;

#include "Vanilla_Vehicle_Attributes.sqf"

["animations", [
    ["I_A_Truck_02_aa_lxWS", ["shield_hide",0.3,"hideCrates",0.3,"hideSpareWheel",0.3,"hideRoofRack",1,"hideBeacon_1",0,"hideBumper",0.3,"hideWindowProtector",0.3]],
    ["I_Tura_ZU23_lxWS", ["shield_hide",0.5]],
    ["a3a_AAF_Heli_light_03_unarmed_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0,"hide_tread",0.3]],
    ["a3a_green_Heli_light_03_unarmed_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0.3,"hide_tread",0.3]],
    ["a3a_AAF_Heli_light_03_dynamicLoadout_RF", ["door_1",0.3,"door_2",0.3,"hide_radar",0.3,"hide_antenna",0.3,"hide_float_bags",0.3]],
    ["a3a_Heli_EC_02_RF", ["hide_antenna",0.3,"hide_ir_small",0.3,"hide_ir_large",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["I_Heli_EC_01A_military_RF", ["hide_winch",0.3,"hide_mirror",0.3,"hide_antenna",0.3,"hide_ir_small",0.3,"hide_ir_large",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["B_Heli_EC_04_military_RF", ["hide_ir_large",0.3,"hide_radar",0.3,"hide_searchlamp",0.3,"hide_winch",0.3,"hide_float_bags",0.3,"hide_antenna",0.3,"hide_refuelprobe",0.3,"hide_sensor",0.3,"hide_ir_small",0.3,"hide_fueltanks",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["B_Heli_EC_03_RF", ["hide_radar",0.3,"hide_float_bags",0.3,"hide_antenna",0.3,"hide_refuelprobe",0.3,"hide_sensor",0.3,"hide_ir_small",0.3,"hide_ir_large",0.3,"hide_engfilters_01",0.3,"hide_engfilters_02",0.3,"hide_rotordome",0.3,"hide_hook",0.3,"hide_chin_plate",0.3,"hide_ceiling_blanket",0.3,"hide_cm_dispenser",0.3,"door_copilot",0,"door_pilot",0,"door_cargo_left",0.3,"door_cargo_right",0.3]],
    ["I_Pickup_aat_rf", ["hide_frame",0.3,"hide_frame_full",0.3,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack",0.3,"hide_rack_spotlights",0.3,"hide_sidesteps",0.3]],
    ["I_Pickup_rf", ["hide_bullbar",0.3,"hide_fuel_tank",1,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_cover",1,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0.3,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack",0.3,"hide_rack_spotlights",0.3,"hide_frame",0.3,"hide_sidesteps",0.3]],
    ["I_Pickup_Comms_rf", ["hide_rack",0.3,"hide_rack_antenna",0.3,"hide_frame",0.3,"hide_frame_full",0.3,"hide_frame_full_panel",0.3,"hide_box",0.3,"hide_box_door",0.3,"hide_trunk_door",0.3,"trunk_door_open",0,"box_door_open",0,"hide_police",1,"hide_Services",1,"BeaconsServicesStart",0,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_rack_spotlights",0.3,"hide_sidesteps",0.3]],
    ["I_Pickup_mmg_rf", ["hide_trunk_cover",1,"hide_frame_full",0.3,"hide_bullbar",0.3,"hide_snorkel",0.3,"hide_antenna",0.3,"hide_trunk_door",0.3,"trunk_door_open",0.3,"hide_armor_window_armor_top",1,"window_armor_hatch_L_rot",0,"window_armor_hatch_R_rot",0,"door_F_L_open",0,"door_F_R_open",0,"door_R_L_open",0,"door_R_R_open",0,"hide_frame",0.3,"hide_sidesteps",0.3]],
    ["I_TwinMortar_RF", ["hide_door_l",0.3,"hide_door_r",0.3]],
    ["I_APC_Wheeled_03_cannon_F", ["showCamonetHull", 0.3, "showSLATHull", 0.3]],
    ["I_MBT_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.25, "HideTurret", 0.3, "HideHull", 0.3]],
    ["I_APC_tracked_03_cannon_F", ["showCamonetHull", 0.3, "showCamonetTurret", 0.3, "showTools", 0.3, "showSLATHull", 0.3, "showSLATTurret", 0.3]],
    ["I_LT_01_AA_F", ["showTools", 0.3,"showCamonetHull", 0.3,"showBags",0.3,"showSLATHull", 0.3]],
    ["I_LT_01_AT_F", ["showTools", 0.3,"showCamonetHull", 0.3,"showBags", 0.3,"showSLATHull", 0.3]],
    ["I_LT_01_scout_F", ["showTools", 0.3,"showCamonetHull", 0.3,"showBags", 0.3,"showSLATHull", 0.3]],
    ["I_LT_01_cannon_F", ["showTools", 0.3,"showCamonetHull", 0.3,"showBags", 0.3,"showSLATHull", 0.3]],
    ["I_C_Offroad_02_unarmed_F", ["hideLeftDoor",0.3,"hideRightDoor",0.3,"hideRearDoor",0.3,"hideBullbar",0.3,"hideFenders",0.3,"hideHeadSupportRear",0.3,"hideHeadSupportFront",0.3,"hideRollcage",0.3,"hideSeatsRear",0,"hideSpareWheel",0.3]],
    ["a3a_Offroad_02_LMG_black_F", ["hideLeftDoor",0.3,"hideRightDoor",0.3,"hideRearDoor",0.3,"hideFenders",0.3,"hideHeadSupportFront",0.3,"hideSpareWheel",0.3]],
    ["gmx_aaf_leopard1a1a1_wdl", ["CamoNet_01_unhide",0.3,"CamoNet_05_unhide",0.3,"CamoNet_03_unhide",0.3,"SpareWheel_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gmx_aaf_leopard1a3_wdl", ["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gmx_aaf_leopard1a5_wdl", ["CamoNet_04_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"SpareWheel_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"sideskirt_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3]],
    ["gmx_aaf_m113a1g_medic_wdl", ["IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_u1300l_medic_wdl", ["sign_mlc_unhide",0.3,"sign_medic_unhide",0.3,"camonetpoles_1_1_unhide",0.3,"CamoNet_01_rack_unhide",0.3,"CamoNet_01_unhide",0.3]],
    ["gmx_aaf_kat1_451_reammo_wdl", ["cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3]],
    ["gmx_aaf_u1300l_cargo_wdl", ["BoardWall_2_1_unhide",0.3,"cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3,"BoardWall_1_1_extension_unhide",0.3,"camonetpoles_1_1_unhide",0.3,"CamoNet_01_rack_unhide",0.3,"CamoNet_01_unhide",0.3,"generator_unhide",0.3,"sign_mlc_unhide",0.3,"sign_medic_unhide",0]],
    ["gmx_aaf_kat1_451_cargo_wdl", ["cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3]],
    ["gmx_aaf_u1300l_container_wdl", ["BoardWall_2_1_unhide",0.3,"cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3,"BoardWall_1_1_extension_unhide",0.3,"camonetpoles_1_1_unhide",0.3,"CamoNet_01_rack_unhide",0.3,"CamoNet_01_unhide",0.3,"generator_unhide",0.3,"sign_mlc_unhide",0.3,"sign_medic_unhide",0.3]],
    ["gmx_aaf_kat1_451_container_wdl", ["gmx_aaf_wdl",0.3], ["cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3]],
    ["gmx_aaf_u1300l_repair_wdl", ["beacon_01_org_unhide",0.3,"CamoNet_01_rack_unhide",0.3,"CamoNet_01_unhide",0.3,"generator_unhide",0.3,"sign_mlc_unhide",0.3,"sign_medic_unhide",0]],
    ["gmx_aaf_bpz2a0_wdl", ["beacon_01_org_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_brpz1_wdl", ["beacon_01_org_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_dk_army_typ247_cargo", ["cover_01_hoops_unhide",0.3,"sirenLights_02_unhide",0,"sirenLights_03_unhide",0,"sirenLights_01_unhide",0,"sirenLights_05_unhide",0,"cargo_rack_01_unhide",0.3,"cargo_rack_03_unhide",0.3,"wheel_1_1_cap_unhide",0.3]],
    ["gmx_aaf_m113a1g_apc_wdl", ["IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"CamoNet_02_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_m113a1g_apc_milan_wdl", ["IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"storageBox_01_unhide",0.3,"CamoNet_02_unhide",0.3,"generator_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_m113a1g_command_wdl", ["antennaMast_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"generator_01_unhide",0.3,"storageBox_01_unhide",0.3,"IceCleats_01_unhide",0.3,"IceCleats_02_unhide",0.3,"SupportPoles_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_m113a2dk_wdl", ["camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3]],
    ["gmx_aaf_luchsa1_wdl", ["CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"radio_03_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gmx_aaf_luchsa2_wdl", ["radio_03_unhide",0.3,"SignsExtraWide_unhide",0.3,"TurretBox_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gmx_aaf_marder1a1plus_wdl", ["beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"CamoNet_01_unhide",0.3,"supply_01_unhide",0.3,"supply_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gmx_aaf_marder1a1a_wdl", ["beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"CamoNet_01_unhide",0.3,"supply_01_unhide",0.3,"supply_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gmx_aaf_marder1a2_wdl", ["beacon_01_org_unhide",0,"sideskirt_unhide",0.3,"CamoNet_01_unhide",0.3,"supply_01_unhide",0.3,"supply_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3]],
    ["gmx_aaf_fuchsa0_command_wdl", ["radio_04_unhide",0.3,"antennamast_01_elev_trigger",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"CamoNet_01_unhide",0.3,"CamoNet_02_rack_unhide",0.3,"StowingBox_01_unhide",0.3,"SignsExtraWide_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_fuchsa0_engineer_wdl", ["ringbuoy_01_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"CamoNet_01_unhide",0.3,"CamoNet_02_rack_unhide",0.3,"SignsExtraWide_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gmx_aaf_fuchsa0_reconnaissance_wdl", ["beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"CamoNet_01_unhide",0.3,"CamoNet_02_rack_unhide",0.3,"StowingBox_01_unhide",0.3,"SignsExtraWide_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_gc_army_zsu234v1_noinsignia", ["camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"luggageBoard_01_unhide",0.3,"Barrel_01_unhide",0.3,"CamoNet_01_unhide",0.3,"fireExtinguisher_01_unhide",0.3,"FuelCanisterHolder_01_unhide",0.3,"FuelCanisterHolder_02_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"mainTurret_SearchRadar_trav_unhide",0.3,"wheelChock_01_unhide",0.3,"wheelChock_02_unhide",0.3,"woodenbeam_01_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
    ["gm_gc_army_bmp1sp2_noinsignia", ["spareTracks_1_1_unhide",0.3,"spareTracks_1_2_unhide",0.3,"spareTracks_2_1_unhide",0.3,"wheelChock_1_1_unhide",0.3,"wheelChock_1_2_unhide",0.3,"woodenBeam_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"AmmoBox_08_unhide",0.3,"AmmoBox_09_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
    ["gm_gc_army_brdm2_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
    ["gm_gc_army_brdm2um_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanisterHolder_01_unhide",0.3,"FuelCanisterHolder_02_unhide",0.3,"CamoNet_01_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"generator_01_unhide",0.3,"AmmoBox_03_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
    ["gm_gc_army_btr60pa_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"FuelCanister_04_unhide",0.3,"FuelCanister_05_unhide",0.3,"FuelCanister_06_unhide",0.3,"Barrel_01_unhide",0.3,"SpareWheel_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
    ["gm_gc_army_btr60pa_dshkm_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"FuelCanister_04_unhide",0.3,"FuelCanister_05_unhide",0.3,"FuelCanister_06_unhide",0.3,"Barrel_01_unhide",0.3,"SpareWheel_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
    ["gm_gc_army_btr60pb_noinsignia", ["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"FuelCanister_04_unhide",0.3,"FuelCanister_05_unhide",0.3,"Barrel_01_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"SpareWheel_03_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"FrontLight_02_Cover_unhide",0.3]],
    ["gm_gc_army_btr60pu12_noinsignia",["ConvoyLights_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"FuelCanister_04_unhide",0.3,"FuelCanister_05_unhide",0.3,"Barrel_01_unhide",0.3,"SpareWheel_03_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"FrontLight_02_Cover_unhide",0.3]],
    ["gm_pl_army_ural375d_mlrs",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"tools_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3,"toolbox_unhide",0.3,"TowBar_01_unhide",0.3]],
    ["gm_gc_bgs_uaz469_cargo_noinsignia", ["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"windshield",0.3,"windows_unhide",0.3,"cover_hoops_unhide",0.3,"spare_wheel_unhide",0.3,"antenna_01_unhide",0.3,"antenna_02_unhide",0.3,"FogLights_01_unhide",0.3,"mirrors_01_unhide",0.3,"doors_unhide",0.3]],
    ["gm_gc_army_uaz469_dshkm_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"windows_unhide",0.3,"mirrors_01_unhide",0.3,"windshield",0.3,"spare_wheel_unhide",0.3,"antenna_01_unhide",0.3,"antenna_02_unhide",0.3,"FogLights_01_unhide",0.3,"doors_unhide",0.3]],
    ["gm_gc_army_uaz469_spg9_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"windshield",0.3,"windows_unhide",0.3,"mirrors_01_unhide",0.3,"spare_wheel_unhide",0.3,"antenna_01_unhide",0.3,"antenna_02_unhide",0.3,"FogLights_01_unhide",0.3,"doors_unhide",0.3]],
    ["gm_gc_bgs_ural4320_reammo_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"cover_hide_unhide",0.3,"winch_unhide",0.3,"tools_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"coldWeatherKit_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3,"lightGuard_unhide",0.3,"toolbox_unhide",0.3]],
    ["gm_gc_bgs_ural375d_refuel_noinsignia", ["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"toolbox_unhide",0.3,"tools_unhide",0.3,"TowBar_01_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3]],
    ["gm_gc_army_ural44202_noinsignia", ["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"coldWeatherKit_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3,"lightGuard_unhide",0.3,"toolbox_unhide",0.3,"tools_unhide",0.3]],
    ["gm_gc_bgs_ural375d_medic_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"toolbox_unhide",0.3,"tools_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3,"TowBar_01_unhide",0.3]],
    ["gm_gc_bgs_ural4320_repair_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"winch_unhide",0.3,"toolbox_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"coldWeatherKit_unhide",0.3,"lightGuard_unhide",0.3,"tools_unhide",0.3]],
    ["gm_gc_bgs_ural4320_cargo_noinsignia",["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"cover_hide_unhide",0.3,"winch_unhide",0.3,"roofRack_unhide",0.3,"camonet_01_unhide",0.3,"camonet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"Barrel_01_unhide",0.3,"coldWeatherKit_unhide",0.3,"fuelcan_1_1_unhide",0.3,"fuelcan_1_2_unhide",0.3,"lightGuard_unhide",0.3,"toolbox_unhide",0.3,"tools_unhide",0.3]],
    ["gm_gc_airforce_mi2p_noinsignia", ["cablecutter_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1,"winch_unhide",0.3,"fueltank_left_unhide",0.3,"fueltank_right_unhide",0.3]],
    ["gm_gc_airforce_mi2t_noinsignia", ["cablecutter_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1,"winch_unhide",0.3,"fueltank_left_unhide",0.3,"fueltank_right_unhide",0.3]],
    ["gm_gc_airforce_mi2urn_noinsignia", ["cablecutter_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1,"winch_unhide",0.3,"fueltank_left_unhide",0.3,"fueltank_right_unhide",0.3]],
    ["gm_gc_airforce_mi2us_noinsignia", ["cablecutter_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1,"winch_unhide",0.3,"fueltank_left_unhide",0.3,"fueltank_right_unhide",0.3]],
    ["gm_gc_army_pt76b_noinsignia", ["ConvoyLights_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"FuelTank_01_unhide",0.3,"FuelTank_02_unhide",0.3,"FuelTank_03_unhide",0.3,"FuelTank_04_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"FrontLight_02_Cover_unhide",0.3]],
    ["gm_gc_army_t55_noinsignia", ["ConvoyLights_01_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
    ["gm_gc_army_t55a_noinsignia", ["ConvoyLights_01_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
    ["gm_gc_army_t55ak_noinsignia",["ConvoyLights_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"antennaMast_01_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
    ["gm_gc_army_t55am2_noinsignia",["ConvoyLights_01_unhide",0.3,"turretBox_03_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
    ["gm_gc_army_t55am2b_noinsignia", ["ConvoyLights_01_unhide",0.3,"turretBox_03_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
    ["gm_gc_bgs_mi2p_noinsignia", ["cablecutter_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1,"winch_unhide",0.3,"fueltank_left_unhide",0.3,"fueltank_right_unhide",0.3]],
    ["gm_gc_bgs_mi2us_noinsignia", ["cablecutter_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1,"winch_unhide",0.3,"fueltank_left_unhide",0.3,"fueltank_right_unhide",0.3]],
    ["gm_pl_army_ot64a_noinsignia", ["RoadPrioritySign_01_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
    ["gm_pl_army_t55ak_noinsignia", ["RoadPrioritySign_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"antennaMast_01_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
    ["gm_pl_airforce_mi2urs_noinsignia", ["cablecutter_unhide",0.3,"camera_front_unhide",0.3,"camera_rear_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1]],
    ["gm_pl_airforce_mi2urp_noinsignia", ["cablecutter_unhide",0.3,"camera_front_unhide",0.3,"camera_rear_unhide",0.3,"fan_unhide",0.3,"plugs_unhide",0.1,"skids_unhide",0.1]],
    ["CSLA_Mi24V_noinsignia", ["addEVU",0.3,"addASO_Tail",0.3,"addASO_Body",0.3]],
    ["CSLA_PLdvK59V3S_noinsignia",["addTools",0.3,"addFuelKanister",0.3]],
    ["CSLA_BVP1_noinsignia", ["addCoverTurret",0.3,"addTools",0.3,"addRope",0.3,"addBar",0.3,"addMudguards",0.3]],
    ["CSLA_BPzV_noinsignia", ["addCoverTurret",0.3,"addTools",0.3,"addRope",0.3,"addBar",0.3,"addMudguards",0.3]],
    ["CSLA_DTP90_noinsignia", ["addTools",0.3,"addRope",0.3,"addBar",0.3,"addMudguards",0.3]],
    ["CSLA_MU90_noinsignia", ["addTools",0.3,"addRope",0.3,"addBar",0.3,"addMudguards",0.3]],
    ["CSLA_OT62_noinsignia", ["addTools",0.3,"addRope",0.3,"addCover",0.3,"addSpareTracks",0.3]],
    ["CSLA_OT64C_noinsignia", ["addTools",0.3,"addRope",0.3,"addTripod",0.3]],
    ["CSLA_OT65A_noinsignia", ["addTools",0.3,"addRope",0.3,"addFuelKanister",0.3]],
    ["CSLA_OZV90_noinsignia", ["addTools",0.3,"addRope",0.3,"addBar",0.3,"addMudguards",0.3]],
    ["CSLA_AZU_noinsignia", ["ADD_canvas",0.3,"ADD_canvas_frame",0.3,"ADD_antenna",0.3,"ADD_sparewheel",0.3,"ADD_fuelcan",0.3,"ADD_frame",0.3,"ADD_light_covers",0.3,"ADD_searchlight",0.3]],
    ["CSLA_AZU_para_noinsignia", ["ADD_antenna",0.3,"ADD_sparewheel",0.3,"ADD_fuelcan",0.3,"ADD_frame",0.3,"ADD_light_covers",0.3,"ADD_searchlight",0.3]],
    ["CSLA_AZU_R2_noinsignia", ["ADD_canvas",0.3,"ADD_canvas_frame",0.3,"ADD_sparewheel",0.3,"ADD_fuelcan",0.3,"ADD_frame",0.3,"ADD_light_covers",0.3,"ADD_searchlight",0.3]],
    ["CSLA_V3SLizard_noinsignia", ["addTools",0.3,"addFuelKanister",0.3]],
    ["CSLA_V3Sa_noinsignia", ["addCanvas",0.3,"addAmmo",1,"addSpareWheel",0.3,"addFuelKanister",0.3]],
    ["CSLA_V3Sf_noinsignia", ["addSpareWheel",0.3,"addFuelKanister",0.3]],
    ["CSLA_V3So_noinsignia", ["addCanvas",0,"addSpareWheel",0.3,"addFuelKanister",0.3]],
    ["CSLA_V3S_noinsignia", ["addCanvas",1,"addSpareWheel",0.3,"addFuelKanister",0.3]],
    ["CSLA_V3Sr_noinsignia", ["addWindowCovers",0.3,"addStowage",0.3,"addTools",0.3,"addSpareWheel",0.3,"addFuelKanister",0.3]],
    ["CSLA_Mi17_noinsignia", ["ADD_winch",0.5]],
    ["CSLA_Mi17mg_noinsignia", ["ADD_winch",0.5]],
    ["CSLA_Mi17pylons_noinsignia", ["ADD_winch",0.5]],
    ["CSLA_T72_noinsignia", ["ADD_antenna",0.3,"ADD_frontMudGuards",0.3,"ADD_trackLinks",0.3,"ADD_fuelDrums",0.3,"ADD_log",0.3,"ADD_R130",0.3,"ADD_nsvMag1",0.3,"ADD_nsvMag2",0.3,"ADD_camoNet",0.3,"ADD_ropeFront",0.3,"ADD_ropeBack",0.3]],
    ["CSLA_T72M_noinsignia", ["ADD_antenna",0.3,"ADD_frontMudGuards",0.3,"ADD_trackLinks",0.3,"ADD_fuelDrums",0.3,"ADD_log",0.3,"ADD_R130",0.3,"ADD_nsvMag1",0.3,"ADD_nsvMag2",0.3,"ADD_camoNet",0.3,"ADD_ropeFront",0.3,"ADD_ropeBack",0.3]],
    ["CSLA_T72M1_noinsignia", ["ADD_antenna",0.3,"ADD_frontMudGuards",0.3,"ADD_trackLinks",0.3,"ADD_fuelDrums",0.3,"ADD_log",0.3,"ADD_R130",0.3,"ADD_nsvMag1",0.3,"ADD_nsvMag2",0.3,"ADD_camoNet",0.3,"ADD_ropeFront",0.3,"ADD_ropeBack",0.3]],
    ["FIA_BTR40_noinsignia", ["ADD_canvas",0.3,"ADD_sparewheel",0.3]],
    ["FIA_BTR40_DSKM_noinsignia",["ADD_sparewheel",0.5]],
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
    ["I_Tura_ZU23_lxWS", ["Green", 1, "SFIA", 0]],
    ["B_Heli_EC_03_RF", ["AAF", 0.5, "AAF_Olive", 0.5]],
    ["I_Heli_EC_01A_military_RF", ["AAF", 0.5, "AAF_Olive", 0.5]],
    ["B_Heli_EC_04_military_RF", ["AAF", 0.5, "AAF_Olive", 0.5]],
    ["a3a_Heli_EC_02_RF", ["AAF", 0.5, "AAF_Olive", 0.5]],
    ["I_LT_01_AA_F", ["Indep_Olive", 0, "Indep_01", 0.5]],
    ["I_LT_01_cannon_F", ["Indep_Olive", 0, "Indep_01", 0.5]],
    ["I_LT_01_AT_F", ["Indep_Olive", 0, "Indep_01", 0.5]],
    ["I_LT_01_scout_F",["Indep_Olive", 0, "Indep_01", 0.5]],
    ["I_Plane_Fighter_04_F", ["CamoGrey",0.1, "DigitalCamoGrey", 0.4, "DigitalCamoGreen",0.5]],
    ["I_Heli_light_03_unarmed_F", ["Indep", 0.5]],
    ["a3a_Offroad_02_LMG_black_F", ["Olive",1]],
    ["I_C_Offroad_02_unarmed_F", ["Olive",1]],
    ["gm_ge_pol_w123", ["gm_darklblue",1]],
    ["gm_ge_pol_typ1200",["gm_saphireblue",1]],
    ["gm_gc_pol_p601", ["gm_kosmosblau",1]],
    ["gm_ge_pol_typ253",["gm_navyblue_damusowhite",1]],
    ["CSLA_AZU_VB", ["vb2",1]],
    ["US85_UH60M240", ["NATO",1]],
    ["US85_UH60", ["NATO",1]],
    ["US85_MH60FFAR", ["NATO",1]],
    ["US85_MH60M134", ["NATO",1]],
    ["US85_AH1F", ["AFMC",1]],
    ["US85_M1IP", ["NATOg",1]],
    ["US85_M1A1", ["NATOg",1]],
    ["US85_LAV25", ["NATOg",1]],
    ["US85_M113", ["NATOg",1]],
    ["US85_M163", ["NATOg",1]],
    ["AFMC_M113A2ext",["NATOg",1]],
    ["US85_M113_DTP", ["NATOg",1]],
    ["US85_M923r", ["NATOg",1]],
    ["US85_M113_AMB", ["NATOg",1]],
    ["US85_M923f", ["NATOg",1]],
    ["US85_M923a1_f", ["NATOg",1]],
    ["US85_M923a", ["NATOg",1]],
    ["US85_M923a1_a", ["NATOg",1]],
    ["US85_M923a1c", ["NATOg",1]],
    ["US85_M923o", ["NATOg",1]],
    ["US85_M923c", ["NATOg",1]],
    ["US85_M923a1o", ["NATOg",1]],
    ["US85_M923a1cm2", ["NATOg",1]],
    ["US85_M923a1om2", ["NATOg",1]],
    ["US85_M923cargo", ["NATOg",1]],
    ["US85_M923a1_cargo", ["NATOg",1]],
    ["US85_M1008c", ["NATOg",1]],
    ["US85_M1008", ["NATOg",1]],
    ["US85_M1025_ua", ["NATOg",1]],
    ["US85_M1043_ua", ["NATOg",1]],
    ["US85_M1025_M2", ["NATOg",1]],
    ["US85_M1025_M60", ["NATOg",1]],
    ["US85_M1043_M2", ["NATOg",1]],
    ["US85_M1043_M60", ["NATOg",1]],
    ["US85_M998SFGT", ["NATOg",1]],
    ["CSLA_Mi24V_noinsignia", ["camo6",1]],
    ["FIA_BTR40_DSKM_noinsignia",["FIAg",1]],
    ["FIA_BTR40_noinsignia",["FIAg",1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

private _faces = [
    "GreekHead_A3_02",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_05",
    "GreekHead_A3_06",
    "GreekHead_A3_07",
    "GreekHead_A3_08",
    "GreekHead_A3_09",
    "GreekHead_A3_11",
    "GreekHead_A3_12",
    "GreekHead_A3_13",
    "GreekHead_A3_14",
    "Ioannou",
    "Mavros",
    "GreekHead_A3_10_l",
    "GreekHead_A3_10_sa",
    "GreekHead_A3_10_a"
];
["faces", _faces] call _fnc_saveToTemplate;
["voices", ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]] call _fnc_saveToTemplate;

["insignia", ["AAF_1stRegiment", "", ""]] call _fnc_saveToTemplate;
["milInsignia", ["AAF_3rdRegiment", "", ""]] call _fnc_saveToTemplate;

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
["launch_I_Titan_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];
_loadoutData set ["sidearms", []];

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

_loadoutData set ["traitorUniforms", ["U_BG_Guerrilla_6_1"]];
_loadoutData set ["traitorVests", ["V_TacVest_oli", "V_TacVest_camo", "V_BandollierB_oli"]];
_loadoutData set ["traitorHats", ["H_Cap_grn","H_Cap_oli"]];


if (_hasArtOfWar) then {
	_loadoutData set ["officerUniforms", ["U_I_ParadeUniform_01_AAF_F","U_I_ParadeUniform_01_AAF_decorated_F","U_I_OfficerUniform"]];
	_loadoutData set ["officerVests", ["V_TacVest_oli"]];
	_loadoutData set ["officerHats", ["H_ParadeDressCap_01_AAF_F", "H_Beret_grn"]];
} else {
	_loadoutData set ["officerUniforms", ["U_I_OfficerUniform"]];
	_loadoutData set ["officerVests", ["V_Rangemaster_belt"]];
	_loadoutData set ["officerHats", ["H_MilCap_dgtl", "H_Beret_grn"]];
};
_loadoutData set ["cloakUniforms", ["U_I_FullGhillie_ard", "U_I_FullGhillie_lsh", "U_I_FullGhillie_sard", "U_I_GhillieSuit"]];
_loadoutData set ["cloakVests", ["V_PlateCarrierIA1_dgtl", "V_BandollierB_oli", "V_Chestrig_oli", "V_TacVest_oli"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["V_Chestrig_oli"]];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_digi_F"]];
_loadoutData set ["atBackpacks", ["B_Carryall_oli"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["H_Beret_blk", "H_MilCap_dgtl"]];
_loadoutData set ["sniHats", ["H_Booniehat_dgtl"]];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];

if (_hasContact) then {
    _loadoutData set ["goggles", ["G_Combat", "G_Lowprofile", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"]];
} else {
    _loadoutData set ["goggles", ["G_Combat", "G_Lowprofile"]];
};

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "I_IR_Grenade"];
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

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["vests", ["V_TacVest_oli", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierIA1_dgtl"]];
_sfLoadoutData set ["Hvests", ["V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli"]];
_sfLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_Carryall_oli", "B_AssaultPack_dgtl","B_Kitbag_sgg"]];
_sfLoadoutData set ["helmets", ["H_HelmetIA","H_Cap_blk_Raven","H_Cap_oli_hs","H_Cap_headphones","H_Booniehat_khk_hs","H_Booniehat_oli","H_Booniehat_dgtl","H_Watchcap_camo","H_Shemag_olive","H_Shemag_olive_hs"]];
if (_hasMarksman) then {
	_sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];
} else {
	_sfLoadoutData set ["binoculars", ["Rangefinder"]];
};

if (_hasContact) then {
    _sfLoadoutData set ["uniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve", "U_O_R_Gorka_01_F", "U_I_CBRN_Suit_01_AAF_F"]];
} else {
    _sfLoadoutData set ["uniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"]];
};

if (_hasContact) then {
   (_sfLoadoutData get "vests") append ["V_CarrierRigKBT_01_light_Olive_F","V_CarrierRigKBT_01_Olive_F","V_SmershVest_01_F","V_SmershVest_01_radio_F"];
   (_sfLoadoutData get "Hvests") pushBack "V_CarrierRigKBT_01_heavy_Olive_F";
   (_sfLoadoutData get "helmets") append ["H_HelmetHBK_F","H_HelmetHBK_ear_F","H_HelmetHBK_headset_F","H_HelmetHBK_chops_F","H_HelmetAggressor_F","H_HelmetAggressor_cover_F"];
};

if (_hasLawsOfWar) then {
   (_sfLoadoutData get "Hvests") pushBack "V_EOD_olive_F";
   (_sfLoadoutData get "helmets") pushBack "H_PASGT_basic_olive_F";
};

if (_hasApex) then {
   (_sfLoadoutData get "backpacks") append ["B_ViperLightHarness_oli_F","B_ViperHarness_oli_F"];
};

if (_hasRF) then {
   (_sfLoadoutData get "backpacks") pushBack "B_DuffleBag_Olive_NoLogo_RF";
   (_sfLoadoutData get "helmets") append ["H_HelmetIA_sb_digital_RF","H_HelmetHeavy_Olive_RF","H_HelmetHeavy_Simple_Olive_RF","H_HelmetHeavy_VisorUp_Olive_RF"];
};

if (_hasCSLA) then {
   (_sfLoadoutData get "backpacks") append ["US85_bpAlice","US85_bpSf"];
};

if (_hasGM) then {
   (_sfLoadoutData get "backpacks") append ["gm_dk_army_backpack_73_oli","gm_ge_army_backpack_90_oli","gm_ge_army_backpack_80_oli"];
   (_sfLoadoutData get "helmets") append ["gm_dk_headgear_m96_oli","gm_ge_headgear_beret_crew_blk","gm_ge_headgear_m92_cover_glasses_oli","gm_ge_headgear_m92_cover_oli","gm_ge_headgear_psh77_oli","gm_ge_headgear_psh77_up_oli","gm_ge_headgear_psh77_down_oli","gm_ge_headgear_hat_beanie_crew_blk"];
};

if (_hasWs) then {
   (_sfLoadoutData get "helmets") append ["lxWS_H_bmask_camo02","lxWS_H_Headset","lxWS_H_PASGT_goggles_olive_F","H_Beret_Headset_lxWS"];
};

_sfLoadoutData set ["slRifles", [
["arifle_Mk20_F", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_GL_F", "muzzle_snds_M", "acc_pointer_IR", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_sfLoadoutData set ["rifles", [
["arifle_Mk20_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_sfLoadoutData set ["carbines", [
["arifle_Mk20C_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20C_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["arifle_Mk20_GL_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];

if (_hasWs) then {
    _sfLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["glaunch_GLX_camo_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], [], ""]
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
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["LMG_Mk200_F", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""]
];

if (_hasWs) then {
    _mgs append [
        ["LMG_S77_AAF_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "suppressor_h_lxWS", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};
_sfLoadoutData set ["machineGuns", _mgs];

_sfLoadoutData set ["marksmanRifles", [
    ["srifle_EBR_F", "muzzle_snds_B", "acc_pointer_IR", "optic_DMS", ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""],
    ["srifle_EBR_F", "muzzle_snds_B", "acc_pointer_IR", "optic_NVS", ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""],
    ["srifle_EBR_F", "muzzle_snds_B", "acc_pointer_IR", "optic_Hamr", ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["srifle_GM6_F", "", "", "optic_SOS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_F", "", "", "optic_LRPS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["hgun_ACPC2_F", "muzzle_snds_acp", "acc_flashlight_pistol", "", [], [], ""]
]];

if (_hasWs) then {
    (_sfLoadoutData get "slRifles") append [
        ["sgun_aa40_lxWS","muzzle_snds_12Gauge_lxWS","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_Galat_lxWS","suppressor_h_lxWS","acc_pointer_IR","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","suppressor_h_lxWS","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_sfLoadoutData get "rifles") append [
        ["sgun_aa40_lxWS","muzzle_snds_12Gauge_lxWS","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_Galat_lxWS","suppressor_h_lxWS","acc_pointer_IR","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","suppressor_h_lxWS","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_sfLoadoutData get "grenadeLaunchers") append [
        ["arifle_SLR_V_GL_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS","1Rnd_58mm_AT_lxWS","1Rnd_50mm_Smoke_lxWS"], ""],
        ["arifle_VelkoR5_GL_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","suppressor_l_lxWS","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
	["arifle_SLR_Para_lxWS", "suppressor_h_lxWS", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	["arifle_SLR_Para_snake_lxWS", "suppressor_h_lxWS", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
    (_sfLoadoutData get "marksmanRifles") append [
        ["srifle_EBR_blk_lxWS", "muzzle_snds_B", "acc_pointer_IR", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], ""]
    ];
};
if (_hasMarksman) then {
    (_sfLoadoutData get "marksmanRifles") append [
        ["srifle_DMR_03_khaki_F", "muzzle_snds_B", "acc_pointer_IR", "optic_AMS_khk",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_03_F", "muzzle_snds_B", "acc_pointer_IR", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_06_olive_F", "muzzle_snds_B", "", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"]
    ];
    _mgs append [
        ["MMG_02_black_F", "muzzle_snds_338_green", "acc_pointer_IR", "optic_Holosight_blk_F", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "muzzle_snds_338_green", "acc_pointer_IR", "optic_MRCO", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "muzzle_snds_338_green", "acc_pointer_IR", "optic_Hamr", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "muzzle_snds_338_green", "acc_pointer_IR", "optic_NVS", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"]
    ];
};

if (_hasApex) then {
    _mgs append [
        ["LMG_03_F", "muzzle_snds_H_MG_khk_F", "acc_pointer_IR", "optic_ERCO_blk_F", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""],
        ["LMG_03_F", "muzzle_snds_H_MG_khk_F", "acc_pointer_IR", "optic_MRCO", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""],
        ["LMG_03_F", "muzzle_snds_H_MG_khk_F", "acc_pointer_IR", "optic_Hamr", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""]
    ];
    (_sfLoadoutData get "SMGs") append [
        ["SMG_05_F","muzzle_snds_L","acc_pointer_IR","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
    ];
};

if (_hasContact) then {
    (_sfLoadoutData get "slRifles") append [
        ["arifle_MSBS65_UBS_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_sfLoadoutData get "rifles") append [
        ["arifle_MSBS65_UBS_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_sfLoadoutData get "grenadeLaunchers") append [
        ["arifle_MSBS65_GL_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], "bipod_02_F_lush"],
        ["arifle_MSBS65_GL_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], "bipod_02_F_lush"]
    ];
    (_sfLoadoutData get "carbines") append [
        ["arifle_MSBS65_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_02_F_lush"],
        ["arifle_MSBS65_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_02_F_lush"]
    ];
    (_sfLoadoutData get "marksmanRifles") append [
        ["arifle_MSBS65_Mark_F", "muzzle_snds_H", "acc_pointer_IR", "optic_DMS_weathered_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_02_F_lush"]
    ];
    _mgs append [
        ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_DMS_weathered_Kir_F", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"],
        ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"],
        ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"]
    ];
};

if (_hasRF) then {
    (_sfLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","muzzle_snds_acp","acc_pointer_IR","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["U_I_CombatUniform_shortsleeve", "U_I_CombatUniform"]];
_eliteLoadoutData set ["slUniforms", ["U_I_OfficerUniform"]];
_eliteLoadoutData set ["vests", ["V_TacVest_oli", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierIA1_dgtl"]];
_eliteLoadoutData set ["Hvests", ["V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli"]];
_eliteLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_Carryall_oli", "B_AssaultPack_dgtl","B_Kitbag_sgg"]];
_eliteLoadoutData set ["helmets", ["H_HelmetIA","H_Cap_blk_Raven","H_Cap_oli_hs","H_Cap_headphones","H_Booniehat_khk_hs","H_Booniehat_oli","H_Booniehat_dgtl","H_Watchcap_camo","H_Shemag_olive","H_Shemag_olive_hs"]];
if (_hasMarksman) then {
	_eliteLoadoutData set ["binoculars", ["Laserdesignator_03"]];
} else {
	_eliteLoadoutData set ["binoculars", ["Rangefinder"]];
};

if (_hasWs) then {
	_eliteLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_Carryall_oli", "B_AssaultPack_dgtl","I_shield_backpack_lxWS"]];
} else {
	_eliteLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_Carryall_oli", "B_AssaultPack_dgtl"]];
};

if (_hasContact) then {
   (_eliteLoadoutData get "uniforms") pushBack "U_O_R_Gorka_01_F";
   (_eliteLoadoutData get "vests") append ["V_CarrierRigKBT_01_light_Olive_F","V_CarrierRigKBT_01_Olive_F"];
   (_eliteLoadoutData get "Hvests") pushBack "V_CarrierRigKBT_01_heavy_Olive_F";
   (_eliteLoadoutData get "helmets") append ["H_HelmetHBK_F","H_HelmetHBK_ear_F","H_HelmetHBK_headset_F","H_HelmetHBK_chops_F","H_HelmetAggressor_F","H_HelmetAggressor_cover_F"];
};

if (_hasLawsOfWar) then {
   (_eliteLoadoutData get "Hvests") pushBack "V_EOD_olive_F";
   (_eliteLoadoutData get "helmets") pushBack "H_PASGT_basic_olive_F";
};

if (_hasApex) then {
   (_eliteLoadoutData get "backpacks") append ["B_ViperLightHarness_oli_F","B_ViperHarness_oli_F"];
};

if (_hasRF) then {
   (_eliteLoadoutData get "backpacks") append ["B_DuffleBag_Olive_NoLogo_RF","I_CommandoMortar_weapon_RF"];
   (_eliteLoadoutData get "helmets") append ["H_HelmetIA_sb_digital_RF","H_HelmetHeavy_Olive_RF","H_HelmetHeavy_Simple_Olive_RF","H_HelmetHeavy_VisorUp_Olive_RF"];
};

if (_hasCSLA) then {
   (_eliteLoadoutData get "backpacks") append ["US85_bpAlice","US85_bpSf"];
};

if (_hasGM) then {
   (_eliteLoadoutData get "backpacks") append ["gm_dk_army_backpack_73_oli","gm_ge_army_backpack_90_oli","gm_ge_army_backpack_80_oli"];
   (_eliteLoadoutData get "helmets") append ["gm_dk_headgear_m96_oli","gm_ge_headgear_beret_crew_blk","gm_ge_headgear_m92_cover_glasses_oli","gm_ge_headgear_m92_cover_oli","gm_ge_headgear_psh77_oli","gm_ge_headgear_psh77_up_oli","gm_ge_headgear_psh77_down_oli","gm_ge_headgear_hat_beanie_crew_blk"];
};

if (_hasWs) then {
   (_eliteLoadoutData get "helmets") append ["lxWS_H_bmask_camo02","lxWS_H_Headset","lxWS_H_PASGT_goggles_olive_F","H_Beret_Headset_lxWS"];
   (_eliteLoadoutData get "backpacks") pushBack "I_shield_backpack_lxWS";
};

_eliteLoadoutData set ["slRifles", [
["arifle_Mk20_F", "", "acc_pointer_IR", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_GL_F", "", "acc_pointer_IR", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["rifles", [
["arifle_Mk20_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "", "acc_pointer_IR", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["arifle_Mk20C_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20C_F", "", "acc_pointer_IR", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["arifle_Mk20_GL_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];

if (_hasWs) then {
    _eliteLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["glaunch_GLX_camo_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], [], ""]
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
["SMG_02_F", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""]
];

if (_hasWs) then {
    _mgs append [
        ["LMG_S77_AAF_lxWS", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "", "acc_pointer_IR", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};

_eliteLoadoutData set ["marksmanRifles", [
    ["srifle_EBR_F", "", "acc_pointer_IR", "optic_DMS", ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""],
    ["srifle_EBR_F", "", "acc_pointer_IR", "optic_NVS", ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""],
    ["srifle_EBR_F", "", "acc_pointer_IR", "optic_Hamr", ["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], ""]
]];
_eliteLoadoutData set ["sniperRifles", [
["srifle_GM6_F", "", "", "optic_SOS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_F", "", "", "optic_LRPS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["hgun_ACPC2_F", "", "acc_flashlight_pistol", "", [], [], ""]
]];

if (_hasWs) then {
    (_eliteLoadoutData get "slRifles") append [
        ["sgun_aa40_lxWS","","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_Galat_lxWS","","acc_pointer_IR","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["sgun_aa40_lxWS","","saber_light_ir_lxWS","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_Galat_lxWS","","acc_pointer_IR","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_eliteLoadoutData get "grenadeLaunchers") append [
        ["arifle_SLR_V_GL_lxWS","","","optic_Hamr",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS","1Rnd_58mm_AT_lxWS","1Rnd_50mm_Smoke_lxWS"], ""],
        ["arifle_VelkoR5_GL_lxWS","","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
    (_eliteLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","","acc_pointer_IR","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""],
	["arifle_SLR_Para_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""],
	["arifle_SLR_Para_snake_lxWS", "", "saber_light_lxWS", "optic_r1_high_black_sand_lxWS",  ["20Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS", "30Rnd_762x51_slr_lxWS"], [], ""]
    ];
    (_eliteLoadoutData get "marksmanRifles") append [
        ["srifle_EBR_blk_lxWS", "", "acc_pointer_IR", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], ""]
    ];
};
if (_hasMarksman) then {
    (_eliteLoadoutData get "marksmanRifles") append [
        ["srifle_DMR_03_khaki_F", "", "acc_pointer_IR", "optic_AMS_khk",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_03_F", "", "acc_pointer_IR", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_06_olive_F", "", "", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"]
    ];
    _mgs append [
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_MRCO", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_Hamr", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_NVS", ["130Rnd_338_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag"], [], "bipod_03_F_blk"]
    ];
};

if (_hasApex) then {
    (_eliteLoadoutData get "marksmanRifles") append [
        ["srifle_DMR_03_khaki_F", "", "acc_pointer_IR", "optic_AMS_khk",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_03_F", "", "acc_pointer_IR", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_06_olive_F", "", "", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"]
    ];
    _mgs append [
        ["LMG_03_F", "", "acc_pointer_IR", "optic_ERCO_blk_F", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""],
        ["LMG_03_F", "", "acc_pointer_IR", "optic_MRCO", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""],
        ["LMG_03_F", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""]
    ];
    (_eliteLoadoutData get "SMGs") append [
        ["SMG_05_F","","acc_pointer_IR","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
    ];
};

if (_hasContact) then {
    (_eliteLoadoutData get "slRifles") append [
        ["arifle_MSBS65_UBS_F", "", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F", "", "acc_pointer_IR", "optic_Hamr",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["arifle_MSBS65_UBS_F", "", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""],
        ["arifle_MSBS65_UBS_F", "", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","6Rnd_12Gauge_Slug"], ""]
    ];
    (_eliteLoadoutData get "grenadeLaunchers") append [
        ["arifle_MSBS65_GL_F", "", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], "bipod_02_F_lush"],
        ["arifle_MSBS65_GL_F", "", "acc_pointer_IR", "optic_MRCO",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], "bipod_02_F_lush"]
    ];
    (_eliteLoadoutData get "carbines") append [
        ["arifle_MSBS65_F", "", "acc_pointer_IR", "optic_ico_01_f",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_02_F_lush"],
        ["arifle_MSBS65_F", "", "acc_pointer_IR", "optic_Holosight_blk_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_02_F_lush"]
    ];
    (_eliteLoadoutData get "marksmanRifles") append [
        ["arifle_MSBS65_Mark_F", "", "acc_pointer_IR", "optic_DMS_weathered_F",["30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_msbs_mag_Tracer"], [], "bipod_02_F_lush"]
    ];
    _mgs append [
        ["LMG_Mk200_black_F", "", "acc_pointer_IR", "optic_DMS_weathered_Kir_F", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"],
        ["LMG_Mk200_black_F", "", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"],
        ["LMG_Mk200_black_F", "", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"]
    ];
};

if (_hasRF) then {
    (_eliteLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_pointer_IR","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

_eliteLoadoutData set ["machineGuns", _mgs];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["U_I_CombatUniform_shortsleeve", "U_I_CombatUniform", "U_BG_Guerilla1_2_F"]];
_militaryLoadoutData set ["slUniforms", ["U_I_OfficerUniform"]];
_militaryLoadoutData set ["vests", ["V_TacVest_oli", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierIA1_dgtl"]];
_militaryLoadoutData set ["Hvests", ["V_PlateCarrierIAGL_dgtl","V_PlateCarrierIAGL_oli"]];
_militaryLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_Carryall_oli", "B_AssaultPack_dgtl","B_Kitbag_sgg"]];
_militaryLoadoutData set ["helmets", ["H_HelmetIA","H_Cap_blk_Raven","H_Cap_oli_hs","H_Cap_headphones","H_Booniehat_khk_hs","H_Booniehat_oli","H_Booniehat_dgtl","H_Watchcap_camo"]];
if (_hasMarksman) then {
	_militaryLoadoutData set ["binoculars", ["Laserdesignator_03"]];
} else {
	_militaryLoadoutData set ["binoculars", ["Rangefinder"]];
};

if (_hasContact) then {
   (_militaryLoadoutData get "vests") append ["V_CarrierRigKBT_01_light_Olive_F","V_CarrierRigKBT_01_Olive_F"];
   (_militaryLoadoutData get "helmets") append ["H_HelmetHBK_F","H_HelmetHBK_headset_F"];
};

if (_hasLawsOfWar) then {
   (_militaryLoadoutData get "Hvests") pushBack "V_EOD_olive_F";
   (_militaryLoadoutData get "helmets") pushBack "H_PASGT_basic_olive_F";
};

if (_hasRF) then {
   (_militaryLoadoutData get "Hvests") pushBack "V_TacVest_rig_oli_RF";
   (_militaryLoadoutData get "helmets") pushBack "H_HelmetIA_sb_digital_RF";
};

if (_hasCSLA) then {
   (_militaryLoadoutData get "backpacks") append ["US85_bpAlice","US85_bpSf"];
};

if (_hasGM) then {
   (_militaryLoadoutData get "backpacks") append ["gm_dk_army_backpack_73_oli","gm_ge_army_backpack_90_oli","gm_ge_army_backpack_80_oli"];
   (_militaryLoadoutData get "helmets") append ["gm_dk_headgear_m96_oli","gm_ge_headgear_beret_crew_blk","gm_ge_headgear_m92_cover_glasses_oli","gm_ge_headgear_m92_cover_oli","gm_ge_headgear_psh77_oli","gm_ge_headgear_psh77_up_oli","gm_ge_headgear_psh77_down_oli","gm_ge_headgear_hat_beanie_crew_blk"];
};

if (_hasWs) then {
   (_militaryLoadoutData get "helmets") append ["lxWS_H_bmask_camo02","lxWS_H_Headset","lxWS_H_PASGT_goggles_olive_F"];
};

_militaryLoadoutData set ["slRifles", [
["arifle_Mk20_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_GL_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "", "acc_flashlight", "optic_Hamr", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["arifle_Mk20_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "", "acc_flashlight", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["arifle_Mk20C_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20C_F", "", "acc_flashlight", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["arifle_Mk20_GL_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "", "acc_flashlight", "optic_Holosight_lush_F", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
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
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["LMG_Mk200_F", "", "acc_flashlight", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""],
    ["LMG_Mk200_F", "", "acc_flashlight", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], ""]
];
if (_hasWs) then {
    _mgs append [
        ["LMG_S77_AAF_lxWS", "", "acc_flashlight", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_AAF_lxWS", "", "acc_flashlight", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_Holosight_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_Compact_lxWS", "", "acc_flashlight", "optic_Hamr", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
};

if (_hasCSLA) then {
    _mgs append [
        ["US85_M60","","","",["US85_100Rnd_762x51","US85_100Rnd_762x51","US85_100Rnd_762x51"],[],""],
        ["US85_M249","","","US85_sc4x20M249",["US85_200Rnd_556x45","US85_200Rnd_556x45","US85_200Rnd_556x45"],[],""]
    ];
    (_militaryLoadoutData get "slRifles") append [
        ["US85_M16A2","","","US85_sc4x20_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_M16A1","","","US85_sc4x20_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_FALf","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"],
        ["US85_FAL","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"]
    ];
    (_militaryLoadoutData get "rifles") append [
        ["US85_M16A2","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_M16A1","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_FALf","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"],
        ["US85_FAL","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"]
    ];
    (_militaryLoadoutData get "grenadeLaunchers") append [
        ["US85_M16A2GL","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],["US85_M406","US85_M406","US85_M406","US85_M583A1"],""],
        ["US85_M16A2CARGL","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],["US85_M406","US85_M406","US85_M406","US85_M583A1"],""]
    ];
    (_militaryLoadoutData get "carbines") append [
        ["US85_M16A2CAR","","US85_M16fl","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""]
    ];
};

private _marksmanRifles = [
    ["srifle_EBR_F", "", "acc_flashlight", "optic_SOS", [], [], ""],
    ["srifle_EBR_F", "", "acc_flashlight", "optic_Hamr", [], [], ""]
];
if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_06_camo_F", "", "", "optic_SOS", [], [], ""],
        ["srifle_DMR_06_olive_F", "", "", "optic_Hamr", [], [], ""]
    ];
};

_militaryLoadoutData set ["sniperRifles", [
["srifle_GM6_F", "", "", "optic_SOS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],
["srifle_GM6_F", "", "", "optic_LRPS", ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["hgun_ACPC2_F", "", "acc_flashlight_pistol", "", [], [], ""]
]];

if (_hasWs) then {
    (_militaryLoadoutData get "slRifles") append [
        ["sgun_aa40_lxWS","","acc_flashlight","optic_r1_high_lxWS",["8Rnd_12Gauge_AA40_Pellets_lxWS","8Rnd_12Gauge_AA40_Pellets_lxWS","8Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Slug_lxWS"], [], ""],
        ["arifle_Galat_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_flashlight","optic_Hamr",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_militaryLoadoutData get "rifles") append [
        ["sgun_aa40_lxWS","","acc_flashlight","optic_r1_high_lxWS",["20Rnd_12Gauge_AA40_Pellets_lxWS","20Rnd_12Gauge_AA40_Slug_lxWS","8Rnd_12Gauge_AA40_Smoke_lxWS","8Rnd_12Gauge_AA40_HE_lxWS"], [], ""],
        ["arifle_Galat_lxWS","","acc_flashlight","optic_Hamr",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
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
    (_militaryLoadoutData get "marksmanRifles") append [
        ["srifle_EBR_blk_lxWS", "", "acc_flashlight", "optic_DMS", ["20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS","20Rnd_762x51_Mag_blk_lxWS"], [], ""]
    ];
};

if (_hasApex) then {
    (_militaryLoadoutData get "marksmanRifles") append [
        ["srifle_DMR_03_khaki_F", "", "acc_flashlight", "optic_AMS_khk",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_03_F", "", "acc_flashlight", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"],
        ["srifle_DMR_06_olive_F", "", "", "optic_AMS",["20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag"], [], "bipod_03_F_blk"]
    ];
    _mgs append [
        ["LMG_03_F", "", "acc_flashlight", "optic_ERCO_blk_F", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""],
        ["LMG_03_F", "", "acc_flashlight", "optic_MRCO", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""],
        ["LMG_03_F", "", "acc_flashlight", "optic_Hamr", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""]
    ];
    (_militaryLoadoutData get "SMGs") append [
        ["SMG_05_F","","acc_flashlight","optic_Holosight_smg_khk_F",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
    ];
};

if (_hasContact) then {
    _mgs append [
        ["LMG_Mk200_black_F", "", "acc_flashlight", "optic_DMS_weathered_Kir_F", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"],
        ["LMG_Mk200_black_F", "", "acc_flashlight", "optic_MRCO", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"],
        ["LMG_Mk200_black_F", "", "acc_flashlight", "optic_Hamr", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], "bipod_02_F_lush"]
    ];
};

if (_hasRF) then {
    (_militaryLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","optic_VRCO_RF",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};

_militaryLoadoutData set ["machineGuns", _mgs];
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
        ["SMG_01_black_RF","","acc_flashlight","optic_Aco_smg",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
};
////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve", "U_BG_Guerilla1_2_F"]];
_militiaLoadoutData set ["vests", ["V_BandollierB_oli", "V_Chestrig_oli", "V_TacVest_oli"]];
_militiaLoadoutData set ["Hvests", ["V_TacVest_oli"]];
_militiaLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_AssaultPack_dgtl"]];
if (_hasLawsOfWar) then {
    _militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_PASGT_basic_olive_F", "H_Booniehat_dgtl", "H_Cap_blk_Raven"]];
} else {
    _militiaLoadoutData set ["helmets", ["H_HelmetIA", "H_Booniehat_dgtl", "H_Cap_blk_Raven"]];
};

if (_hasRF) then {
    (_militiaLoadoutData get "Hvests") pushBack "V_TacVest_rig_oli_RF";
    (_militiaLoadoutData get "helmets") pushBack "H_HelmetIA_sb_digital_RF";
};

if (_hasWs) then {
    (_militiaLoadoutData get "vests") pushBack "V_lxWS_HarnessO_oli";
    (_militiaLoadoutData get "Hvests") pushBack "V_lxWS_TacVestIR_oli";
};
if (_hasGM) then {
    (_militiaLoadoutData get "vests") pushBack "gm_ge_vest_sov_80_oli";
    (_militiaLoadoutData get "Hvests") append ["gm_ge_vest_sov_armor_80_oli","gm_ge_bgs_vest_type3a1_oli"];
};

_militiaLoadoutData set ["slRifles", [
["arifle_Mk20_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_Mk20_GL_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["arifle_Mk20_GL_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["rifles", [
["arifle_Mk20_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_TRG21_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["arifle_Mk20C_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
["arifle_TRG20_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["arifle_Mk20_GL_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["arifle_TRG21_GL_F", "", "acc_flashlight", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
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
_militiaLoadoutData set ["machineGuns", [
["LMG_Mk200_F", "", "acc_flashlight", "", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_03_F_blk"]
]];

private _marksmanRifles = [["srifle_EBR_F", "", "acc_flashlight", "optic_MRCO", [], [], ""]];
private _sniperRifles = [["srifle_EBR_F", "", "", "optic_SOS", [], [], ""]];
if (_hasMarksman) then {
    _marksmanRifles = [["srifle_DMR_06_olive_F", "", "", "optic_MRCO", [], [], ""]];
    _sniperRifles = [["srifle_DMR_06_olive_F", "", "", "optic_SOS", [], [], ""]];
};

if (_hasWs) then {
    (_militiaLoadoutData get "slRifles") append [
        ["arifle_Galat_worn_lxWS","","acc_flashlight","",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_lxWS","","acc_flashlight","",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_flashlight","",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_militiaLoadoutData get "rifles") append [
        ["arifle_Galat_worn_lxWS","","acc_flashlight","",["30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"], [], ""],
        ["arifle_SLR_V_lxWS","","","",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], [], ""],
        ["arifle_Velko_lxWS","","acc_flashlight","",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], [], ""]
    ];
    (_militiaLoadoutData get "grenadeLaunchers") append [
        ["arifle_SLR_V_GL_lxWS","","","",["30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_reload_tracer_green_lxWS","30Rnd_762x51_slr_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS","1Rnd_58mm_AT_lxWS","1Rnd_50mm_Smoke_lxWS"], ""],
        ["arifle_VelkoR5_GL_lxWS","","acc_flashlight","",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
    (_militiaLoadoutData get "carbines") append [
        ["arifle_VelkoR5_lxWS","","acc_flashlight","",["35Rnd_556x45_Velko_reload_tracer_red_lxWS","35Rnd_556x45_Velko_reload_tracer_red_lxWS","50Rnd_556x45_Velko_reload_tracer_red_lxWS"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_Pellet_Grenade_shell_lxWS"], ""]
    ];
};

if (_hasApex) then {
    (_militiaLoadoutData get "machineGuns") append [
        ["LMG_03_F", "", "acc_flashlight", "", ["200Rnd_556x45_Box_F", "200Rnd_556x45_Box_F", "200Rnd_556x45_Box_Tracer_F"], [], ""]
    ];
    (_militiaLoadoutData get "SMGs") append [
        ["SMG_05_F","","acc_flashlight","",["30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
    ];
};

if (_hasContact) then {
    _marksmanRifles append [
        ["srifle_DMR_06_hunter_F", "", "", "optic_MRCO",["10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag","10Rnd_Mk14_762x51_Mag"], [], ""]
    ];
    (_militiaLoadoutData get "machineGuns") append [
        ["LMG_Mk200_black_F", "", "acc_flashlight", "", ["200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer"], [], ""]
    ];
};


if (_hasCSLA) then {
    _mgs append [
        ["US85_M60","","","",["US85_100Rnd_762x51","US85_100Rnd_762x51","US85_100Rnd_762x51"],[],""],
        ["US85_M249","","","US85_sc4x20M249",["US85_200Rnd_556x45","US85_200Rnd_556x45","US85_200Rnd_556x45"],[],""]
    ];
    (_militiaLoadoutData get "slRifles") append [
        ["US85_M16A2","","","US85_sc4x20_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_M16A1","","","US85_sc4x20_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_FALf","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"],
        ["US85_FAL","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"]
    ];
    (_militiaLoadoutData get "rifles") append [
        ["US85_M16A2","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_M16A1","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""],
        ["US85_FALf","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"],
        ["US85_FAL","","","US85_scFAL",["US85_20Rnd_762M61","US85_20Rnd_762M61","US85_20Rnd_762x51"],[],"US85_FALbpd"]
    ];
    (_militiaLoadoutData get "grenadeLaunchers") append [
        ["US85_M16A2GL","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],["US85_M406","US85_M406","US85_M406","US85_M583A1"],""],
        ["US85_M16A2CARGL","","","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],["US85_M406","US85_M406","US85_M406","US85_M583A1"],""]
    ];
    (_militiaLoadoutData get "carbines") append [
        ["US85_M16A2CAR","","US85_M16fl","US85_sc2000_M16",["US85_30Rnd_556x45","US85_30Rnd_556x45","US85_30Rnd_556x45"],[],""]
    ];
    _marksmanRifles append [
        ["US85_M14","","","US85_scM21",["US85_20Rnd_762x51","US85_20Rnd_762x51","US85_20Rnd_762M61"],[],"US85_M14bpd"],
        ["US85_M21","","","US85_scM21",["US85_20Rnd_762x51","US85_20Rnd_762x51","US85_20Rnd_762M61"],[],"US85_M14bpd"]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["CSLA_HuntingRifle","","","",["CSLA_10Rnd_762hunt","CSLA_10Rnd_762hunt","CSLA_10Rnd_762hunt"],[],""]
    ];
};

if (_hasRF) then {
    (_militiaLoadoutData get "SMGs") append [
        ["SMG_01_black_RF","","acc_flashlight_smg_01","",["30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"], [], ""]
    ];
    _marksmanRifles append [
        ["srifle_h6_digi_rf", "", "", "optic_MRCO",["10Rnd_556x45_AP_Stanag_RF","10Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF"], [], ""]
    ];
    _sniperRifles append [
        ["srifle_h6_digi_rf", "", "", "optic_MRCO",["10Rnd_556x45_AP_Stanag_RF","10Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF","20Rnd_556x45_AP_Stanag_RF"], [], ""]
    ];
};

_militiaLoadoutData set ["sidearms", ["hgun_ACPC2_F"]];
_militiaLoadoutData set ["marksmanRifles", _marksmanRifles];
_militiaLoadoutData set ["sniperRifles", _sniperRifles];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"]];
if (_hasTanks) then {
    _crewLoadoutData set ["uniforms", ["U_Tank_green_F"]];
};
_crewLoadoutData set ["vests", ["V_BandollierB_oli"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_I"]];

if (_hasCSLA) then {
    (_crewLoadoutData get "helmets") append ["US85_helmetDH132","US85_helmetDH132G","US85_helmetDH132G_on"];
};
if (_hasGM) then {
    (_crewLoadoutData get "helmets") pushBack "gm_ge_headgear_crewhat_80_blk";
};


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_I_HeliPilotCoveralls","U_I_pilotCoveralls"]];
_pilotLoadoutData set ["vests", ["V_TacVest_oli"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_I", "H_CrewHelmetHeli_I"]];

if (_hasRF) then {
    (_pilotLoadoutData get "uniforms") pushBack "U_C_HeliPilotCoveralls_Green_RF";
};
if (_hasGM) then {
    (_pilotLoadoutData get "uniforms") append ["gm_ge_uniform_pilot_commando_oli","gm_ge_uniform_pilot_commando_rolled_oli"];
};

////
if (_hasGM) then {
    (_militiaLoadoutData get "uniforms") append ["gm_ge_uniform_soldier_tshirt_90_oli"];
    (_loadoutData get "lightATLaunchers") append [
        ["gm_m72a3_oli", "", "", "", ["gm_1Rnd_66mm_heat_m72a3"], [], ""],
        ["gm_rpg18_oli", "", "", "", ["gm_1Rnd_64mm_heat_pg18"], [], ""],
        ["gm_pzf44_2_oli", "", "", "gm_feroz2x17_pzf44_2_blk", ["gm_1Rnd_44x537mm_heat_dm32_pzf44_2"], [], ""]
    ];
    (_loadoutData get "ATLaunchers") append [
        ["gm_pzf3_blk", "", "", "", ["gm_1Rnd_60mm_heat_dm22_pzf3", "gm_1Rnd_60mm_heat_dm32_pzf3", "gm_1Rnd_60mm_heat_dm12_pzf3"], [], ""],
        ["gm_pzf84_oli", "", "", "gm_feroz2x17_pzf84_blk", ["gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf", "gm_1Rnd_84x245mm_heat_t_DM22_carlgustaf", "gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf"], [], ""]
    ];
    /* _militiaLoadoutData set ["AALaunchers", ["gm_fim43_oli", "", "", "", ["gm_1Rnd_70mm_he_m585_fim43"], [], ""]];
    _militaryLoadoutData set ["AALaunchers", ["gm_fim43_oli", "", "", "", ["gm_1Rnd_70mm_he_m585_fim43"], [], ""]]; */
    (_sfLoadoutData get "slRifles") append [
        ["gm_g11k2_ris_blk","","acc_pointer_IR","optic_Nightstalker",["gm_50Rnd_473x33mm_B_DM11_g11_blk","gm_50Rnd_473x33mm_B_DM11_g11_blk","gm_50Rnd_473x33mm_B_DM11_g11_blk"], [], ""],
        ["gm_sg551_swat_blk","gm_suppressor_atec150_556mm_blk","acc_pointer_IR","optic_Hamr",["gm_30Rnd_556x45mm_B_T_DM21_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"], [], ""]
    ];
    (_sfLoadoutData get "rifles") append [
        ["gm_sg551_ris_blk", "gm_suppressor_atec150_556mm_blk","","optic_Hamr",["gm_30Rnd_556x45mm_B_T_DM21_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"], [], ""],
        ["gm_sg542_ris_blk", "gm_suppressor_atec150_762mm_blk","","optic_Hamr",["gm_20Rnd_762x51mm_B_T_DM21A2_sg542_blk","gm_20Rnd_762x51mm_AP_DM151_sg542_blk","gm_20Rnd_762x51mm_B_DM41_sg542_blk","gm_20Rnd_762x51mm_B_DM111_sg542_blk"], [], ""]
    ];
    (_sfLoadoutData get "marksmanRifles") append [
        ["gm_msg90_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"],
        ["gm_msg90a1_blk","gm_suppressor_atec150_762mm_long_blk","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_sfLoadoutData get "sniperRifles") append [
        ["gm_psg1_blk","","","gm_zf6x42_psg1_stanag_blk",["gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk","gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_sfLoadoutData get "designatedGrenadeLaunchers") append [
        ["gm_hk69a1_blk", "", "", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["gm_pallad_d_brn", "", "", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_HE_Grenade_shell"], [], ""]
    ];
    (_eliteLoadoutData get "slRifles") append [
        ["gm_g11k2_ris_blk","","acc_pointer_IR","optic_Nightstalker",["gm_50Rnd_473x33mm_B_DM11_g11_blk","gm_50Rnd_473x33mm_B_DM11_g11_blk","gm_50Rnd_473x33mm_B_DM11_g11_blk"], [], ""],
        ["gm_sg551_swat_blk","","acc_pointer_IR","optic_Hamr",["gm_30Rnd_556x45mm_B_T_DM21_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"], [], ""]
    ];
    (_eliteLoadoutData get "rifles") append [
        ["gm_sg551_ris_blk", "","","optic_Hamr",["gm_30Rnd_556x45mm_B_T_DM21_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"], [], ""],
        ["gm_sg542_ris_blk", "","","optic_Hamr",["gm_20Rnd_762x51mm_B_T_DM21A2_sg542_blk","gm_20Rnd_762x51mm_AP_DM151_sg542_blk","gm_20Rnd_762x51mm_B_DM41_sg542_blk","gm_20Rnd_762x51mm_B_DM111_sg542_blk"], [], ""]
    ];
    (_eliteLoadoutData get "marksmanRifles") append [
        ["gm_msg90_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"],
        ["gm_msg90a1_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_eliteLoadoutData get "sniperRifles") append [
        ["gm_psg1_blk","","","gm_zf6x42_psg1_stanag_blk",["gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk","gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];   
    (_eliteLoadoutData get "designatedGrenadeLaunchers") append [
        ["gm_hk69a1_blk", "", "", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""],
        ["gm_pallad_d_brn", "", "", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "1Rnd_HE_Grenade_shell"], [], ""]
    ];
    (_eliteLoadoutData get "SMGs") append [
        ["gm_mp5n_surefire_blk", "", "gm_surefire_l60_wht_surefire_blk", "gm_rv_stanagClaw_blk", ["gm_60Rnd_9x19mm_B_DM11_mp5a3_blk","gm_60Rnd_9x19mm_AP_DM91_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk"], [], ""],
        ["gm_mp5sd6_blk", "", "", "gm_rv_stanagClaw_blk", ["gm_60Rnd_9x19mm_B_DM11_mp5a3_blk","gm_60Rnd_9x19mm_AP_DM91_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk"], [], ""]
    ];
    (_militaryLoadoutData get "rifles") append [
        ["gm_c7a1_oli", "", "", "optic_Hamr", ["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"], [], ""],
        ["gm_g36a1_blk", "", "", "", ["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"], [], ""],
        ["gm_g36e_blk", "", "", "", ["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"], [], ""],
        ["gm_g3a4a1_ris_oli", "", "", "optic_MRCO", ["gm_40Rnd_762x51mm_B_T_DM21_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A1_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], ["gm_1rnd_67mm_heat_dm22a1_g3"], ""],
        ["gm_g3ka4a1_ris_blk", "", "", "gm_c79a1_blk", ["gm_40Rnd_762x51mm_AP_DM151_g3_blk","gm_40Rnd_762x51mm_B_DM41_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], ""]
    ];
    (_militaryLoadoutData get "machineGuns") append [
        ["gm_mg3_blk", "", "", "", ["gm_120Rnd_762x51mm_B_T_DM21_mg3_grn","gm_120Rnd_762x51mm_B_T_DM21A2_mg3_grn"], [], ""],
        ["gm_mg8a2_blk", "", "", "gm_blits_stanagHK_blk", ["gm_100Rnd_762x51mm_B_T_DM21_mg8_oli","gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli"], [], "gm_g8_bipod_blk"]
    ];
    (_militaryLoadoutData get "marksmanRifles") append [
        ["gm_msg90_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_militaryLoadoutData get "sniperRifles") append [
        ["gm_psg1_blk","","","gm_zf6x42_psg1_stanag_blk",["gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk","gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_militiaLoadoutData get "SMGs") append [
        ["gm_mp5n_surefire_blk", "", "gm_surefire_l60_wht_surefire_blk", "", ["gm_60Rnd_9x19mm_B_DM11_mp5a3_blk","gm_60Rnd_9x19mm_AP_DM91_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk"], [], ""],
        ["gm_mp5a2_blk", "", "", "", ["gm_30Rnd_9x19mm_B_DM51_mp5_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk","gm_30Rnd_9x19mm_B_DM11_mp5_blk","gm_30Rnd_9x19mm_AP_DM91_mp5_blk"], [], ""]
    ];
    (_militiaLoadoutData get "machineGuns") append [
        ["gm_mg8a1_blk", "", "", "gm_colt4x20_stanagClaw_blk", ["gm_100Rnd_762x51mm_B_T_DM21_mg8_oli","gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli"], [], "gm_g8_bipod_blk"]
    ];
    (_militiaLoadoutData get "marksmanRifles") append [
        ["gm_msg90_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_militiaLoadoutData get "sniperRifles") append [
        ["gm_psg1_blk","","","gm_zf6x42_psg1_stanag_blk",["gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk","gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], [], "gm_msg90_bipod_blk"]
    ];
    (_militiaLoadoutData get "helmets") append [
        "gm_ge_headgear_headset_crew_oli",
        "gm_xx_headgear_headwrap_crew_01_oli",
        "gm_ge_headgear_hat_beanie_crew_blk",
        "gm_gc_headgear_fjh_model4_oli",
        "gm_ge_headgear_m92_cover_glasses_oli",
        "gm_ge_headgear_m92_cover_oli"
    ];     
    (_militaryLoadoutData get "helmets") append [
        "gm_ge_headgear_headset_crew_oli",
        "gm_xx_headgear_headwrap_crew_01_oli",
        "gm_ge_headgear_hat_beanie_crew_blk",
        "gm_ge_headgear_m92_cover_glasses_oli",
        "gm_ge_headgear_m92_cover_oli"
    ];
    (_eliteLoadoutData get "helmets") append [
        "gm_ge_headgear_headset_crew_oli",
        "gm_xx_headgear_headwrap_crew_01_oli",
        "gm_ge_headgear_beret_crew_blk",
        "gm_xx_headgear_headwrap_crew_01_grn",
        "gm_ge_headgear_hat_beanie_crew_blk",
        "gm_ge_headgear_psh77_oli",
        "gm_ge_headgear_psh77_up_oli",
        "gm_ge_headgear_psh77_down_oli"
    ];
    (_sfLoadoutData get "helmets") append [
        "gm_ge_headgear_headset_crew_oli",
        "gm_xx_headgear_headwrap_crew_01_oli",
        "gm_ge_headgear_beret_crew_blk",
        "gm_xx_headgear_headwrap_crew_01_grn",
        "gm_ge_headgear_hat_beanie_crew_blk",
        "gm_ge_headgear_psh77_oli",
        "gm_ge_headgear_psh77_up_oli",
        "gm_ge_headgear_psh77_down_oli"
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

if (_hasRF) then {
    (_sfLoadoutData get "sidearms") append [
        ["hgun_Glock19_Tan_RF", "muzzle_snds_L", "acc_flashlight_IR_pistol_RF", "optic_MRD_tan_RF", ["17Rnd_9x19_Mag_RF","33Rnd_9x19_Mag_RF"], [], ""],
        ["hgun_Glock19_auto_Tan_RF", "muzzle_snds_L", "acc_flashlight_IR_pistol_RF", "optic_MRD_tan_RF", ["17Rnd_9x19_Mag_RF","33Rnd_9x19_Mag_RF","65Rnd_9x19_Mag_RF"], [], ""],
        ["hgun_DEagle_RF", "", "", "optic_VRCO_pistol_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_classic_RF", "", "", "optic_VRCO_pistol_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_copper_RF", "", "", "optic_VRCO_pistol_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""]
    ];
    (_eliteLoadoutData get "sidearms") append [
        ["hgun_Glock19_Tan_RF", "", "acc_flashlight_IR_pistol_RF", "optic_MRD_tan_RF", ["17Rnd_9x19_Mag_RF","33Rnd_9x19_Mag_RF"], [], ""],
        ["hgun_Glock19_auto_Tan_RF", "", "acc_flashlight_IR_pistol_RF", "optic_MRD_tan_RF", ["17Rnd_9x19_Mag_RF","33Rnd_9x19_Mag_RF","65Rnd_9x19_Mag_RF"], [], ""],
        ["hgun_DEagle_RF", "", "", "optic_VRCO_pistol_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_classic_RF", "", "", "optic_VRCO_pistol_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_copper_RF", "", "", "optic_VRCO_pistol_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""]
    ];
    (_militaryLoadoutData get "sidearms") append [
        ["hgun_Glock19_Tan_RF", "", "acc_flashlight_pistol", "optic_MRD_tan_RF", ["17Rnd_9x19_Mag_RF","33Rnd_9x19_Mag_RF"], [], ""],
        ["hgun_Glock19_auto_Tan_RF", "", "acc_flashlight_pistol", "optic_MRD_tan_RF", ["17Rnd_9x19_Mag_RF","33Rnd_9x19_Mag_RF"], [], ""],
        ["hgun_DEagle_RF", "", "", "optic_rds_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_classic_RF", "", "", "optic_rds_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_copper_RF", "", "", "optic_rds_RF", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_RF", "", "", "", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_classic_RF", "", "", "", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""],
        ["hgun_DEagle_copper_RF", "", "", "", ["7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF","7Rnd_50AE_Mag_RF"], [], ""]
    ];
    (_militiaLoadoutData get "sidearms") append [
        ["hgun_Glock19_Tan_RF", "", "", "", ["17Rnd_9x19_Mag_RF","17Rnd_9x19_Mag_RF"], [], ""]
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
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

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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
