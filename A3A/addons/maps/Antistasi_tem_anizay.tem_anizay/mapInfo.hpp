class tem_anizay {
	population[] = {}; //population good
	disabledTowns[] = {"FobNauzad","FobObeh"};
	antennas[] = {
		{6029.91,3991.35,-0.00282288},{2256.28,6232.65,-0.207352},{4769.32,8327.64,0.0103607},{8476.38,4978.83,-0.191177},{8304.16,7129.67,0},{3086.77,8396.11,0.0198364},{943.493,4638.36,0.00810242},{3833.18,832.105,-0.103607}
	};
	antennasBlacklistIndex[] = {}; //all antennas good
	banks[] = {}; //no suitable building available
	garrison[] = {
		{},{"outpost_8","factory_4","control_19","control_44","control_45"},{},{"control_19","control_44","control_45"}
	};
	fuelStationTypes[] = {
		"Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_01_pump_malevil_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"
	};
	milAdministrations[] = {
		{3977.605,7186.508,0},{6251.432,6920.912,0}
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
