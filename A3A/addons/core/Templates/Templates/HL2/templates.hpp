	class HL_Base
	{
        	requiredAddons[] = {"HL_CMB_Core","CUP_BaseConfigs","CUP_Vehicles_Core","HL_CMB_Weapons_SMG_01","HL_CMB_Vehicles","HL_CMB_Weapons","WBK_Combinus"};
        	logo = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa);
        	basepath = QPATHTOFOLDER(Templates\Templates\HL2);
        	priority = 30;
        	climate[] = {"temperate","tropical","arid","arctic"};
	};

	class HL_COMB : HL_Base
	{
        	side = "Inv";
        	flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_combine_ca.paa);
        	name = "Universal Union";
        	file = "Half_Life_Combine";
        	description = "We are the Universal Union. Held by a conglomerate effort to Unite, Protect, and Eliminate.";
	};

	class HL_REB : HL_Base
	{
        	side = "Reb";
        	flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_ca.paa);
        	name = "Forward Resistance";
        	file = "Half_Life_Rebel";
        	description = "The Forward Resistance. We fight for a free and better Earth. We are the front line of Humanity.";
	};
	
	class HL_COA : HL_Base
	{
        	side = "Occ";
        	flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_ca.paa);
        	name = "United Defense Coalition";
        	file = "Half_Life_Rebel";
        	description = "The remnants of the old world militaries. Fighting to restore earth to the old order.";
	};	
	
	class HL_CIV : HL_Base
	{
        	side = "Civ";
        	flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_combine_ca.paa);
        	name = "Union Citizens";
        	file = "Half_Life_Citizen";
	};
