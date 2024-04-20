
class Templates
{
    class Base
    {
        description = "";
    };

    // ************************************** Western Sahara *******************************************************

    class WS_Base : Base
    {
        requiredAddons[] = {"Weapons_1_F_lxWS"};
        logo = "\lxWS\data_f_lxWS\Logos\arma3_lxws_logo_ca.paa";
        basepath = QPATHTOFOLDER(Templates\Templates\WS); //the path to the template folder
        priority = 1;
        equipFlags[] = {"vanilla"};
    };

    class WS_Civ : WS_Base
    {
        side = "Civ";
        flagTexture = "\lxws\data_f_lxws\img\flags\flag_Argana_CO.paa";
        name = "Western Sahara";
        file = "WS_Civ";
    };

    class WS_Tura : WS_Base
    {
        side = "Reb";
        flagTexture = "\lxws\data_f_lxws\img\Flags\flag_Argana_CO.paa";
        basepath = QPATHTOFOLDER(Templates\Templates\WS);
        name = "Tura";
        file = "WS_Reb_Tura";
        maps[] = {"SefrouRamal", "takistan"};
        forceDLC[] = {"ws"};
        description = $STR_A3AP_setupFactionsTab_ws_tura;
    };

    class WS_Exegermenos : WS_Base
    {
        side = "Riv";
        flagTexture = "\A3\Data_F\Flags\Flag_red_CO.paa";
        name = "WS Exegerménos";
        file = "WS_Riv_Exegermenos";
        description = $STR_A3AP_setupFactionsTab_exegermenos;
    };

    // ************************************** Vanilla *******************************************************

    class Vanilla_Base : Base
    {
        requiredAddons[] = {};
        logo = "a3\ui_f\data\logos\arma3_white_ca.paa";
        basepath = QPATHTOFOLDER(Templates\Templates\Vanilla); //the path to the template folder
        priority = 10;
        equipFlags[] = {"vanilla"};
        description = $STR_A3AP_setupFactionsTab_vanilla_generic;
    };

    class Vanilla_CSAT_Arid : Vanilla_Base
    {
        side = "Inv";
        flagTexture = "A3\Data_F\Flags\Flag_CSAT_CO.paa";
        name = "A3 CSAT Arid";
        file = "Vanilla_AI_CSAT_Arid";
        climate[] = {"arid", "arctic"};
        description = $STR_A3AP_setupFactionsTab_csat;
    };

    class Vanilla_CSAT_Temperate : Vanilla_CSAT_Arid
    {
        name = "A3 CSAT Temperate";
        file = "Vanilla_AI_CSAT_Temperate";
        climate[] = {"temperate","tropical"};
    };

    class Vanilla_NATO_Arid : Vanilla_Base
    {
        side = "Occ";
        flagTexture = "\A3\Data_F\Flags\Flag_NATO_CO.paa";
        name = "A3 NATO Arid";
        file = "Vanilla_AI_NATO_Arid";
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_nato;
    };

    class Vanilla_NATO_Temperate : Vanilla_NATO_Arid
    {
        name = "A3 NATO Temperate";
        file = "Vanilla_AI_NATO_Temperate";
        climate[] = {"temperate", "arctic"};
    };

    class Vanilla_NATO_Tropical : Vanilla_NATO_Arid
    {
        name = "A3 NATO Tropical";
        file = "Vanilla_AI_NATO_Tropical";
        climate[] = {"tropical"};
    };

