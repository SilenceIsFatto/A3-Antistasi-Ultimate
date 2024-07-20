class fapovo {
	population[] = {
		{"biaboj", 293},
		{"mimi", 74},
		{"narancici", 50},
		{"ivanograd", 120},
		{"lixovo", 110},
		{"sossana", 75},
		{"zelina", 55},
		{"botana", 297},
		{"mikula", 17},
		{"viruvitia", 103},
		{"kruger", 226},
		{"jabovo", 108},
		{"malinka", 4},
		{"sharkovo", 168},
		{"sbp1", 115},
		{"jabovo2", 163},
		{"sbp2", 129},
		{"ranica", 32},
		{"vetlan", 22},
		{"islatera", 31},
		{"gralin", 50},
		{"jagobor", 37},
		{"suzevac", 58},
		{"vinkov", 12},
		{"prilov", 27},
		{"gova", 34},
		{"beratna", 449},
		{"vilay", 66},
		{"dolsko", 28},
		{"katamov", 36},
		{"chudy", 70},
		{"tf1", 122},
		{"sunburra", 40},
		{"bumin", 55},
		{"orlov", 157},
		{"plano", 300},
		{"islanoela", 127},
		{"magnola", 72},
		{"ratun", 193},
		{"lazina", 115},
		{"morana", 30}
	};
	disabledTowns[] = {"graltech", "oilterminal", "owl", "coyote", "forge", "rangetiren", "sundial", "aris", "ufocamp", "gypsy", "radar2", "kalina", "bosco", "laguna", "sbp1", "sbp2"}; //no towns that need to be disabled
	antennas[] = {
		{1545.13,1279.5,0},{4480.38,629.25,0},{571.25,8023.13,0}
	};
	antennasBlacklistIndex[] = {};
	banks[] = {
		
	};
	garrison[] = {
		{},{},{},{}
	};
	fuelStationTypes[] = {
		"Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_fs_feed_F","Land_FuelStation_Feed_F","Land_FuelStation_01_pump_malevil_F","Land_Fuelstation","Land_Fuelstation_army","Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC"
	};
	milAdministrations[] = {
		{8752.45,5621.98,0},{3031,9631,0},{8494.14,1690.66,0},{903.379,4074.86,0},{2973.32,1564.61,0}
	};
	climate = "arid";
	buildObjects[] = {
		{"Land_fortified_nest_big_EP1", 300}, {"Land_Fort_Watchtower_EP1", 300}, {"Fortress2", 200}, {"Fortress1", 100}, {"Fort_Nest", 60},
		{"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140}, {"ShedBig", 100}, {"Shed", 100}, {"ShedSmall", 60}, {"Land_GuardShed", 30},
		// CUP sandbag walls
		{"Land_BagFenceLong", 10}, {"Land_BagFenceShort", 10}, {"Land_BagFenceRound", 10},        //{"Land_BagFenceEnd", 0, 5}, 
		// Other CUP fences
		{"Land_fort_artillery_nest_EP1", 200}, {"Land_fort_rampart_EP1", 50}, {"Fort_Barricade", 50}, {"Fence", 20}, {"FenceWood", 10}, {"FenceWoodPalet", 10}, 
		// Non-camo vanilla stuff
		{"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
		{"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
	};
};