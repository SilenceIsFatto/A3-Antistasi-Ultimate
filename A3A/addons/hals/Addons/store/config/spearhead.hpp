//SPE_IFA3

		class handgunsspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";
			
			ITEM(SPE_P08, 110, PISTOL_STOCK); //AMMO: SPE_8Rnd_9x19_P08
			ITEM(SPE_M1911, 110, PISTOL_STOCK); //AMMO: SPE_7Rnd_45ACP_1911
			
		};

		class smgspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";
		
			ITEM(SPE_Sten_Mk2, 165, RIFLE_STOCK); // SPE_32Rnd_9x19_Sten
			ITEM(SPE_Sten_Mk2_Suppressed, 185, RIFLE_STOCK); // LIB_32Rnd_9x19_Sten
			ITEM(SPE_MP40, 200, RIFLE_STOCK); // SPE_32Rnd_9x19 SPE_32Rnd_9x19_t
			ITEM(SPE_M3_GreaseGun, 185, RIFLE_STOCK); // SPE_30Rnd_M3_GreaseGun_45ACP SPE_30Rnd_M3_GreaseGun_45ACP_t
			ITEM(SPE_STG44, 400, RIFLE_STOCK); // 30rnd mag: SPE_30Rnd_792x33  SPE_30Rnd_792x33_t
			
		};
		
		class mgspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";	

			ITEM(SPE_M1919A4, 550, RIFLE_STOCK); //NORMAL: SPE_50Rnd_762x63 SPE_50Rnd_762x63_M1 SPE_50Rnd_762x63_M2_AP
			ITEM(SPE_M1919A6, 650, RIFLE_STOCK); //NORMAL: SPE_50Rnd_762x63 SPE_50Rnd_762x63_M1 SPE_50Rnd_762x63_M2_AP
			ITEM(SPE_FM_24_M29, 500, RIFLE_STOCK); // SPE_25Rnd_75x54 SPE_25Rnd_75x54_35P_AP
			ITEM(SPE_M1918A2_BAR, 400, RIFLE_STOCK); // SPE_20Rnd_762x63 SPE_20Rnd_762x63_M1 SPE_20Rnd_762x63_M2_AP
			ITEM(SPE_MG34, 850, RIFLE_STOCK); //NORMAL: SPE_50Rnd_792x57 	SPE_50Rnd_792x57_SMK	SPE_50Rnd_792x57_sS
			ITEM(SPE_MG42, 1000, RIFLE_STOCK); //NORMAL: SPE_50Rnd_792x57 	SPE_50Rnd_792x57_SMK	SPE_50Rnd_792x57_sS
			
		};

		class riflesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SPE_M1_Carbine, 250, RIFLE_STOCK); //NORMAL: SPE_15Rnd_762x33 TRACER: SPE_15Rnd_762x33_t
			ITEM(SPE_M1_Garand, 300, RIFLE_STOCK); //NORMAL: SPE_8Rnd_762x63  SPE_8Rnd_762x63_M1  SPE_8Rnd_762x63_t SPE_8Rnd_762x63_M2_AP
			ITEM(SPE_M1903A3_Springfield, 200, RIFLE_STOCK); //NORMAL: SPE_5Rnd_762x63  SPE_5Rnd_762x63_M1  SPE_5Rnd_762x63_t  SPE_5Rnd_762x63_M2_AP
			ITEM(SPE_K98, 210, RIFLE_STOCK); //NORMAL: SPE_5Rnd_792x57 SPE_5Rnd_792x57_t SPE_5Rnd_792x57_SMK SPE_5Rnd_792x57_sS
			ITEM(SPE_K98_Late, 190, RIFLE_STOCK); //NORMAL: ^^
			ITEM(SPE_G43, 280, RIFLE_STOCK); //NORMAL: SPE_10Rnd_792x57 SPE_10Rnd_792x57_T2 SPE_10Rnd_792x57_SMK SPE_10Rnd_792x57_sS SPE_10Rnd_792x57_T

		};

		class sniperriflesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";
		
			ITEM(SPE_M1903A4_Springfield, 570, RIFLE_STOCK); // SAME AS SPE_M1903A3_Springfield
			ITEM(SPE_K98ZF39, 570, RIFLE_STOCK); // SAME AS SPE_K98
			
		};

		class launchersspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(SPE_Faustpatrone, 100, 15);
			ITEM(SPE_PzFaust_30m, 100, 15);
			ITEM(SPE_PzFaust_60m, 100, 15);
			ITEM(SPE_M1A1_Bazooka, 350, 25); 
			
		}; 

		class launchermagazinesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			ITEM(SPE_1Rnd_60mm_M6, 100, 15);
			ITEM(SPE_1Rnd_Faustpatrone, 100, 15);
			ITEM(SPE_1Rnd_PzFaust_30m, 100, 15);
			ITEM(SPE_1Rnd_PzFaust_60m, 100, 15);
			
		};

		class riflegrenadesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_glGrenades"]);
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
			
		};

		class muzzlesspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_muzzles"]);
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
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";		
			
			ITEM(SPE_8Rnd_9x19_P08, 15, MZ_STOCK);
			ITEM(SPE_7Rnd_45ACP_1911, 15, MZ_STOCK);
			ITEM(SPE_32Rnd_9x19_Sten, 20, MZ_STOCK);
			ITEM(SPE_32Rnd_9x19, 20, MZ_STOCK);
			ITEM(SPE_32Rnd_9x19_t, 20, MZ_STOCK);
			ITEM(SPE_30Rnd_M3_GreaseGun_45ACP, 20, MZ_STOCK);
			ITEM(SPE_30Rnd_M3_GreaseGun_45ACP_t, 20, MZ_STOCK);
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
			
		};

		class miscspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			
			ITEM(SPE_US_TNT_4pound_mag, 450, MISC_STOCK);
			ITEM(SPE_US_TNT_half_pound_mag, 400, MISC_STOCK);
			ITEM(SPE_US_Bangalore_mag, 450, MISC_STOCK);
			
		};

		class pointersspe{
			displayName = __EVAL(formatText ["%1 %2 %3 %4 %5", localize "STR_A3AU_spe", localize "STR_A3AU_barret", localize "STR_A3AU_handles", localize "STR_A3AU_and", localize "STR_A3AU_bipods"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(spe_m1918a2_bar_handle, 70, PN_STOCK);
			ITEM(spe_m1918a2_bar_bipod, 70, PN_STOCK);
			
		};

		class specialweaponsspe{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_specialWeapons"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SPE_Fusil_Mle_208_12, 150, 25);
			ITEM(SPE_Fusil_Mle_208_12_Sawedoff, 150, 25);
			ITEM(SPE_Flammenwerfer41, 300, 25);
			ITEM(B_SPE_GER_Flammenwerfer_41, 800, 25);
			ITEM(SPE_M2_Flamethrower, 300, 25);
			ITEM(B_SPE_US_M2Flamethrower, 800, 25);
			
		};

		class underbarrelspe{
	     	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_spe", localize "STR_A3AU_bagsStatics"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(SPE_Lafette_Tripod, 400, 20);
			
		};