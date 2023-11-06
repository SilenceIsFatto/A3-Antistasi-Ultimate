class sefrouramal {
	population[] = {}; //automated data is fine and needs no adaptation
	disabledTowns[] = {};
	antennas[] = {
		{4330.28,1248.04,0},{3298.5,2808.47,0},{8336.84,3027.88,0},{4316.21,4958.38,0},{4316.54,7086.75,0},{6072.25,7593.97,0}
	};
	antennasBlacklistIndex[] = {};
	banks[] = {};
	garrison[] = {{},{"airport_1", "outpost_8", "outpost_9"},{},{"control_41", "control_2", "control_5"}};
	fuelStationTypes[] = {
		"Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F"
	};
	milAdministrations[] = {
		{4499.87,2902.21,0}, {5565.09,5087.64,0}
	};
	climate = "arid";
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