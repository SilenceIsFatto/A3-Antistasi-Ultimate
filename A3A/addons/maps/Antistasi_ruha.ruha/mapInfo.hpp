class ruha {
	population[] = {
{"DefaultKeyPoint1", 251},
{"DefaultKeyPoint2", 138},
{"DefaultKeyPoint3", 237},
{"DefaultKeyPoint4", 42},
{"DefaultKeyPoint5", 51},
{"Pihlajamaki", 67},
{"Lansikylasawmill", 48},
{"DefaultKeyPoint6", 57},
{"Mikinneva", 41},
{"DefaultKeyPoint7", 153},
{"Hyyppa", 66},
{"Tervasmaki", 97},
{"DefaultKeyPoint8", 172},
{"DefaultKeyPoint9", 23},
{"DefaultKeyPoint10", 180},
{"DefaultKeyPoint11", 109},
{"DefaultKeyPoint12", 97},
{"DefaultKeyPoint13", 280},
{"DefaultKeyPoint14", 220},
{"DefaultKeyPoint15", 151},
{"DefaultKeyPoint16", 174},
{"DefaultKeyPoint17", 243},
{"metsalaoffice", 462},
{"Takala", 104},
{"Kumuri", 90},
{"Ulvila", 110},
{"DefaultKeyPoint19", 12},
{"DefaultKeyPoint20", 236},
{"DefaultKeyPoint21", 150},
{"DefaultKeyPoint22", 116},
{"DefaultKeyPoint23", 62},
{"DefaultKeyPoint24", 110},
{"DefaultKeyPoint25", 82},
{"DefaultKeyPoint26", 269},
{"DefaultKeyPoint27", 127},
{"Valimaki", 106},
{"Lehto", 99},
{"Kontolanmaki", 73},
{"Jouttiluoma", 116},
{"Pauhu", 110},
{"Hietala", 159},
{"DefaultKeyPoint28", 125},
{"DefaultKeyPoint29", 97},
{"DefaultKeyPoint30", 47}
	};
	disabledTowns[] = {"DefaultKeyPoint2","Lansikylasawmill","DefaultKeyPoint15","DefaultKeyPoint16","metsalaoffice","DefaultKeyPoint30"};
	antennas[] = {
		{3449.677,5272.719,0},{362.274,154.511,0},{6676.333,1583.353,0},{952.570,3233.044,0},{4260.689,3322.778,0},{6583.8,7036.820,0}
	};
	antennasBlacklistIndex[] = {};
	banks[] = {}; //no suitable building available
	garrison[] = {
		{},{"milbase_2","outpost_9","resource_2","control_11"},{},{"control_11"}
	};
	fuelStationTypes[] = {"Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"};
	milAdministrations[] = {
		{4363.914,4416.497,0.576},{3666.609,2054.418,1.439},{5946.714,6889.657,0.366}
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
