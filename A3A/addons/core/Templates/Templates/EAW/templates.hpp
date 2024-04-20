    class EAW_Base
    {
        requiredAddons[] = {"IFA3_Core","fow_tanks","IFA3_FOW_Compat","EAW_Air","WBK_MeleeMechanics"};
        basepath = QPATHTOFOLDER(Templates\Templates\EAW);
        logo = QPATHTOFOLDER(Templates\Templates\EAW\eaw_logo.paa);
        priority = 16;
        equipFlags[] = {"lowTech"};
    };

    class EAW_AI_JAP_Temperate : EAW_Base
    {
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\EAW\ija_flag.paa);
        name = "EAW IJA";
        file = "EAW_AI_JAP_Temperate";
    };
	
    class EAW_Reb_CHI : EAW_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\EAW\roc_flag.paa);
        name = "EAW China";
        file = "EAW_Reb_CHI";
    };		
	
    class EAW_CIV : EAW_Base
    {
        side = "Civ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\EAW\roc_flag.paa);
        name = "EAW Civs";
        file = "EAW_CIV";
    };

