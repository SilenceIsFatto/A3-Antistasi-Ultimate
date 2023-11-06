class esseker {
	population[] = {
		{"Posestra",68},{"Chokory",89},{"Rama",74},{"Melina", 90},
		{"Focha", 51},{"Lug", 62},{"Kula", 161},{"Borosh", 69},
		{"Krupa", 48},{"Kupres", 178},{"NeptuneResort", 50},
		{"Tuk", 67},{"Gulash", 80},{"Nekrashuk", 40},
		{"DanilovGrad", 136}, {"EssekerCenter", 346},
		{"tvrdja", 326},{"PetlovGrad", 272}
	};
	disabledTowns[] = {
		"VillaVictoriaHotel","CampSpencer",
		"Scrapyard","PlominoPowerStation","Novidan", "CahrdakResort", 
		"ESPetrol", "WeissCollege", "Plava", "LowerEsseker", "EssekerIndustry", 
		"Gromada", "IgmanmilitaryBase", "AdelaAirfield", "junkyard", "Pilanasawmill"
	};
	antennas[] = {
		{7598.43,10128.5,0}, {10118.9,7969.51,0}, {8471.58,4716.73,5.59685},{10858.9,5419.63,1.94853},{3248.57,7201.27,0},{3987.2,4524,0.494751}
	};
	antennasBlacklistIndex[] = {};
	banks[] = {};
	garrison[] = {
		{},{"airport", "outpost"},{},{"control", "control_2","control_14", "control_6","control_25"}
	};
	fuelStationTypes[] = {
		"Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F",
		"Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"
	};
	milAdministrations[] = {
		{10065.3,9862.26,0},{7810.47,6892.65,0},{6271.49,7005.4,0},{8824.48,5785.3,0.0515652},{4656.4,8115.58,0.00173187},{4576.44,3671.31,0.237198},{2713.67,4540.18,-0.0525513}
	};
	climate = "temperate";
	buildObjects[] = {
        // Large vanilla arid structures
        {"Land_BagBunker_Large_F", 300}, {"Land_BagBunker_Tower_F", 300}, {"Land_BagBunker_Small_F", 60},
        {"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140},
        // Vanilla arid sandbag walls
        {"Land_BagFence_Long_F", 10}, {"Land_BagFence_Round_F", 10}, {"Land_BagFence_Short_F", 10},
        // Non-camo vanilla stuff
        {"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
        {"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
    };
};