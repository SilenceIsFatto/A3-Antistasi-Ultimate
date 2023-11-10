	class HL_Base
	{
        	requiredAddons[] = {"HL_CMB_Core","CUP_BaseConfigs","CUP_Vehicles_Core","HL_CMB_Weapons_SMG_01","HL_CMB_Vehicles","HL_CMB_Weapons","WBK_Combinus"};
        	logo = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa);
        	basepath = QPATHTOFOLDER(Templates\Templates\HL2);
        	priority = 30;
 
	};

	class HL_COMB : HL_Base
	{
        	side = "Inv";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa);
        	name = "Universal Union";
        	file = "HL_Combine";
        	description = "We are the Universal Union. Held by a conglomerate effort to Unite, Protect, and Eliminate.";
	};

	class HL_REB : HL_Base
	{
        	side = "Reb";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_rebel_co.paa);
        	name = "Forward Resistance";
        	file = "HL_Rebel";
        	description = "The Forward Resistance. We fight for a free and better Earth. We are the front line of Humanity.";
	};
	
	class HL_COA_ARD : HL_Base
	{
        	side = "Occ";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\udc_flag_co.paa);
        	name = "United Defense Coalition";
        	file = "HL_Coalition_Arid";
        	description = "The remnants of the old world militaries. Fighting to restore earth to the old order.";
	        climate[] = {"arid"};		
	};	
		class HL_COA_TMPRT : HL_Base
	{
        	side = "Occ";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\udc_flag_co.paa);
        	name = "United Defense Coalition";
        	file = "HL_Coalition_Temperate";
        	description = "The remnants of the old world militaries. Fighting to restore earth to the old order.";
	        climate[] = {"temperate"};		
	};	
	class HL_CIV : HL_Base
	{
        	side = "Civ";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa);
        	name = "Union Citizens";
        	file = "HL_Citizen";
	};

		class HL_RIV : HL_Base
	{
        	side = "Riv";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa);
        	name = "Collaborative Enforcers";
        	file = "HL_Rival";
	};

	class HL_ZOM : HL_Base
	{
        	side = "Civ";
        	flagTexture = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa);
        	name = "Xenian Life";
        	file = "HL_Zombie";
	};