    class Vanilla_LDF : Vanilla_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f_enoch\flags\flag_enoch_co.paa";
        name = "A3 LDF";
        file = "Vanilla_AI_LDF";
        maps[] = {"enoch","vt7"};
        climate[] = {"temperate"};
        forceDLC[] = {"enoch"};
    };

    class Vanilla_AAF : Vanilla_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f\flags\flag_aaf_co.paa";
        name = "A3 AAF";
        file = "Vanilla_AI_AAF";
        maps[] = {"altis", "malden"};
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_aaf;
    };

    class Vanilla_FIA : Vanilla_Base
    {
        side = "Reb";
        flagTexture = "a3\data_f\flags\flag_fia_co.paa";
        name = "A3 FIA";
        file = "Vanilla_Reb_FIA";
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_fia;
    };

    class Vanilla_SDK : Vanilla_Base
    {
        side = "Reb";
        flagTexture = "\A3\Data_F_Exp\Flags\flag_SYND_CO.paa";
        name = "A3 SDK";
        file = "Vanilla_Reb_SDK";
        climate[] = {"tropical"};
        description = $STR_A3AP_setupFactionsTab_sdk;
    };

    class Vanilla_LL : Vanilla_Base
    {
        side = "Reb";
        flagTexture = "\A3\Data_F\Flags\Flag_green_CO.paa";
        name = "A3 LL";
        file = "Vanilla_Reb_LL";
        climate[] = {"temperate", "arctic"};
        description = $STR_A3AP_setupFactionsTab_ll;
    };

    class Vanilla_Exegermenos : Vanilla_Base
    {
        side = "Riv";
        flagTexture = "\A3\Data_F\Flags\Flag_red_CO.paa";
        name = "A3 Exegerménos";
        file = "Vanilla_Riv_Exegermenos";
        climate[] = {"arid", "temperate", "arctic"};
        description = $STR_A3AP_setupFactionsTab_exegermenos;
    };

    class Vanilla_LE : Vanilla_Base
    {
        side = "Riv";
        flagTexture = "\A3\Data_F_Exp\Flags\flag_SYND_CO.paa";
        name = "A3 L'Ensemble";
        file = "Vanilla_Riv_LE";
        climate[] = {"tropical"};
        description = $STR_A3AP_setupFactionsTab_le;
    };

    class Vanilla_Civ : Vanilla_Base
    {
        side = "Civ";
        flagTexture = "\A3\Data_F\Flags\Flag_Altis_CO.paa";
        name = "Vanilla";
        file = "Vanilla_Civ";
        description = $STR_A3AP_setupFactionsTab_vanilla_civ;
    };


    // ************************************** RHS Factions *******************************************************

    class RHS_Base : Base
    {
        requiredAddons[] = {"rhsgref_main", "rhssaf_c_vehicles", "rhs_c_tanks", "RHS_US_A2Port_Armor"};
        basepath = QPATHTOFOLDER(Templates\Templates\RHS);
        logo = "\rhsusf\addons\rhsusf_main\data\rhs_logo_ca.paa";
        priority = 30;
        equipFlags[] = {"specialRHS"};
    };

    class RHS_NAPA : RHS_Base
    {
        side = "Reb";
        flagTexture = "\rhsgref\addons\rhsgref_main\data\Flags\flag_NAPA_co.paa";
        logo = "rhsgref\addons\rhsgref_main\data\rhs_logo_ca.paa";
        name = "RHS NAPA";
        file = "RHS_Reb_NAPA";
        description = $STR_A3AP_setupFactionsTab_napa_3cbf;
    };

    class RHS_CDF : RHS_Base
    {
        side = "Occ";
        flagTexture = "\rhsgref\addons\rhsgref_main\data\Flags\flag_cdf_co.paa";
        name = "RHS CDF";
        file = "RHS_AI_CDF";
        maps[] = {"cup_chernarus_A3", "brf_sumava"};
        climate[] = {"temperate", "arctic"};
        description = $STR_A3AP_setupFactionsTab_cdf;
    };

    class RHS_AFRF : RHS_Base
    {
        side = "Inv";
        flagTexture = "rhsafrf\addons\rhs_main\data\flag_rus_co.paa";
        logo = "rhsafrf\addons\rhs_main\data\rhs_logo_ca.paa";
        name = "RHS AFRF";
        file = "RHS_AI_AFRF";
        description = $STR_A3AP_setupFactionsTab_aegis_afrf;
    };

    class RHS_US_Army_Arid : RHS_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "RHS US Army Arid";
        file = "RHS_AI_US_Army_Arid";
        description = $STR_A3AP_setupFactionsTab_usaf;
        climate[] = {"arid"};
    };
    class RHS_US_Army_Temperate : RHS_US_Army_Arid
    {
        name = "RHS US Army Temperate";
        file = "RHS_AI_US_Army_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class RHS_USMC_Arid : RHS_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "RHS USMC Arid";
        file = "RHS_AI_USMC_Arid";
        description = $STR_A3AP_setupFactionsTab_usmc;
        climate[] = {"arid"};
    };
    class RHS_USMC_Temperate : RHS_USMC_Arid
    {
        name = "RHS USMC Temperate";
        file = "RHS_AI_USMC_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class RHS_CHDKZ : RHS_Base
    {
        side = "Riv";
        flagTexture = "\rhsgref\addons\rhsgref_main\data\flag_chdkz_co.paa";
        logo = "rhsgref\addons\rhsgref_main\data\rhs_logo_ca.paa";
        name = "RHS CHDKZ";
        file = "RHS_Riv_CHDKZ";
        description = $STR_A3AP_setupFactionsTab_chdkz;
    };

    class RHS_Civ : RHS_Base
    {
        side = "Civ";
        flagTexture = "a3\data_f\flags\flag_fia_co.paa";
        logo = "rhsgref\addons\rhsgref_main\data\rhs_logo_ca.paa";
        name = "RHS";
        file = "RHS_Civ";
    };
	
    class RHS_SAF : RHS_Base
    {
	    side = "Inv";
	    flagTexture = "rhssaf\addons\rhssaf_main\data\flags\flag_serbia_co.paa";
        name = "RHS SAF";
        file = "RHS_AI_SAF";
    };


    // ************************************** 3CB Factions *******************************************************

    class 3CBF_Base : Base
    {
        requiredAddons[] = {"UK3CB_Factions_Vehicles_SUV"};
        logo = "UK3CB_Factions\addons\UK3CB_Factions_Common\editor\logo_3cb_ca.paa";
        basepath = QPATHTOFOLDER(Templates\Templates\3CBF);
        priority = 40;
        equipFlags[] = {"specialRHS"};
    };

    class 3CBF_FIA : 3CBF_Base
    {
        side = "Reb";
        flagTexture = "a3\data_f\flags\flag_fia_co.paa";
        name = "3CBF FIA";
        file = "3CBF_Reb_FIA";
        description = $STR_A3AP_setupFactionsTab_fia_3cbf;
    };

    class 3CBF_NAPA : 3CBF_Base
    {
        side = "Reb";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_NAP\Flag\nap_flag_co.paa";
        name = "3CBF NAPA";
        file = "3CBF_Reb_NAPA";
        description = $STR_A3AP_setupFactionsTab_napa_3cbf;
    };

    class 3CBF_CCM : 3CBF_Base
    {
        side = "Reb";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_CCM\Flag\ccm_o_flag_co.paa";
        name = "3CBF CCM";
        file = "3CBF_Reb_CCM";
        description = $STR_A3AP_setupFactionsTab_ccm_3cbf;
    };

    class 3CBF_TKM : 3CBF_Base
    {
        side = "Reb";
        flagTexture = "uk3cb_factions\addons\uk3cb_factions_tkm\flag\tkm_b_flag_co.paa";
        name = "3CBF TKM";
        file = "3CBF_Reb_TKM";
        maps[] = {"takistan", "SefrouRamal"};
        description = $STR_A3AP_setupFactionsTab_tkm_3cbf;
    };

    class 3CBF_CHDKZ : 3CBF_Base
    {
        side = "Riv";
        flagTexture = "\rhsgref\addons\rhsgref_main\data\flag_chdkz_co.paa";
        name = "3CBF CHDKZ";
        file = "3CBF_Riv_CHDKZ";
        description = $STR_A3AP_setupFactionsTab_chdkz;
    };

    class 3CBF_CHDKZ_CW : 3CBF_CHDKZ
    {
        name = "3CBF CHDKZ (Cold War)";
        file = "3CBF_Riv_CHDKZ_CW";
        priority = 39;
    };

    class 3CBF_TI : 3CBF_Base
    {
        side = "Riv";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_TKC\Flag\tkc_flag_co.paa";
        name = "3CBF TI";
        file = "3CBF_Riv_TI";
        maps[] = {"takistan", "SefrouRamal"};
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_ti;
    };

    class 3CBF_CHC : 3CBF_Base
    {
        side = "Civ";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_CHC\Flag\CHC_flag_co.paa";
        name = "3CBF Eastern European";
        file = "3CBF_Civ_CHC";
        description = $STR_A3AP_setupFactionsTab_easterneuropean;
        climate[] = {"temperate"};
    };

    class 3CBF_A : 3CBF_Base
    {
        side = "Civ";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_ADC\Flag\ADC_flag_co.paa";
        name = "3CBF Arid";
        file = "3CBF_Civ_A";
        description = $STR_A3AP_setupFactionsTab_a;
        climate[] = {"arid"};
    };

    class 3CBF_TKC: 3CBF_Base
    {
        side = "Civ";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_TKA\Flag\tka_flag_co.paa";
        name = "3CBF Takistan";
        file = "3CBF_Civ_TKC";
        climate[] = {"arid"};
        maps[] = {"takistan", "SefrouRamal"};
        description = $STR_A3AP_setupFactionsTab_takistan;
    };

    class 3CBF_LDF : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f_enoch\flags\flag_enoch_co.paa";
        name = "3CBF LDF";
        file = "3CBF_AI_LDF";
        description = $STR_A3AP_setupFactionsTab_ldf;
        climate[] = {"temperate"};
        maps[] = {"Enoch"};
    };

    class 3CBF_CDF : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_CHC\Flag\CHC_flag_co.paa";
        name = "3CBF CDF";
        file = "3CBF_AI_CDF";
        description = $STR_A3AP_setupFactionsTab_cdf;
        climate[] = {"temperate"};
        maps[] = {"cup_chernarus_A3", "brf_sumava", "chernarus", "chernarus_summer", "Chernarus_Winter"};
    };

    class 3CBF_HIDF : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f_exp\flags\flag_tanoa_co.paa";
        name = "3CBF HIDF";
        file = "3CBF_AI_HIDF";
        description = $STR_A3AP_setupFactionsTab_hil;
        maps[] = {"tanoa"};
        climate[] = {"tropical"};
    };

    class 3CBF_AAF : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f\flags\flag_aaf_co.paa";
        name = "3CBF AAF";
        file = "3CBF_AI_AAF";
        maps[] = {"altis", "malden"};
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_aaf_3cbf;
    };

    class 3CBF_TKA : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_TKA\Flag\tka_flag_co.paa";
        name = "3CBF TKA";
        file = "3CBF_AI_TKA";
        maps[] = {"takistan", "SefrouRamal"};
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_tka;
    };

    class 3CBF_ARD : 3CBF_Base
    {
        side = "Inv";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_ARD\Flag\ARD_flag_co.paa";
        name = "3CBF ARD";
        file = "3CBF_AI_ARD";
        maps[] = {"takistan", "SefrouRamal"};
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_ard;
    };

    class 3CBF_AFRF : 3CBF_Base
    {
        side = "Inv";
        flagTexture = "rhsafrf\addons\rhs_main\data\flag_rus_co.paa";
        name = "3CBF AFRF";
        file = "3CBF_AI_AFRF";
        climate[] = {"arid","temperate","tropical","arctic"};
        description = $STR_A3AP_setupFactionsTab_aegis_afrf;
    };

    class 3CBF_US_Army_Arid : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "3CBF US Army Arid";
        file = "3CBF_AI_US_Army_Arid";
        description = $STR_A3AP_setupFactionsTab_usaf;
        climate[] = {"arid"};
    };
    class 3CBF_US_Army_Temperate : 3CBF_US_Army_Arid
    {
        name = "3CBF US Army Temperate";
        file = "3CBF_AI_US_Army_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class 3CBF_USMC_Arid : 3CBF_Base
    {
        side = "Occ";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_CW_US\Flag\cw_US_Marines_flag_co.paa";
        name = "3CBF USMC Arid";
        file = "3CBF_AI_USMC_Arid";
        description = $STR_A3AP_setupFactionsTab_usmc;
        climate[] = {"arid"};
    };
    class 3CBF_USMC_Temperate : 3CBF_USMC_Arid
    {
        name = "3CBF USMC Temperate";
        file = "3CBF_AI_USMC_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class 3CBF_SOV_CW : 3CBF_Base
    {
        priority = 39;
        side = "Inv";
        flagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_CW_SOV\Flag\cw_sov_flag_co.paa";
        name = "3CBF Red Army (Cold War)";
        file = "3CBF_AI_SOV_CW";
        description = $STR_A3AP_setupFactionsTab_ra;
        equipFlags[] = {"specialRHS", "coldWar"};
    };

    class 3CBF_US_Army_CW : 3CBF_Base
    {
        priority = 39;
        side = "Occ";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "3CBF US Army (Cold War)";
        file = "3CBF_AI_US_Army_CW";
        description = $STR_A3AP_setupFactionsTab_us_cw;
        equipFlags[] = {"specialRHS", "coldWar"};
    };

    //************* VN ********************************************************

    class VN_Base : Base
    {
        requiredAddons[] = {"vn_weapons"};
        logo = "\vn\data_f_vietnam\logos\vn_sml_ca.paa";
        basepath = QPATHTOFOLDER(Templates\Templates\VN);
        priority = 50;
        equipFlags[] = {"lowTech","replaceCompass","replaceWatch"};
        forceDLC[] = {"vn"};
    };

    class VN_MACV : VN_Base
    {
        priority = 51;
        side = "Occ";
        flagTexture = "\vn\objects_f_vietnam\flags\data\vn_flag_01_usa_co.paa";
        name = "VN MACV";
        file = "VN_AI_MACV";
        description = $STR_A3AP_setupFactionsTab_macv;
    };

    class VN_ARVN : VN_Base
    {
        side = "Inv";
        flagTexture = "\vn\objects_f_vietnam\flags\data\vn_flag_01_arvn_co.paa";
        name = "VN ARVN";
        file = "VN_AI_ARVN";
        description = $STR_A3AP_setupFactionsTab_arvn;
    };

    class VN_PAVN : VN_Base
    {
        side = "Inv";
        flagTexture = "vn\objects_f_vietnam\flags\data\vn_flag_01_pavn_co.paa";
        name = "VN PAVN";
        file = "VN_AI_PAVN";
        description = $STR_A3AP_setupFactionsTab_pavn;
    };

    class VN_VM : VN_Base
    {
        priority = 51;
        side = "Reb";
        flagTexture = "\vn\objects_f_vietnam\flags\data\vn_flag_01_lao_dmg_ca.paa";
        name = "VN VM";
        file = "VN_Reb_VM";
        description = $STR_A3AP_setupFactionsTab_vm;
    };

    class VN_VC : VN_Base
    {
        side = "Reb";
        flagTexture = "\vn\objects_f_vietnam\flags\data\vn_flag_01_vc_co.paa";
        name = "VN VC";
        file = "VN_Reb_VC";
        description = $STR_A3AP_setupFactionsTab_vc;
    };

    class VN_Riv_PL : VN_Base
    {
        side = "Riv";
        flagTexture = "\vn\objects_f_vietnam\flags\data\vn_flag_01_pl_co.paa";
        name = "VN PL";
        file = "VN_Riv_PL";
        description = $STR_A3AP_setupFactionsTab_pl;
    };

    class VN_Civ : VN_Base
    {
        side = "Civ";
        flagTexture = "\vn\objects_f_vietnam\flags\vn_flag_01_lao_co.paa";
        name = "Vietnam";
        file = "VN_Civ";
        description = $STR_A3AP_setupFactionsTab_vietcivs;
    };
	
    // ***************************** CUP *****************************

    #include "Templates\CUP\templates.hpp"	
	
    // ***************************** CW *****************************

    #include "Templates\CW\templates.hpp"

    // ***************************** IFA *****************************

    #include "Templates\IFA\templates.hpp"
	
    // ***************************** CSA38 *****************************

    #include "Templates\CSA38\templates.hpp"

    // ***************************** FFAA *****************************

    #include "Templates\FFAA\templates.hpp"
	
    // ***************************** Pedagne *****************************

    #include "Templates\Pedagne\templates.hpp"

    // ***************************** PLA *****************************

    #include "Templates\PLA\templates.hpp"
	
    // ***************************** SWE *****************************

    #include "Templates\SWE\templates.hpp"
	
    // ***************************** 3CB BAF *****************************

    #include "Templates\3CBBAF\templates.hpp"
	
    // ***************************** Unsung *****************************

    #include "Templates\UNS\templates.hpp"
	
    // ***************************** SPE IFA *****************************

    #include "Templates\SPE_IFA\templates.hpp"
  
    // ***************************** OPTRE *****************************

    #include "Templates\OPTRE\templates.hpp"
  
    // ***************************** RACS *****************************

    #include "Templates\RACS\templates.hpp"
  
    // ***************************** BWA3 *****************************

    #include "Templates\BWA3\templates.hpp"
	
    // ***************************** GM *****************************

    #include "Templates\GM\templates.hpp"

    // ***************************** Scion *****************************

    #include "Templates\Scion\templates.hpp"

    // ***************************** BRAF *****************************

    #include "Templates\BRAF\templates.hpp"

    // ***************************** Aegis *****************************

    #include "Templates\Aegis\templates.hpp"

    // ***************************** Misc *****************************

    #include "Templates\Misc\templates.hpp"

    // ***************************** STALKER *****************************

    #include "Templates\STALKER\templates.hpp"

    // ***************************** AMF *****************************

    #include "Templates\AMF\templates.hpp"
	
    // ***************************** NFtS *****************************

    #include "Templates\NFtS\templates.hpp"

    // ***************************** Task Force Canada *****************************

    #include "Templates\TFC\templates.hpp"

    // ***************************** TMT - Turkish Forces *****************************

    #include "Templates\TMT\templates.hpp"
	
    // ***************************** Faces of War *****************************

    #include "Templates\FoW\templates.hpp"
	
    // ***************************** East Asia War *****************************

    #include "Templates\EAW\templates.hpp"

};
