    class FOW_Base
    {
        requiredAddons[] = {"IFA3_Core","fow_tanks","IFA3_FOW_Compat"};
        basepath = QPATHTOFOLDER(Templates\Templates\FoW);
        logo = QPATHTOFOLDER(Templates\Templates\FoW\fow_logo.paa);
        priority = 15;
        equipFlags[] = {"lowTech"};
    };

    class FOW_WEH_Temperate : FOW_Base
    {
        side = "Occ";
        flagTexture = "ww2\core_t\if_decals_t\german\flag_ger_co.paa";
        name = "FoW WEH Temperate";
        file = "FOW_AI_WEH_Temperate";
    };
	
    class FOW_USA_Temperate : FOW_Base
    {
        side = "Inv";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "FoW USA Temperate";
        file = "FOW_AI_USA_Temperate";
    };		

