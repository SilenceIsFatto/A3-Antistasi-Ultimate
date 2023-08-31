    class HALFLIFE_Base
    {
        requiredAddons[] = {"HL_CMB_Core","CUP_BaseConfigs","CUP_Vehicles_Core","HL_CMB_Weapons_SMG_01","HL_CMB_Vehicles","HL_CMB_Weapons","WBK_Combinus"};
        logo = QPATHTOFOLDER(Templates\Templates\HL2\images\flag_combine_co.paa); // before people go "WOOO WHEN UKRAINE FACTION", no! STALKER is set in ukraine around 2000-2010
        basepath = QPATHTOFOLDER(Templates\Templates\HL2);
        priority = 30;
        climate[] = {"temperate","tropical","arid","arctic"};
    };

    class Union_Military : HALFLIFE_Base
    {
        side = "Inv";
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_combine_ca.paa);
        name = "Universal Union";
        file = "Half_Life_Combine";
        description = "We are the Universal Union. Held by a conglomerate effort to Unite, Protect, and Eliminate.";
    };
    class Union_Resistance : HALFLIFE_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_ca.paa);
        name = "Forward Resistance";
        file = "Half_Life_Rebel";
        description = "The Forward Resistance. We fight for what Earth used to be, not what it is. We are the front line of Humanity.";
	    };	
    class Global_Defense : HALFLIFE_Base
    {
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_rebel_ca.paa);
        name = "United Defense Coalition";
        file = "Half_Life_Rebel";
        description = "The Forward Resistance. We fight for what Earth used to be, not what it is. We are the front line of Humanity.";
	    };		
	 class Union_Citizen : HALFLIFE_Base
    {
        side = "Civ";
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_combine_ca.paa);
        name = "Citizens Union";
        file = "Half_Life_Citizen";
    };