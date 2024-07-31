private _hasWs = "ws" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasKart = "kart" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;

//////////////////////////////
//   Civilian Information   //
//////////////////////////////

//////////////////////////
//       Vehicles       //
//////////////////////////

private _civCarsWithWeights = [
    "C_Quadbike_01_F", 0.3
    ,"C_Hatchback_01_F", 7.0
    ,"C_Hatchback_01_sport_F", 0.3
    ,"C_Offroad_01_F", 1.0
    ,"C_SUV_01_F", 1.0
];
private _civBoat = [
    "C_Boat_Civil_01_rescue_F", 0.1            // motorboats
    ,"C_Boat_Civil_01_police_F", 0.1
    ,"C_Boat_Civil_01_F", 1.0
    ,"C_Rubberboat", 1.0                    // rescue boat
];
private _civIndustrial = [
    "C_Van_01_transport_F", 1.0
    ,"C_Van_01_box_F", 0.8
    ,"C_Truck_02_transport_F", 0.5
    ,"C_Truck_02_covered_F", 0.5
];
private _civRepair = [
    "C_Offroad_01_repair_F", 0.3
    ,"C_Truck_02_box_F", 0.1
];
private _civMedical = [];
private _civFuel = [
    "C_Van_01_fuel_F", 0.2
    ,"C_Truck_02_fuel_F", 0.1
];

private _civPlanes = [];
private _civHelicopter = ["C_Heli_Light_01_civil_F", "a3a_C_Heli_Transport_02_F", "a3a_C_Heli_Light_02_blue_F"];
if (_hasKart) then {
    _civCarsWithWeights append ["C_Kart_01_F", 0.01, "C_Kart_01_Blu_F", 0.01, "C_Kart_01_Fuel_F", 0.01, "C_Kart_01_Red_F", 0.01, "C_Kart_01_Vrana_F", 0.01];
};
if (_hasApex) then {
    _civCarsWithWeights append ["C_Offroad_02_unarmed_F", 0.7];
    _civBoat append ["C_Boat_Transport_02_F", 1.0 ,"C_Scooter_Transport_01_F", 0.5];
    _civPlanes append ["C_Plane_Civil_01_racing_F", "C_Plane_Civil_01_F"];
};
if (_hasContact) then {
    _civCarsWithWeights append ["C_Offroad_01_comms_F", 0.4 , "C_Offroad_01_covered_F", 0.4];
    _civIndustrial append ["C_Tractor_01_F", 0.2];
};
if (_hasLawsOfWar) then {
    _civCarsWithWeights append ["C_Van_02_transport_F", 0.2];
    _civRepair append ["C_Van_02_service_F", 0.3];
    _civMedical append ["C_Van_02_medevac_F", 0.3];
    _civIndustrial append ["C_Van_02_vehicle_F", 0.8];
};
if (_hasWs) then {
    _civCarsWithWeights append ["C_Truck_02_racing_lxWS" , 0.1 , "C_Offroad_lxWS", 0.5];
    _civIndustrial append ["C_Truck_02_cargo_lxWS" , 0.4 , "C_Truck_02_flatbed_lxWS" , 0.4];
};

if (_hasGM) then {
    _civHelicopter append ["gm_gc_civ_mi2p", "gm_gc_civ_mi2r", "gm_gc_civ_mi2sr", "gm_ge_adak_bo105m_vbh_noinsignia"];
    _civPlanes append ["gm_gc_civ_l410s_salon", "gm_gc_civ_l410s_passenger"];
    _civMedical append ["gm_ge_ff_u1300l_medic", 0.3, "gm_pl_army_ural375d_medic", 0.2];
    _civFuel append ["gm_pl_army_ural375d_refuel", 0.2];
    _civRepair append ["gm_pl_army_ural4320_repair", 0.2];
    _civIndustrial append ["gm_gc_civ_ural375d_cargo" , 0.2 , "gm_ge_civ_u1300l" , 0.2 , "gm_ge_civ_typ247", 0.3, "gm_ge_civ_typ251", 0.3];
    _civCarsWithWeights append ["gm_ge_army_iltis_cargo", 0.2, "gm_pl_army_uaz469_cargo", 0.2, "gm_ge_civ_typ1200", 0.2, "gm_gc_civ_p601", 0.2, "gm_ge_civ_typ253", 0.3, "gm_ge_taxi_typ253", 0.1, "gm_ge_civ_w123", 0.4, "gm_ge_taxi_w123", 0.3, "gm_ge_army_k125", 0.1, "gm_xx_civ_bicycle_01", 0.05, "gm_ge_dbp_bicycle_01_ylw", 0.05];
};

