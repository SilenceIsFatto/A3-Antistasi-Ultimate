["attributesVehicles", [
    ["I_SDV_01_F", ["rebCost", 3000]],
    ["I_Boat_Armed_01_minigun_F", ["rebCost", 5000]],
    ["O_Boat_Armed_01_hmg_F", ["rebCost", 4000]],
    ["a3a_C_Heli_Transport_02_F", ["rebCost", 8000]],
    ["a3a_C_Heli_Light_02_blue_F", ["rebCost", 6500]],
    //WS
    ["I_C_Offroad_02_LMG_F", ["rebCost", 500]],
    ["I_G_Offroad_01_armor_base_lxWS", ["rebCost", 500]],
    ["I_G_Offroad_01_armor_armed_lxWS", ["rebCost", 1100]],
    ["I_G_Offroad_01_armor_AT_lxWS", ["rebCost", 1500]],

    ///apex
    ["I_C_Offroad_02_unarmed_F", ["rebCost", 150]],
    ["I_C_Offroad_02_AT_F", ["rebCost", 1200]],
    //RF
    ["I_G_Pickup_rf", ["rebCost", 400]],
    ["a3u_black_Pickup_mmg_alt_rf", ["rebCost", 700]],
    ["a3u_black_Pickup_mmg_frame_rf", ["rebCost", 700]],
    ["I_G_Pickup_hmg_rf", ["rebCost", 600]],
    ///gm
    ["gm_pl_army_ural4320_cargo", ["rebCost", 350]],
    ["gm_dk_army_u1300l_container", ["rebCost", 400]],
    ["gm_ge_army_kat1_451_cargo", ["rebCost", 500]],
    ["gm_ge_army_k125", ["rebCost", 100]],
    ["gm_xx_civ_bicycle_01", ["rebCost", 50]],
    ["gm_ge_dbp_bicycle_01_ylw", ["rebCost", 50]],
    //csla
    ["CSLA_F813", ["rebCost", 600]],
    ["CSLA_F813o", ["rebCost", 600]],
    ["CSLA_CIV_JARA250", ["rebCost", 100]],
    ["US85_TT650", ["rebCost", 100]]
]] call _fnc_saveToTemplate;

////PLEASE SOMEONE HELP ME ADD PROPER PRICES TO DLC VEHICLES

if (isClass (configFile >> "CfgPatches" >> "RF_Vehicles")) then {
    (["attributesVehicles"] call _fnc_getFromTemplate) append [
        ["C_Heli_EC_01A_civ_RF", ["rebCost", 8000]],
        ["C_Heli_EC_01_civ_RF", ["rebCost", 8000]],
        ["C_Heli_EC_04_rescue_RF", ["rebCost", 8000]],
        ["C_Pickup_rf", ["rebCost", 250]],
        ["C_Pickup_covered_rf", ["rebCost", 250]]
    ];
};