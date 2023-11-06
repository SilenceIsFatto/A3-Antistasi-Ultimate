class blud_vidda {
	population[] = {
		{"DefaultKeyPoint3",40},{"DefaultKeyPoint7",360},{"DefaultKeyPoint9",163},{"DefaultKeyPoint33",122},{"DefaultKeyPoint34",60},{"DefaultKeyPoint37",312},{"DefaultKeyPoint39",109},{"DefaultKeyPoint51",176},{"DefaultKeyPoint58",92},{"DefaultKeyPoint73",98},{"DefaultKeyPoint91",154},{"DefaultKeyPoint92",86},{"DefaultKeyPoint104",63},{"DefaultKeyPoint31", 180}
	};
	disabledTowns[] = {"DefaultKeyPoint40", "DefaultKeyPoint35", "DefaultKeyPoint88", "DefaultKeyPoint100"};
	antennas[] = {
		{1694.68,4224.15,0},{7039.14,7377.56,0},{1016.07,3022.08,0},{11360.8,3840.86,0},{5352.11,2864.58,0},{7091.22,11366.6,0},{2229.25,7307.28,0},{11484.7,10539,0},{9586.24,8275.53,0}
	};
	antennasBlacklistIndex[] = {};
	banks[] = {
		{5467.52,1521.78,0},{2697.54,2362.11,0},{663.936,6409.57,0},{8583.59,6901.04,0},{10552.7,6586.09,0}
	};
	garrison[] = {
		{},{"factory","resource_1", "airport_1", "outpost_1", "outpost_15", "resource", "milbase", "outpost", "control_2", "control_1", "control_7", "control", "control_6", "control_3", "control_8", "control_16","control_10"},{},{"control_2", "control_1", "control_7", "control", "control_6", "control_3", "control_8", "control_16","control_10"}
	};
	fuelStationTypes[] = {
		"Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F"
	};
	milAdministrations[] = {
		{5315.8,1595.1,0},{2655.02,2315.25,0},{658.05,6387.36,0},{6439.11,4345.03,0.494766},{10483.2,6725.65,0},{8478.41,6968.74,1.52588e-005}
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