if (_hasCSLA) then {
    _civPlanes pushBack "CSLA_CIV_An2_1";
    _civRepair append ["CSLA_CIV_V3Sr", 0.2];
    _civIndustrial append ["CSLA_CIV_V3S" , 0.2];
    _civCarsWithWeights append ["CSLA_CIV_AZU", 0.2, "CSLA_CIV_ADA1600", 0.2, "CSLA_CIV_Sarka1200", 0.2, "CSLA_civ_CATOR", 0.1, "CSLA_CIV_JARA250", 0.1, "US85_TT650", 0.1];
    _civBoat append ["CSLA_lodka", 0.1];
};

if (_hasRF) then {
    _civHelicopter append ["C_Heli_EC_01A_civ_RF", "C_Heli_EC_01_civ_RF", "C_Heli_EC_04_rescue_RF"];
    _civCarsWithWeights append ["C_Pickup_rf", 0.6, "C_Pickup_covered_rf", 0.5, "C_Truck_03_water_rf", 0.1, "C_Truck_01_water_rf", 0.1];
    _civRepair append ["C_Pickup_repair_rf", 0.3];
    _civFuel append ["a3a_civ_Pickup_fuel_rf", 0.1];
};

["vehiclesCivCar", _civCarsWithWeights] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopter] call _fnc_saveToTemplate;
["vehiclesCivIndustrial", _civIndustrial] call _fnc_saveToTemplate;
["vehiclesCivBoat", _civBoat] call _fnc_saveToTemplate;
["vehiclesCivRepair", _civRepair] call _fnc_saveToTemplate;
["vehiclesCivMedical", _civMedical] call _fnc_saveToTemplate;
["vehiclesCivFuel", _civFuel] call _fnc_saveToTemplate;
["vehiclesCivPlanes", _civPlanes] call _fnc_saveToTemplate;

["animations", [
    ["gm_pl_army_uaz469_cargo", ["RoadPrioritySign_01_unhide",0,"FrontLight_02_Cover_unhide",0,"windshield",0,"windows_unhide",0.3,"cover_hoops_unhide",0,"spare_wheel_unhide",0.3,"antenna_01_unhide",0,"antenna_02_unhide",0,"FogLights_01_unhide",0.3,"mirrors_01_unhide",0.3,"doors_unhide",0.3]],
    ["gm_ge_army_iltis_cargo", ["radio_01_unhide",0,"radio_02_unhide",0,"cover_hoops_unhide",0.4,"cover_doors_unhide",0.4,"windshield",0.4,"doorBag_unhide",0.3,"beacon_01_org_unhide",0,"beacon_01_blu_unhide",0,"coldWeatherKit_unhide",0.4]]
]] call _fnc_saveToTemplate;

