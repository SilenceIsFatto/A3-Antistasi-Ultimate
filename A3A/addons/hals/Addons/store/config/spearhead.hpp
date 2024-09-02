//SPE_IFA3

		class handgunsspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";
			
			ITEM(SPE_P08, 110, PISTOL_STOCK); //AMMO: SPE_8Rnd_9x19_P08
			ITEM(SPE_M1911, 110, PISTOL_STOCK); //AMMO: SPE_7Rnd_45ACP_1911
			
		};

		class smgspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";
		
			ITEM(SPE_Sten_Mk2, 165, RIFLE_STOCK); // SPE_32Rnd_9x19_Sten
			ITEM(SPE_Sten_Mk2_Suppressed, 185, RIFLE_STOCK); // LIB_32Rnd_9x19_Sten
			ITEM(SPE_MP40, 200, RIFLE_STOCK); // SPE_32Rnd_9x19 SPE_32Rnd_9x19_t
			ITEM(SPE_MP35, 300, RIFLE_STOCK); // SPE_32Rnd_MP35_9x19 SPE_32rnd_MP35_9x19_t SPE_24Rnd_MP35_9x19 SPE_24rnd_MP35_9x19_t
			ITEM(SPE_M3_GreaseGun, 185, RIFLE_STOCK); // SPE_30Rnd_M3_GreaseGun_45ACP SPE_30Rnd_M3_GreaseGun_45ACP_t
			ITEM(SPE_STG44, 400, RIFLE_STOCK); // 30rnd mag: SPE_30Rnd_792x33  SPE_30Rnd_792x33_t
			ITEM(SPE_FG42_E, 450, RIFLE_STOCK); // 30rnd mag: SPE_20Rnd_792x57  SPE_20Rnd_792x57_t2 SPE_20Rnd_792x57_SMK SPE_20Rnd_792x57_sS SPE_20Rnd_792x57_t
			ITEM(SPE_M1A1_Thompson, 300, RIFLE_STOCK); // 30rnd mag: SPE_30Rnd_792x33  SPE_30Rnd_792x33_t
			
		};
		
		class mgspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";	

			ITEM(SPE_M1919A4, 550, RIFLE_STOCK); //NORMAL: SPE_50Rnd_762x63 SPE_50Rnd_762x63_M1 SPE_50Rnd_762x63_M2_AP
			ITEM(SPE_M1919A6, 650, RIFLE_STOCK); //NORMAL: SPE_50Rnd_762x63 SPE_50Rnd_762x63_M1 SPE_50Rnd_762x63_M2_AP
			ITEM(SPE_FM_24_M29, 500, RIFLE_STOCK); // SPE_25Rnd_75x54 SPE_25Rnd_75x54_35P_AP
			ITEM(SPE_M1918A0_BAR, 450, RIFLE_STOCK); // SPE_20Rnd_762x63 SPE_20Rnd_762x63_M1 SPE_20Rnd_762x63_M2_AP
			ITEM(SPE_M1918A2_erla_BAR, 460, RIFLE_STOCK); // SPE_20Rnd_762x63 SPE_20Rnd_762x63_M1 SPE_20Rnd_762x63_M2_AP
			ITEM(SPE_M1918A2_BAR, 410, RIFLE_STOCK); // SPE_20Rnd_762x63 SPE_20Rnd_762x63_M1 SPE_20Rnd_762x63_M2_AP
			ITEM(SPE_LMG_303_Mk2, 400, RIFLE_STOCK); // SPE_30Rnd_770x56 SPE_30Rnd_770x56_AP_MKI SPE_30Rnd_770x56_MKVIII
			ITEM(SPE_MG34, 850, RIFLE_STOCK); //NORMAL: SPE_50Rnd_792x57 	SPE_50Rnd_792x57_SMK	SPE_50Rnd_792x57_sS
			ITEM(SPE_MG42, 1000, RIFLE_STOCK); //NORMAL: SPE_50Rnd_792x57 	SPE_50Rnd_792x57_SMK	SPE_50Rnd_792x57_sS
			
		};

		class riflesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SPE_M1_Carbine, 250, RIFLE_STOCK); //NORMAL: SPE_15Rnd_762x33 TRACER: SPE_15Rnd_762x33_t
			ITEM(SPE_M1_Garand, 300, RIFLE_STOCK); //NORMAL: SPE_8Rnd_762x63  SPE_8Rnd_762x63_M1  SPE_8Rnd_762x63_t SPE_8Rnd_762x63_M2_AP
			ITEM(SPE_M1903A3_Springfield, 200, RIFLE_STOCK); //NORMAL: SPE_5Rnd_762x63  SPE_5Rnd_762x63_M1  SPE_5Rnd_762x63_t  SPE_5Rnd_762x63_M2_AP
			ITEM(SPE_No3_Mk1_Enfield, 210, RIFLE_STOCK); //NORMAL: SPE_5Rnd_770x56 SPE_5Rnd_770x56_AP_MKI SPE_5Rnd_770x56_MKVIII 
			ITEM(SPE_MAS_36, 210, RIFLE_STOCK); //NORMAL: SPE_5Rnd_75x54 SPE_5Rnd_75x54_35P_AP 
			ITEM(SPE_K98, 210, RIFLE_STOCK); //NORMAL: SPE_5Rnd_792x57 SPE_5Rnd_792x57_t SPE_5Rnd_792x57_SMK SPE_5Rnd_792x57_sS
			ITEM(SPE_K98_Late, 190, RIFLE_STOCK); //NORMAL: ^^
			ITEM(SPE_G43, 280, RIFLE_STOCK); //NORMAL: SPE_10Rnd_792x57 SPE_10Rnd_792x57_T2 SPE_10Rnd_792x57_SMK SPE_10Rnd_792x57_sS SPE_10Rnd_792x57_T

		};

		class sniperriflesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";
		
			ITEM(SPE_M1903A4_Springfield, 570, RIFLE_STOCK); // SAME AS SPE_M1903A3_Springfield
			ITEM(SPE_K98ZF39, 570, RIFLE_STOCK); // SAME AS SPE_K98
			
		};

		class launchersspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(SPE_Faustpatrone, 100, 15);
			ITEM(SPE_PzFaust_30m, 100, 15);
			ITEM(SPE_PzFaust_60m, 100, 15);
			ITEM(SPE_M1A1_Bazooka, 350, 25); 
			
		}; 

		class launchermagazinesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			ITEM(SPE_1Rnd_60mm_M6, 100, 15);
			ITEM(SPE_1Rnd_Faustpatrone, 100, 15);
			ITEM(SPE_1Rnd_PzFaust_30m, 100, 15);
			ITEM(SPE_1Rnd_PzFaust_60m, 100, 15);
			
		};

		class riflegrenadesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_glGrenades"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";
			
			ITEM(SPE_1Rnd_G_NBGR_42, 50, 25);
			ITEM(SPE_1Rnd_G_M2_ANM8, 50, 25);
			ITEM(SPE_1Rnd_G_PZGR_30, 90, 25);
			ITEM(SPE_1Rnd_G_SPRGR_30, 80, 25);
			ITEM(SPE_1Rnd_G_PZGR_40, 90, 25);
			ITEM(SPE_1Rnd_G_M9A1, 80, 25);
			ITEM(SPE_1Rnd_G_Mk2, 90, 25);
			ITEM(SPE_1Rnd_G_M2_AN_M14, 100, 25);
			ITEM(SPE_1Rnd_G_M17A1, 50, 25);
			ITEM(SPE_1Rnd_G_FLGR, 50, 25);

			ITEM(SPE_1Rnd_G_M2_M18_Yellow, 50, 25);
			ITEM(SPE_1Rnd_G_M2_M18_Violet, 50, 25);
			ITEM(SPE_1Rnd_G_M2_M18_Red, 50, 25);
			ITEM(SPE_1Rnd_G_M2_M18_Green, 50, 25);
			ITEM(SPE_1Rnd_G_M51A1, 50, 25);
			ITEM(SPE_1Rnd_G_M21A1, 50, 25);
			ITEM(SPE_1Rnd_G_M19A1, 50, 25);
			ITEM(SPE_1Rnd_81mmWP_M1_M57, 200, 25);
			ITEM(SPE_81mm_M1_M57_SmokeShell, 200, 25);
			ITEM(SPE_1Rnd_81mmHE_M1_M43A1, 200, 25);
			ITEM(SPE_81mm_FA_Mle_1932_Smoke, 100, 25);
			ITEM(SPE_81mm_FA_Mle_1932_Illu, 100, 25);
			ITEM(SPE_1Rnd_81mm_FA_Mle_1932_HE, 200, 25);
			
		};

		class muzzlesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";
			
			ITEM(spe_acc_m3_suppressor_45acp, 75, MZ_STOCK);
			ITEM(spe_acc_m1_bayo, 75, MZ_STOCK);
			ITEM(spe_acc_m1905_bayo, 75, MZ_STOCK);
			ITEM(spe_acc_k98_bayo, 75, MZ_STOCK);
			ITEM(spe_acc_gl_m8, 80, MZ_STOCK);
			ITEM(spe_acc_gl_m7, 80, MZ_STOCK);
			ITEM(spe_acc_gw_sb_empty, 80, MZ_STOCK);
			
		};

		class magazinesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";		
			
			ITEM(SPE_8Rnd_9x19_P08, 15, MZ_STOCK);
			ITEM(SPE_7Rnd_45ACP_1911, 15, MZ_STOCK);
			ITEM(SPE_32Rnd_9x19_Sten, 20, MZ_STOCK);
			ITEM(SPE_32Rnd_9x19, 20, MZ_STOCK);
			ITEM(SPE_32Rnd_9x19_t, 20, MZ_STOCK);
			ITEM(SPE_30Rnd_M3_GreaseGun_45ACP, 20, MZ_STOCK);
			ITEM(SPE_30Rnd_M3_GreaseGun_45ACP_t, 20, MZ_STOCK);
			ITEM(SPE_32Rnd_MP35_9x19, 25, MZ_STOCK);
			ITEM(SPE_32rnd_MP35_9x19_t, 25, MZ_STOCK);
			ITEM(SPE_24Rnd_MP35_9x19, 20, MZ_STOCK);
			ITEM(SPE_24rnd_MP35_9x19_t, 20, MZ_STOCK);
			ITEM(SPE_30Rnd_792x33, 30, MZ_STOCK);
			ITEM(SPE_30Rnd_792x33_t, 30, MZ_STOCK);
			ITEM(SPE_50Rnd_762x63, 50, MZ_STOCK);
			ITEM(SPE_50Rnd_762x63_M1, 50, MZ_STOCK);
			ITEM(SPE_50Rnd_762x63_M2_AP, 70, MZ_STOCK);
			ITEM(SPE_25Rnd_75x54, 40, MZ_STOCK);
			ITEM(SPE_25Rnd_75x54_35P_AP, 50, MZ_STOCK);
			ITEM(SPE_20Rnd_762x63, 35, MZ_STOCK);
			ITEM(SPE_20Rnd_762x63_M1, 35, MZ_STOCK);
			ITEM(SPE_20Rnd_762x63_M2_AP, 45, MZ_STOCK);
			ITEM(SPE_50Rnd_792x57, 50, MZ_STOCK);
			ITEM(SPE_50Rnd_792x57_SMK, 50, MZ_STOCK);
			ITEM(SPE_50Rnd_792x57_sS, 50, MZ_STOCK);
			ITEM(SPE_15Rnd_762x33, 25, MZ_STOCK);
			ITEM(SPE_15Rnd_762x33_t, 25, MZ_STOCK);
			ITEM(SPE_8Rnd_762x63, 25, MZ_STOCK);
			ITEM(SPE_8Rnd_762x63_M1, 25, MZ_STOCK);
			ITEM(SPE_8Rnd_762x63_t, 26, MZ_STOCK);
			ITEM(SPE_8Rnd_762x63_M2_AP, 30, MZ_STOCK);
			ITEM(SPE_5Rnd_762x63, 20, MZ_STOCK);
			ITEM(SPE_5Rnd_762x63_M1, 22, MZ_STOCK);
			ITEM(SPE_5Rnd_762x63_t, 22, MZ_STOCK);
			ITEM(SPE_5Rnd_762x63_M2_AP, 25, MZ_STOCK);
			ITEM(SPE_5Rnd_792x57, 20, MZ_STOCK);
			ITEM(SPE_5Rnd_792x57_t, 25, MZ_STOCK);
			ITEM(SPE_5Rnd_792x57_SMK, 30, MZ_STOCK);
			ITEM(SPE_5Rnd_792x57_sS, 30, MZ_STOCK);
			ITEM(SPE_10Rnd_792x57, 35, MZ_STOCK);
			ITEM(SPE_10Rnd_792x57_T2, 35, MZ_STOCK);
			ITEM(SPE_10Rnd_792x57_SMK, 45, MZ_STOCK);
			ITEM(SPE_10Rnd_792x57_sS, 45, MZ_STOCK);
			ITEM(SPE_10Rnd_792x57_T, 35, MZ_STOCK);
			ITEM(SPE_5Rnd_770x56, 25, MZ_STOCK);
			ITEM(SPE_5Rnd_770x56_AP_MKI, 30, MZ_STOCK);
			ITEM(SPE_5Rnd_770x56_MKVIII, 30, MZ_STOCK);
			ITEM(SPE_5Rnd_75x54, 25, MZ_STOCK);
			ITEM(SPE_5Rnd_75x54_35P_AP, 30, MZ_STOCK);
			ITEM(SPE_2Rnd_12x65_Slug, 45, MZ_STOCK);
			ITEM(SPE_2Rnd_12x65_Pellets, 45, MZ_STOCK);
			ITEM(SPE_2Rnd_12x65_No4_Buck, 45, MZ_STOCK);
			ITEM(SPE_5Rnd_12x70_Slug, 75, MZ_STOCK);
			ITEM(SPE_5Rnd_12x70_Pellets, 75, MZ_STOCK);
			ITEM(SPE_5Rnd_12x70_No4_Buck, 75, MZ_STOCK);
			ITEM(SPE_30Rnd_Thompson_45ACP_t, 45, MZ_STOCK);
			ITEM(SPE_30Rnd_Thompson_45ACP, 45, MZ_STOCK);
			ITEM(SPE_20Rnd_Thompson_45ACP_t, 45, MZ_STOCK);
			ITEM(SPE_20Rnd_Thompson_45ACP, 45, MZ_STOCK);
			ITEM(SPE_100Rnd_762x63_M2_AP, 45, MZ_STOCK);
			ITEM(SPE_100Rnd_762x63_M1 45, MZ_STOCK);
			ITEM(SPE_100Rnd_762x63, 45, MZ_STOCK);
			ITEM(SPE_100Rnd_792x57, 45, MZ_STOCK);
			ITEM(SPE_100Rnd_792x57_SMK, 45, MZ_STOCK);
			ITEM(SPE_100Rnd_792x57_sS, 45, MZ_STOCK);
			ITEM(SPE_30Rnd_770x56, 45, MZ_STOCK);
			ITEM(SPE_30Rnd_770x56_AP_MKI, 45, MZ_STOCK);
			ITEM(SPE_30Rnd_770x56_MKVIII, 45, MZ_STOCK);
			ITEM(SPE_20Rnd_792x57, 75, MZ_STOCK);
			ITEM(SPE_20Rnd_792x57_t2, 75, MZ_STOCK);
			ITEM(SPE_20Rnd_792x57_SMK, 75, MZ_STOCK);
			ITEM(SPE_20Rnd_792x57_sS, 75, MZ_STOCK);
			ITEM(SPE_20Rnd_792x57_t, 75, MZ_STOCK);
			ITEM(SPE_M2_Flamethrower_Mag, 250, MZ_STOCK);
			ITEM(SPE_Flammenwerfer41_Mag, 250, MZ_STOCK);
			
		};

		class miscspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			
			ITEM(SPE_US_TNT_4pound_mag, 450, MISC_STOCK);
			ITEM(SPE_US_TNT_half_pound_mag, 400, MISC_STOCK);
			ITEM(SPE_US_Bangalore_mag, 450, MISC_STOCK);

			ITEM(SPE_TMI_42_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_STMI_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_SMI_35_1_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_SMI_35_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_SMI_35_Pressure_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_Shg24x7_Improvised_Mine_mag, 400, MISC_STOCK);
			ITEM(SPE_shumine_42_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_US_M3_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_US_M3_Pressure_MINE_mag, 400, MISC_STOCK);
			ITEM(SPE_US_M1A1_ATMINE_mag, 400, MISC_STOCK);
			ITEM(SPE_Ladung_Big_MINE_mag, 600, MISC_STOCK);
			ITEM(SPE_Ladung_Small_MINE_mag, 400, MISC_STOCK);

			ITEM(SPE_ToolKit_NoMass, 1000, MISC_STOCK);
			ITEM(SPE_ToolKit, 200, MISC_STOCK);

			ITEM(SPE_GER_Headset, 20, MISC_STOCK);

			ITEM(SPE_Rauchsichtzeichen_Orange, 50, MISC_STOCK);
			ITEM(SPE_NBK39b, 50, MISC_STOCK);
			ITEM(SPE_NB39, 20, MISC_STOCK);
			ITEM(SPE_US_M18_Yellow, 20, MISC_STOCK);
			ITEM(SPE_US_M18_Violet, 20, MISC_STOCK);
			ITEM(SPE_US_M18_Red, 20, MISC_STOCK);
			ITEM(SPE_US_M18_Green, 20, MISC_STOCK);
			ITEM(SPE_US_M15, 20, MISC_STOCK);
			ITEM(SPE_Handrauchzeichen_Yellow, 20, MISC_STOCK);
			ITEM(SPE_Handrauchzeichen_Violet, 20, MISC_STOCK);
			ITEM(SPE_Handrauchzeichen_Red, 20, MISC_STOCK);
			ITEM(SPE_US_M18, 20, MISC_STOCK);
			ITEM(SPE_US_AN_M14, 50, MISC_STOCK);
			ITEM(SPE_US_Mk_1, 50, MISC_STOCK);
			ITEM(SPE_US_Mk_2_Yellow, 50, MISC_STOCK);
			ITEM(SPE_US_Mk_2, 50, MISC_STOCK);
			ITEM(SPE_Shg24_Frag, 50, MISC_STOCK);
			ITEM(SPE_US_Mk_3, 50, MISC_STOCK);
			ITEM(SPE_M39, 50, MISC_STOCK);
			ITEM(SPE_Shg24, 50, MISC_STOCK);
			ITEM(SPE_Shg24x7, 100, MISC_STOCK);

			ITEM(SPE_US_Medkit, 200, MISC_STOCK);
			ITEM(SPE_GER_Medkit, 200, MISC_STOCK);
			ITEM(SPE_US_FirstAidKit, 20, MISC_STOCK);
			ITEM(SPE_GER_FirstAidKit, 20, MISC_STOCK);
			
		};

		class navigationspe
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_spearhead", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(SPE_Binocular_US, 100, NN_STOCK);
			ITEM(SPE_Binocular_GER, 100, NN_STOCK);

			ITEM(SPE_US_ItemCompass, 20, NN_STOCK);
			ITEM(SPE_GER_ItemCompass, 20, NN_STOCK);
			ITEM(SPE_GER_ItemCompass_deg, 20, NN_STOCK);
			ITEM(SPE_US_ItemWatch, 20, NN_STOCK);
			ITEM(SPE_GER_ItemWatch, 20, NN_STOCK);

		};

		class specialweaponsspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_specialWeapons"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SPE_Fusil_Mle_208_12, 150, MISC_STOCK);
			ITEM(SPE_Fusil_Mle_208_12_Sawedoff, 150, MISC_STOCK);
			ITEM(SPE_Model_37_Riotgun, 250, MISC_STOCK);
			ITEM(SPE_Model_37_Trenchgun, 250, MISC_STOCK);
			ITEM(SPE_Flammenwerfer41, 300, MISC_STOCK);
			ITEM(B_SPE_GER_Flammenwerfer_41, 800, MISC_STOCK);
			ITEM(SPE_M2_Flamethrower, 300, MISC_STOCK);
			ITEM(B_SPE_US_M2Flamethrower, 800, MISC_STOCK);

			ITEM(SPE_GrW278_1_Barrel, 2000, MISC_STOCK);
			ITEM(SPE_GrW278_1_Stand, 200, MISC_STOCK);
			ITEM(SPE_MLE_27_31_Barrel, 2000, MISC_STOCK);
			ITEM(SPE_MLE_27_31_Stand, 200, MISC_STOCK);
			ITEM(SPE_M1_81_Barrel, 2000, MISC_STOCK);
			ITEM(SPE_M1_81_Stand, 200, MISC_STOCK);
			ITEM(SPE_M2_Tripod, 200, MISC_STOCK);
			ITEM(SPE_M2_50, 1000, MISC_STOCK);
			ITEM(SPE_Lafette_Tripod, 400, MISC_STOCK);
		};

		class underbarrelspe{
	     	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_bagsStatics"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			
			ITEM(SPE_Optic_ZFG42, 170, PN_STOCK);
			ITEM(SPE_M1918A2_BAR_Bipod, 100, MISC_STOCK);
			ITEM(SPE_M1918A2_BAR_Handle, 100, MISC_STOCK);
			ITEM(SPE_ACC_GW_SB_Empty, 100, MISC_STOCK);
			ITEM(SPE_ACC_K98_Bayo, 100, MISC_STOCK);
			ITEM(SPE_ACC_GL_M8, 100, MISC_STOCK);
			ITEM(SPE_ACC_GL_M7, 100, MISC_STOCK);
			ITEM(SPE_ACC_M3_Suppressor_45acp, 100, MISC_STOCK);
			ITEM(SPE_ACC_M1905_Bayo, 100, MISC_STOCK);
			ITEM(SPE_ACC_GL_M1, 100, MISC_STOCK);
			ITEM(SPE_ACC_M1_Bayo, 100, MISC_STOCK);
			ITEM(SPE_ACC_M1917_Bayo, 100, MISC_STOCK);
			
		};

		class helmetsspe 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_helmets"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			/////helmets
			ITEM(H_SPE_US_Helmet_Tank_tapes, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_polar_tapes, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_polar, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_polar_low, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_M1_Scrim, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_M1_OS, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_M1_NS, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_Nun, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Tank_NG, 100, MISC_STOCK);
			ITEM(H_SPE_US_Pilot_Cap_Khaki, 100, MISC_STOCK);
			ITEM(H_SPE_US_Pilot_Cap, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Scrim_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_NCO_scrim, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Scrim_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Scrim, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_Scrim_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_Scrim_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_Scrim, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_net_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_net_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_net, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_polar, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Net_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_NCO_net, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Net_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_CO_Net, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Net, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_band_net_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_band_net_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_band_net, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_NCO, 100, MISC_STOCK);
			ITEM(H_SPE_US_MP_Helmet_White_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_MP_Helmet_White_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_MP_Helmet_White, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Med_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Med_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Med, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_CO, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Cap, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_band_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_band_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_band, 100, MISC_STOCK);
			ITEM(H_SPE_US_Rangers_Helmet_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Rangers_Helmet_NCO, 100, MISC_STOCK);

			ITEM(H_SPE_US_Rangers_Helmet_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Rangers_Helmet_Cap, 100, MISC_STOCK);
			ITEM(H_SPE_US_Rangers_Helmet_Second_lieutenant, 100, MISC_STOCK);
			ITEM(H_SPE_US_Rangers_Helmet_First_lieutenant, 100, MISC_STOCK);
			ITEM(H_SPE_US_Rangers_Helmet, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Second_lieutenant, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_Scrim_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_Scrim_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_Scrim, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_Net_os, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_Net_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_Net, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_NCO, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_ns, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID_CO, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_29ID, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_First_lieutenant, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_Op, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_SWDG_low_O2, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_SWDG_O2, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_B7_low_O2, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_B7_O2, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_O2, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_SWDG_low, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15_SWDG, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_H15, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_Op, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_SWDG_low_Respirator, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_SWDG_Respirator, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_Respirator_Glasses_Down, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_Respirator_Glasses_Up, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_Respirator, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_Glasses_Down, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot_Glasses_Up, 100, MISC_STOCK);
			ITEM(H_SPE_US_Helmet_Pilot, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_os, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetCamo2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetCamo, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetCamo4, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_ns_wire_painted, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_os_painted, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_ns_painted, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_net_painted, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_Glasses_painted, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_painted, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_ns_wire, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_ns, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetUtility_Oak_OS, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetUtility_Oak, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_net, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_Medic, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetUtility_Grass_OS, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetUtility_Grass, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet_Glasses, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetCamo3_OS, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetCamo3, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetUtility_OS, 100, MISC_STOCK);
			ITEM(H_SPE_GER_HelmetUtility, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Helmet, 100, MISC_STOCK);
			ITEM(H_SPE_ST_Helmet4, 100, MISC_STOCK);
			ITEM(H_SPE_ST_Helmet, 100, MISC_STOCK);
			ITEM(H_SPE_ST_Helmet2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Fieldcap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_ST_Tanker_Cap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_ST_Tanker_Cap2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Fieldcap2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankOfficerCap2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankOfficerCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_PzgrenOfficerCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_OfficerCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_ArtOfficerCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_LW_PilotHelmet_Mask, 100, MISC_STOCK);
			ITEM(H_SPE_GER_LW_PilotHelmet, 100, MISC_STOCK);
			ITEM(H_SPE_GER_LW_PilotHelmet_S_Mask, 100, MISC_STOCK);
			ITEM(H_SPE_GER_LW_S_PilotHelmet, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankOffzCap3, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankOffzCap2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankPrivateCap2, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankOffzCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankPrivateCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_TankPrivateCap3, 100, MISC_STOCK);
			ITEM(H_SPE_GER_Cap_Offz, 100, MISC_STOCK);
			ITEM(H_SPE_GER_SPGPrivateCap, 100, MISC_STOCK);
			ITEM(H_SPE_GER_SPGPrivateCap2, 100, MISC_STOCK);
			ITEM(H_SPE_FR_US_Helmet_os, 100, MISC_STOCK);
			ITEM(H_SPE_FR_US_Helmet_ns, 100, MISC_STOCK);
			ITEM(H_SPE_FR_US_Helmet, 100, MISC_STOCK);
			ITEM(H_SPE_FR_Adrian_Medic_ns, 100, MISC_STOCK);
			ITEM(H_SPE_FR_Adrian_Medic, 100, MISC_STOCK);
			ITEM(H_SPE_FR_Adrian_ns, 100, MISC_STOCK);
			ITEM(H_SPE_FR_Adrian, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Worker_Cap_1, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Worker_Cap_2, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Worker_Cap_3, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Fedora_Cap_3, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Fedora_Cap_4, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Fedora_Cap_2, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Fedora_Cap_1, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Fedora_Cap_6, 100, MISC_STOCK);
			ITEM(H_SPE_CIV_Fedora_Cap_5, 100, MISC_STOCK);
			/////helmets
		};

		class uniformsspe 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_uniforms"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			////uniforms
			ITEM(U_SPE_US_CC_EM_trop_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_EM_trop, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_CPT, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_EM_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_2LT, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_1LT, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_EM, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_EM_trop_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_EM_trop, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_EM_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_EM, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_camo_trop_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_camo_trop, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_camo_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_CC_HBT_camo, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew3, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew4, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew2, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew_camo2, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew_medic_camo, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew_camo, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew_medic, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Crew, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_late_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_late, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_Half, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_trop, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_Med, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_FrogSkin_Jungle_Half, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_FrogSkin_Jungle_trop, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_FrogSkin_Jungle_roll, 50, MISC_STOCK);
			ITEM(U_SPE_US_HBT44_FrogSkin_Jungle, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Coverall_Trop_Legging, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Coverall_Trop, 50, MISC_STOCK);
			ITEM(U_SPE_US_Tank_Coverall, 50, MISC_STOCK);
			ITEM(U_SPE_US_S31A_glove, 50, MISC_STOCK);
			ITEM(U_SPE_US_S31A_boot, 50, MISC_STOCK);
			ITEM(U_SPE_US_S31A, 50, MISC_STOCK);
			ITEM(U_SPE_US_S31_erla_glove, 50, MISC_STOCK);
			ITEM(U_SPE_US_S31_erla_boot, 50, MISC_STOCK);
			ITEM(U_SPE_US_S31_erla, 50, MISC_STOCK);
			ITEM(U_SPE_US_Pilot_glove, 50, MISC_STOCK);
			ITEM(U_SPE_US_Pilot_boot, 50, MISC_STOCK);
			ITEM(U_SPE_US_Pilot, 50, MISC_STOCK);
			ITEM(U_SPE_US_Pilot_lthr_glove, 50, MISC_STOCK);
			ITEM(U_SPE_US_Pilot_lthr_boot, 50, MISC_STOCK);
			ITEM(U_SPE_US_Pilot_lthr, 50, MISC_STOCK);
			ITEM(U_SPE_US_Med_late, 50, MISC_STOCK);
			ITEM(U_SPE_US_Private_late, 50, MISC_STOCK);
			ITEM(U_SPE_US_Technician, 50, MISC_STOCK);
			ITEM(U_SPE_US_Sergeant, 50, MISC_STOCK);
			ITEM(U_SPE_US_Private_1st, 50, MISC_STOCK);
			ITEM(U_SPE_US_Med, 50, MISC_STOCK);
			ITEM(U_SPE_US_Corp, 50, MISC_STOCK);
			ITEM(U_SPE_US_Private, 50, MISC_STOCK);
			ITEM(U_SPE_US_Rangers_Technician, 50, MISC_STOCK);
			ITEM(U_SPE_US_Rangers_Sergeant, 50, MISC_STOCK);
			ITEM(U_SPE_US_Rangers_Private_1st, 50, MISC_STOCK);
			ITEM(U_SPE_US_Rangers_Med, 50, MISC_STOCK);
			ITEM(U_SPE_US_Rangers_Corp, 50, MISC_STOCK);
			ITEM(U_SPE_US_Rangers_Uniform, 50, MISC_STOCK);
			ITEM(U_SPE_GER_tank_hbt_crew_unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_tank_hbt_crew_leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_tank_hbt_crew_private, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Tank_crew_unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Tank_crew_leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Tank_crew_private, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Soldier_E44_Camo, 50, MISC_STOCK);
			ITEM(U_SPE_ST_MGunner_E44, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Medic_E44, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Soldier_E44_Camo2, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Soldier_E44, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Untersturmfuhrer, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Standartenfuhrer, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Obersturmfuhrer, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Hauptsturmfuhrer, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Unterofficier_E44, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Mix_E44_roll, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Mix_E44, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Sniper, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Soldier_Camo, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Sniper2, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Soldier_Camo2, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Tank_crew_spring, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Tank_crew_spring_open, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Tank_crew_autumn_open, 50, MISC_STOCK);
			ITEM(U_SPE_ST_Tank_crew_autumn, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Spg_hbt_crew_unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Spg_hbt_crew_leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Spg_hbt_crew_private, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Spg_crew_unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Spg_crew_leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Spg_crew_private, 50, MISC_STOCK);
			ITEM(U_SPE_GER_lehr_unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_lehr_leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_lehr_gefreiter, 50, MISC_STOCK);
			ITEM(U_SPE_GER_lehr_private, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo_lieutenant_2, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo_lieutenant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Art_leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Oberst, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Oberleutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Leutnant, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Hauptmann, 50, MISC_STOCK);
			ITEM(U_SPE_GER_LW_pilot_weiss_alt, 50, MISC_STOCK);
			ITEM(U_SPE_GER_LW_pilot_weiss, 50, MISC_STOCK);
			ITEM(U_SPE_GER_LW_pilot_alt, 50, MISC_STOCK);
			ITEM(U_SPE_GER_LW_pilot_trop_alt, 50, MISC_STOCK);
			ITEM(U_SPE_GER_LW_pilot_trop, 50, MISC_STOCK);
			ITEM(U_SPE_GER_LW_pilot, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Unterofficer_HBT, 50, MISC_STOCK);
			ITEM(U_SPE_GER_MG_schutze_HBT, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Schutze_HBT, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Art_unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Art_schutze, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Unterofficer, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_Unbloused, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Medic, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Gefreiter, 50, MISC_STOCK);
			ITEM(U_SPE_GER_MG_schutze, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Oberschutze, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Gefreiter_Gaiters, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_Gaiters, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_Boots, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo3, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo5, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo4, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo2, 50, MISC_STOCK);
			ITEM(U_SPE_GER_Soldier_camo, 50, MISC_STOCK);
			ITEM(U_SPE_FR_Tank_Crew2, 50, MISC_STOCK);
			ITEM(U_SPE_FR_HBT_Uniform_Trop, 50, MISC_STOCK);
			ITEM(U_SPE_FR_HBT_Uniform, 50, MISC_STOCK);
			ITEM(U_SPE_FR_Tank_Crew3, 50, MISC_STOCK);
			ITEM(U_SPE_FR_Tank_Crew, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_4_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_4, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_3_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_3, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_2_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_2, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_1_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Worker_1, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_grijs_swetr, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_grijs, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_bruin_swetr, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_bruin, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_zwart_swetr, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_zwart_Alt, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Jacket_zwart, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_7_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_7, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_6_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_6, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_5_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_5, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_4_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_4, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_3_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_3, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_2_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_2, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_1_trop, 50, MISC_STOCK);
			ITEM(U_SPE_FFI_Casual_1, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_4_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_4_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_4, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_3_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_3_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_3, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_2_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_2_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_2, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_1_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_1_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_1, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_Coverall_3_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_Coverall_3, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_Coverall_2_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_Coverall_2, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_Coverall_1_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Worker_Coverall_1, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_5_vest, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_5, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_4_vest, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_4, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_3_vest, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_3, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_2_vest, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_2, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_1_vest, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Swetr_1, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_grijs_swetr, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_grijs_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_grijs, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_bruin_swetr, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_bruin_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_bruin, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_zwart_swetr, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_zwart_alt, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_zwart_tie_alt, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_zwart_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_pak2_zwart, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_7_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_7_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_7, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_6_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_6_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_6, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_5_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_5_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_5, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_4_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_4_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_4, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_3_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_3_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_3, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_2_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_2_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_2, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_1_trop, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_1_tie, 50, MISC_STOCK);
			ITEM(U_SPE_CIV_Citizen_1, 50, MISC_STOCK);
			////uniforms
		};

		class vestsspe
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_vests"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			///vests
			ITEM(V_SPE_US_Vest_Thompson_M43, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Thompson, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_45, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine_pick, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine_m43, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_M1919, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine_eng, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine_mk2, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Asst_MG, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Thompson_nco_Radio, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Thompson_nco, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_45_off, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine_nco_Radio, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Carbine_nco, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Medic2, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Medic, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Medic3, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Grenadier, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand_45, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand_mk2, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand_map, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand_M43, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand_eng, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand_gp, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Garand, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Bar, 50, MISC_STOCK);
			ITEM(V_SPE_US_Vest_Bar_assist, 50, MISC_STOCK);
			ITEM(V_SPE_US_LifeVest, 50, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_rifle_M43, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_rifle, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_alt, 75, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_eng, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_Light, 75, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_dday_rifle, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_dday_rifle_M43, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_dday_eng, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_dday_Bag, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_dday, 75, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest_Bag, 100, MISC_STOCK);
			ITEM(V_SPE_US_Assault_Vest, 75, MISC_STOCK);
			ITEM(V_SPE_GER_TankPrivateBelt, 50, MISC_STOCK);
			ITEM(V_SPE_GER_PistolBelt, 50, MISC_STOCK);
			ITEM(V_SPE_GER_LW_Schwimm, 50, MISC_STOCK);
			ITEM(V_SPE_GER_VestUnterofficer, 50, MISC_STOCK);
			ITEM(V_SPE_GER_VestSTG, 50, MISC_STOCK);
			ITEM(V_SPE_GER_SniperBelt, 50, MISC_STOCK);
			ITEM(V_SPE_GER_VestMP40, 50, MISC_STOCK);
			ITEM(V_SPE_GER_FWOVest, 50, MISC_STOCK);
			ITEM(V_SPE_GER_SaniVest, 50, MISC_STOCK);
			ITEM(V_SPE_GER_VestKar98, 50, MISC_STOCK);
			ITEM(V_SPE_GER_PioneerVest, 50, MISC_STOCK);
			ITEM(V_SPE_GER_FieldOfficer, 50, MISC_STOCK);
			ITEM(V_SPE_GER_VestMG, 50, MISC_STOCK);
			ITEM(V_SPE_GER_SaniVest2, 50, MISC_STOCK);
			ITEM(V_SPE_GER_VestG43, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_PioneerVest, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_SaniVest2, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_VestUnterofficer, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_VestSTG, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_VestMP40, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_FWOVest, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_VestKar98, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_VestMG, 50, MISC_STOCK);
			ITEM(V_SPE_DAK_VestG43, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_SMG_pouch, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_SMG_frag, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_SMG, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_rifle_pouch, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_rifle_frag, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_rifle, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_Pouch_frag, 50, MISC_STOCK);
			ITEM(V_SPE_FFI_Vest_Pouch, 50, MISC_STOCK);
			///vests
		};
		
		class backpacksspe
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_backpacks"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			///backpacks
			ITEM(B_SPE_US_Suspender_band_right, 50, MISC_STOCK);
			ITEM(B_SPE_US_Suspender_m43_open, 50, MISC_STOCK);
			ITEM(B_SPE_US_Suspender_m43, 50, MISC_STOCK);
			ITEM(B_SPE_US_Suspender_band_left, 50, MISC_STOCK);
			ITEM(B_SPE_US_Suspender_band, 50, MISC_STOCK);
			ITEM(B_SPE_US_Suspender_RocketBag, 100, MISC_STOCK);
			ITEM(B_SPE_US_Suspender, 5, MISC_STOCK);
			ITEM(B_SPE_US_MGbag, 50, MISC_STOCK);
			ITEM(B_SPE_US_Radio_alt, 500, MISC_STOCK);
			ITEM(B_SPE_US_Radio, 500, MISC_STOCK);
			ITEM(B_SPE_US_Radio_packboard_light, 500, MISC_STOCK);
			ITEM(B_SPE_US_Radio_packboard, 600, MISC_STOCK);
			ITEM(B_SPE_US_packboard_mortar, 600, MISC_STOCK);
			ITEM(B_SPE_US_packboard_eng, 600, MISC_STOCK);
			ITEM(B_SPE_US_packboard_ammo, 600, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_Mk2, 100, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_pick, 100, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_RocketBag_Empty, 100, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_M43_GP, 100, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_M43, 100, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_dday, 200, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_roll_gp, 200, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_roll, 100, MISC_STOCK);
			ITEM(B_SPE_US_Backpack_Bandoleer, 200, MISC_STOCK);
			ITEM(B_SPE_US_Backpack, 50, MISC_STOCK);
			ITEM(B_SPE_US_M2Flamethrower, 1000, MISC_STOCK);
			ITEM(B_SPE_US_M36_Bandoleer, 75, MISC_STOCK);
			ITEM(B_SPE_US_M36, 100, MISC_STOCK);
			ITEM(B_SPE_US_RocketBag_Empty, 200, MISC_STOCK);
			ITEM(B_SPE_US_Bandoleer_3, 200, MISC_STOCK);
			ITEM(B_SPE_US_Bandoleer, 10, MISC_STOCK);
			ITEM(B_SPE_US_QAC, 300, MISC_STOCK);
			ITEM(B_SPE_US_TypeA3, 300, MISC_STOCK);
			ITEM(B_SPE_US_GP_Bag, 50, MISC_STOCK);
			ITEM(B_SPE_GER_Tonister41_Frame_Full, 100, MISC_STOCK);
			ITEM(B_SPE_GER_Tonister41_Frame, 75, MISC_STOCK);
			ITEM(B_SPE_GER_Tonister34_canvas, 50, MISC_STOCK);
			ITEM(B_SPE_GER_MedicBackpack_Empty, 50, MISC_STOCK);
			ITEM(B_SPE_GER_Tonister41_Frame_Full_ST, 75, MISC_STOCK);
			ITEM(B_SPE_GER_Tonister41_Frame_ST, 75, MISC_STOCK);
			ITEM(B_SPE_GER_Belt_bag_ST_zelt_trop, 25, MISC_STOCK);
			ITEM(B_SPE_GER_Belt_bag_ST_zelt, 25, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_ST_Full, 25, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_ST, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_ST_zeltbahn_licht, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_ST_MGCan_zelt, 50, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_ST_MGCan, 50, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_ST_zeltbahn, 20, MISC_STOCK);
			ITEM(B_SPE_GER_Radio, 500, MISC_STOCK);
			ITEM(B_SPE_GER_Radio_battery, 500, MISC_STOCK);
			ITEM(B_SPE_GER_LW_Paradrop, 300, MISC_STOCK);
			ITEM(B_SPE_GER_Flammenwerfer_41, 1000, MISC_STOCK);

			ITEM(B_SPE_GER_Belt_bag, 20, MISC_STOCK);
			ITEM(B_SPE_GER_Belt_bag_zelt_trop, 20, MISC_STOCK);
			ITEM(B_SPE_GER_Belt_bag_zelt, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_Full, 25, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_zeltbahn_licht, 25, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_sturm_licht, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_MGCan, 50, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_zeltbahn, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_sturm, 20, MISC_STOCK);
			ITEM(B_SPE_GER_A_frame_kit, 20, MISC_STOCK);
			ITEM(B_SPE_FFI_Gasbag, 40, MISC_STOCK);
			ITEM(B_SPE_CIV_musette, 45, MISC_STOCK);
			ITEM(B_SPE_CIV_satchel, 35, MISC_STOCK);
			
			///backpacks
		};

		class facewearspe
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spearhead", localize "STR_A3AU_facewear"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			///facewear
			ITEM(G_SPE_GER_Headset, 50, MISC_STOCK);
			ITEM(G_SPE_Sunglasses_US_Yellow, 50, MISC_STOCK);
			ITEM(G_SPE_Sunglasses_US_Red, 50, MISC_STOCK);
			ITEM(G_SPE_Sunglasses_GER_Red, 50, MISC_STOCK);
			ITEM(G_SPE_Sunglasses_GER_Brown, 50, MISC_STOCK);
			ITEM(G_SPE_Pipe_Sir_Winston, 100, MISC_STOCK);
			ITEM(G_SPE_Polar_Goggles, 50, MISC_STOCK);
			ITEM(G_SPE_SWDG_Goggles, 50, MISC_STOCK);
			ITEM(G_SPE_Dust_Goggles, 50, MISC_STOCK);
			ITEM(G_SPE_Ful_Vue, 50, MISC_STOCK);
			ITEM(G_SPE_Ful_Vue_Reinforced, 50, MISC_STOCK);
			ITEM(G_SPE_Dust_Goggles_2, 50, MISC_STOCK);
			ITEM(G_SPE_Dienst_Brille, 50, MISC_STOCK);
			ITEM(G_SPE_Cigarette_Strike_Outs, 100, MISC_STOCK);
			ITEM(G_SPE_Cigarette_Grundstein, 100, MISC_STOCK);
			ITEM(G_SPE_Cigarette_Belomorkanal, 100, MISC_STOCK);
			ITEM(G_SPE_Cigar_Moza, 100, MISC_STOCK);
			ITEM(G_SPE_Binoculars, 50, MISC_STOCK);
			
			///facewear
		};