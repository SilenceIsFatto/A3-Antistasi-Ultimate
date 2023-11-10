    class NFTS_Base
    {
        requiredAddons[] = {"IFA3_Core", "NORTH_Main"};
        basepath = QPATHTOFOLDER(Templates\Templates\NFtS);
        logo = QPATHTOFOLDER(Templates\Templates\NFtS\NFtS_logo.paa);
        priority = 16;
        equipFlags[] = {"lowTech"};
    };	

    class NFTS_SOV_Temperate : NFTS_Base
    {
        side = "Inv";
        flagTexture = "\WW2\Core_t\IF_Decals_t\Ussr\flag_SU_co.paa";
        name = "NFtS SOV Temperate";
        file = "NFtS_AI_SOV_Temperate";
        climate[] = {"temperate","tropical","arid"};
    };

    class NFTS_SOV_Arctic : NFTS_Base
    {
        side = "Inv";
        flagTexture = "\WW2\Core_t\IF_Decals_t\Ussr\flag_SU_co.paa";
        name = "NFtS SOV Winter";
        file = "NFtS_AI_SOV_Arctic";
        climate[] = {"arctic"};
    };

    class NFTS_NOR_Temperate : NFTS_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\NFtS\flag_norway.paa);
        name = "NFtS NOR";
        file = "NFtS_Reb_NOR_Temperate";
		climate[] = {"arid","temperate","tropical"};
    };

    class NFTS_NOR_Arctic : NFTS_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\NFtS\flag_norway.paa);
        name = "NFtS NOR";
        file = "NFtS_Reb_NOR_Arctic";
		climate[] = {"arctic"};
    };

    class NFTS_FIN_Temperate : NFTS_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\NFtS\flag_finland.paa);
        name = "NFtS FIN";
        file = "NFtS_Reb_FIN_Temperate";
		climate[] = {"arid","temperate","tropical"};
    };

    class NFTS_FIN_Arctic : NFTS_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\NFtS\flag_finland.paa);
        name = "NFtS FIN";
        file = "NFtS_Reb_FIN_Arctic";
		climate[] = {"arctic"};
    };