["variants", [
    ["gm_ge_ff_u1300l_medic", ["gm_ge_civ_drk_01",1]],
    ["gm_pl_army_ural375d_medic", ["gm_oilochre",0.5, "gm_pkhv4",0.5]],
    ["gm_pl_army_ural375d_refuel", ["gm_oilochre",0.5, "gm_pkhv4",0.5]],
    ["gm_pl_army_ural4320_repair", ["gm_oilochre",0.5, "gm_pkhv4",0.5]],
    ["gm_pl_army_uaz469_cargo", ["gm_oilochre",0.5, "gm_pkhv4",0.5]],
    ["gm_ge_army_iltis_cargo", ["gm_ge_civ_drk_01", 0.3, "gm_khs5146", 0.3, "gm_oilochre", 0.3, "gm_pkhv4", 0.3, "gm_xb518", 0.3, "gm_carc_tan", 0.3, "gm_drapolive", 0.3, "gm_merdc_grn", 0.3, "gm_merdc_wht", 0.3, "gm_ge_un", 0.3, "gm_ge_wdl",0]]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

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
    "Sturrock",
    "PersianHead_A3_01",
    "PersianHead_A3_02",
    "PersianHead_A3_03",
    "AsianHead_A3_01",
    "AsianHead_A3_02",
    "AsianHead_A3_03",
    "AsianHead_A3_04",
    "AsianHead_A3_05",
    "AsianHead_A3_06",
    "AsianHead_A3_07",
    "AfricanHead_01",
    "AfricanHead_02",
    "AfricanHead_03",
    "Barklem",
"WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08",
"WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
"WhiteHead_21","WhiteHead_22","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", 
"WhiteHead_31", "WhiteHead_32",
    "TanoanHead_A3_01",
    "TanoanHead_A3_02",
    "TanoanHead_A3_03",
    "TanoanHead_A3_04",
    "TanoanHead_A3_05",
    "TanoanHead_A3_06",
    "TanoanHead_A3_07",
    "TanoanHead_A3_08",
    "TanoanHead_A3_09",
    "RussianHead_1",
    "RussianHead_2",
    "RussianHead_3",
    "RussianHead_4",
    "RussianHead_5",
    "LivonianHead_1",
    "LivonianHead_2",
    "LivonianHead_3",
    "LivonianHead_4",
    "LivonianHead_5",
    "LivonianHead_6",
    "LivonianHead_7",
    "LivonianHead_8",
    "LivonianHead_9",
    "LivonianHead_10"
];
if (_hasWs) then {
    _faces append [
        "CamoHead_Persian_01_F", 
        "CamoHead_Persian_02_F", 
        "CamoHead_Persian_03_F", 
        "lxWS_African_Head_01", 
        "lxWS_African_Head_02", 
        "lxWS_African_Head_05",
        "lxWS_African_Head_04",
        "lxWS_Said_Head",
        "lxWS_African_Head_Old",
        "lxWS_African_Head_Old_Bard",
        "lxWS_African_Head_03",
        "lxWS_Journalist_Head",
        "lxWS_Givens_Head"
    ];
};
if (_hasRF) then {
    _faces append ["Pilot1_Head_rf","Pilot2_Head_rf"];
};
["faces", _faces] call _fnc_saveToTemplate;

private _civUniforms = [
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
    "U_C_Poloshirt_blue",
    "U_C_Poloshirt_burgundy",
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour",
    "U_C_Poloshirt_salmon",
    "U_C_Poloshirt_redwhite",
    "U_OrestesBody",
    "U_C_Poor_1",
    "U_C_HunterBody_grn",
    "U_I_L_Uniform_01_tshirt_skull_F",
    "U_I_L_Uniform_01_tshirt_black_F",
    "U_I_L_Uniform_01_tshirt_sport_F",
    "U_C_Scientist",
    "U_C_Uniform_Scientist_02_formal_F",
    "U_C_Uniform_Scientist_02_F",
    "U_C_Uniform_Scientist_01_F"
];

private _pressUniforms = [
    "U_C_Journalist",
    "U_Marshal"
    ];

private _workerUniforms = [
    "U_C_WorkerCoveralls",
    "U_C_Uniform_Farmer_01_F"
    ];

private _dlcUniforms = [];

if (_hasApex) then {_dlcUniforms append [
    "U_C_man_sport_1_F",
    "U_C_man_sport_2_F",
    "U_C_man_sport_3_F"];
};
if (_hasContact) then {_dlcUniforms append [
    "U_O_R_Gorka_01_black_F",
    "U_C_CBRN_Suit_01_Blue_F",
    "U_C_CBRN_Suit_01_White_F"];
};
if (_hasArtOfWar) then {_dlcUniforms append [
    "U_C_FormalSuit_01_black_F",
    "U_C_FormalSuit_01_blue_F",
    "U_C_FormalSuit_01_gray_F",
    "U_C_FormalSuit_01_khaki_F",
    "U_C_FormalSuit_01_tshirt_black_F",
    "U_C_FormalSuit_01_tshirt_gray_F"];
};
if (_hasLawsOfWar) then {
  _dlcUniforms append [
    "U_C_Paramedic_01_F",
    "U_C_Mechanic_01_F"
  ];
  _workerUniforms append [
    "U_C_ConstructionCoverall_Black_F",
    "U_C_ConstructionCoverall_Blue_F",
    "U_C_ConstructionCoverall_Red_F",
    "U_C_ConstructionCoverall_Vrana_F"
  ];
};

if (_hasGM) then {
  _dlcUniforms append [
    "gm_gc_civ_uniform_man_01_80_blk",
    "gm_gc_civ_uniform_man_01_80_blu",
    "gm_gc_civ_uniform_man_02_80_brn",
    "gm_ge_civ_uniform_blouse_80_gry",
    "gm_ge_ff_uniform_man_80_orn",
    "gm_xx_army_uniform_fighter_03_brn",
    "gm_xx_army_uniform_fighter_03_blk",
    "gm_xx_army_uniform_fighter_02_oli",
    "gm_xx_army_uniform_fighter_01_oli",
    "gm_gc_civ_uniform_pilot_80_blk",
    "gm_gc_airforce_uniform_pilot_80_blu",
    "gm_gc_civ_uniform_man_03_80_blu",
    "gm_gc_civ_uniform_man_03_80_grn",
    "gm_gc_civ_uniform_man_03_80_gry"
  ];
  _workerUniforms append [
    "gm_ge_uniform_pilot_commando_gry",
    "gm_ge_uniform_pilot_commando_oli",
    "gm_ge_uniform_pilot_commando_rolled_gry",
    "gm_ge_uniform_pilot_commando_rolled_oli",
    "gm_gc_civ_uniform_man_04_80_blu",
    "gm_gc_civ_uniform_man_04_80_gry"
  ];
};

if (_hasCSLA) then {
  _dlcUniforms append [
    "FIA_uniCitizen",
    "FIA_uniFunctionary",
    "FIA_uniFunctionary2",
    "CSLA_uniPlt",
    "FIA_uniVillager",
    "FIA_uniVillager2",
    "FIA_uniVillager3",
    "FIA_uniVillager4",
    "FIA_uniWorker2",
    "FIA_uniWorker3"
  ];
  _workerUniforms append [
    "CSLA_uniSrv",
    "FIA_uniForeman",
    "FIA_uniForeman2"
  ];
};

if (_hasWs && {(toLowerANSI worldName) in ["sefrouramal", "takistan"]}) then {
  _civUniforms = [
    "U_lxWS_C_Djella_01",
    "U_lxWS_C_Djella_02",
    "U_lxWS_C_Djella_02a",
    "U_lxWS_C_Djella_03",
    "U_lxWS_C_Djella_04",
    "U_lxWS_C_Djella_05",
    "U_lxWS_C_Djella_06",
    "U_lxWS_C_Djella_07",
    "U_lxWS_Tak_01_A",
    "U_lxWS_Tak_01_B",
    "U_lxWS_Tak_01_C",
    "U_lxWS_Tak_02_A",
    "U_lxWS_Tak_02_B",
    "U_lxWS_Tak_02_C",
    "U_lxWS_Tak_03_A",
    "U_lxWS_Tak_03_B",
    "U_lxWS_Tak_03_C"
  ];
};

if (_hasRF) then {
    _dlcUniforms append [
        "U_C_FirefighterFatigues_RF",
        "U_C_FirefighterFatigues_RolledUp_RF",
        "U_C_HeliPilotCoveralls_Yellow_RF",
        "U_C_HeliPilotCoveralls_Green_RF",
        "U_C_HeliPilotCoveralls_Rescue_RF",
        "U_C_HeliPilotCoveralls_Blue_RF",
        "U_C_HeliPilotCoveralls_Black_RF"
    ];
    private _RFleatherJackets = [
        "U_C_PilotJacket_black_RF",
        "U_C_PilotJacket_brown_RF",
        "U_C_PilotJacket_lbrown_RF",
        "U_C_PilotJacket_open_black_RF",
        "U_C_PilotJacket_open_brown_RF",
        "U_C_PilotJacket_open_lbrown_RF"
    ];
    _dlcUniforms append _RFleatherJackets;
    if (A3A_climate in ["temperate","arctic"]) then {
        _civUniforms append _RFleatherJackets;
    };
};

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;

private _civhats = [
    "H_Bandanna_blu",
    "H_Bandanna_cbr",
    "H_Bandanna_gry",
    "H_Bandanna_khk",
    "H_Bandanna_sand",
    "H_Bandanna_sgg",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_blk",
    "H_Bandanna_surfer_grn",
    "H_Cap_blk",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_grn_BI",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_surfer",
    "H_Cap_tan",
    "H_StrawHat",
    "H_StrawHat_dark",
    "H_Hat_checker",
    "H_Hat_Safari_olive_F",
    "H_Hat_Safari_sand_F"
];

private _workerHelmets = ["H_Cap_marshal"];

private _dlchats = [];

if (_hasApex) then {_dlchats append [
    "H_Helmet_Skate",
    "H_Booniehat_tna_F"
];
};

if (_hasContact) then {_dlchats append [
    "H_Booniehat_mgrn",
    "H_Hat_Tinfoil_F"
];
};

if (_hasLawsOfWar) then {
  _dlchats append [
    "H_Hat_Safari_olive_F",
    "H_Hat_Safari_sand_F",
    "H_HeadBandage_clean_F",
    "H_HeadBandage_bloody_F",
    "H_HeadBandage_stained_F",
    "H_WirelessEarpiece_F"
];
  _workerHelmets append [
    "H_HeadBandage_clean_F",
    "H_HeadBandage_bloody_F",
    "H_HeadBandage_stained_F",
    "H_HeadSet_white_F",
    "H_HeadSet_yellow_F",
    "H_HeadSet_red_F",
    "H_HeadSet_orange_F",
    "H_HeadSet_black_F",
    "H_EarProtectors_white_F",
    "H_EarProtectors_yellow_F",
    "H_EarProtectors_red_F",
    "H_EarProtectors_orange_F",
    "H_EarProtectors_black_F",
    "H_Construction_basic_white_F",
    "H_Construction_headset_white_F",
    "H_Construction_earprot_white_F",
    "H_Construction_basic_yellow_F",
    "H_Construction_headset_yellow_F",
    "H_Construction_earprot_yellow_F",
    "H_Construction_basic_red_F",
    "H_Construction_headset_red_F",
    "H_Construction_earprot_red_F",
    "H_Construction_basic_orange_F",
    "H_Construction_headset_orange_F",
    "H_Construction_earprot_orange_F",
    "H_Construction_basic_black_F",
    "H_Construction_headset_black_F",
    "H_Construction_earprot_black_F",
    "H_Construction_basic_vrana_F",
    "H_Construction_headset_vrana_F",
    "H_Construction_earprot_vrana_F"
];
};

if (_hasGM) then {
  _dlchats append [
    "gm_dk_headgear_hat_boonie_m84",
    "gm_ge_headgear_hat_boonie_oli",
    "gm_ge_headgear_hat_boonie_wdl",
    "gm_xx_headgear_headwrap_01_blk",
    "gm_xx_headgear_headwrap_01_blu",
    "gm_xx_headgear_headwrap_01_grn",
    "gm_xx_headgear_headwrap_01_oli",
    "gm_xx_headgear_headwrap_01_wht",
    "gm_xx_headgear_headwrap_01_dino",
    "gm_ge_headgear_hat_beanie_blk"
  ];
};

if (_hasWs) then {
  _dlchats append [
    "lxWS_H_Booniehat_desert",
    "lxWS_H_cloth_5_B",
    "lxWS_H_cloth_5_C",
    "lxWS_H_cloth_5_A"
  ];
};

if (_hasRF) then {
  _dlchats append [
    "H_Cap_marshal_blue_RF"
  ];
  _workerHelmets append [
    "H_Cap_marshal_blue_RF",
    "H_Helmet_HardHat_White_RF",
    "H_Helmet_HardHat_Yellow_RF",
    "H_Helmet_HardHat_Green_RF",
    "H_Helmet_HardHat_Red_RF",
    "H_Helmet_HardHat_Orange_RF",
    "H_Helmet_HardHat_Blue_RF",
    "H_Helmet_HardHat_Black_RF"
];
};

["headgear", _civHats + _dlchats] call _fnc_saveToTemplate;

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms + _dlcUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats + _dlchats];
_loadoutData set ["workerHelmets", _workerHelmets];
private _pressHelmets = if (_hasLawsOfWar) then {
    ["H_Cap_press", "H_PASGT_basic_blue_press_F", "H_PASGT_neckprot_blue_press_F"];
} else {
    ["H_Cap_press"];
};
_loadoutData set ["pressHelmets", _pressHelmets];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];

private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    [["workerHelmets", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
