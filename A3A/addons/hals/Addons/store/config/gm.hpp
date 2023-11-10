		///////////////////////////////////////////////////////
		// Global Mobilisation
		///////////////////////////////////////////////////////
		class handgunsgm{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(gm_lp1_blk, 50, PISTOL_STOCK); //AMMO: gm_1Rnd_265mm_flare_single_wht_gc
			ITEM(gm_m49_blk, 100, PISTOL_STOCK); //AMMO: gm_8Rnd_9x19mm_B_DM11_p210_blk
			ITEM(gm_p1_blk, 100, PISTOL_STOCK); //AMMO: gm_8Rnd_9x19mm_B_DM11_p1_blk
			ITEM(gm_p1sd_blk, 100, PISTOL_STOCK); //AMMO: gm_8Rnd_9x19mm_BSD_DM81_p1_blk
			ITEM(gm_p210_blk, 110, PISTOL_STOCK); //AMMO: gm_8Rnd_9x19mm_B_DM51_p210_blk
			ITEM(gm_p2a1_blk, 50, PISTOL_STOCK); //AMMO: gm_1Rnd_265mm_smoke_single_blk_gc
			ITEM(gm_pim_blk, 100, PISTOL_STOCK); //AMMO: gm_8Rnd_9x18mm_B_pst_pm_blk
			ITEM(gm_pimb_blk, 100, PISTOL_STOCK); //AMMO: gm_8Rnd_9x18mm_B_pst_pm_blk
			ITEM(gm_pm63_handgun_blk, 200, PISTOL_STOCK); //AMMO: gm_15Rnd_9x18mm_B_pst_pm63_blk
			ITEM(gm_pn3_gry, 50, PISTOL_STOCK); //AMMO: 
			ITEM(gm_wz78_blk, 50, PISTOL_STOCK); //AMMO: gm_1Rnd_265mm_flare_multi_nbc_DM47
			
		};
		
		class riflesgm
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(gm_mpiak74n_brn, 350, RIFLE_STOCK); // gm_30Rnd_545x39mm_B_7N6_ak74_org
			ITEM(gm_mpiak74n_prp, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74n_brn, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74n_prp, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74nk_brn, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74nk_prp, 350, RIFLE_STOCK);

			ITEM(gm_hk69a1_blk, 400, RIFLE_STOCK); // 1Rnd_HE_Grenade_shell
			ITEM(gm_pallad_d_brn, 300, RIFLE_STOCK);

			ITEM(gm_m16a1_blk, 400, RIFLE_STOCK); // gm_20Rnd_556x45mm_B_M193_stanag_gry
			ITEM(gm_m16a2_blk, 450, RIFLE_STOCK);

			ITEM(gm_mpikm72_brn, 700, RIFLE_STOCK); // gm_30Rnd_762x39mm_B_57N231_ak47_blk
			ITEM(gm_mpikm72_prp, 700, RIFLE_STOCK);

			ITEM(gm_mpikms72_brn, 700, RIFLE_STOCK);
			ITEM(gm_mpikms72_prp, 700, RIFLE_STOCK);
	
			ITEM(gm_akm_wud, 700, RIFLE_STOCK);
			ITEM(gm_akm_pallad_wud, 950, RIFLE_STOCK);
			ITEM(gm_akmn_wud, 850, RIFLE_STOCK);

			ITEM(gm_c7a1_oli, 650, RIFLE_STOCK); // gm_30Rnd_556x45mm_B_M855_stanag_gry
			ITEM(gm_c7a1_blk, 650, RIFLE_STOCK);
			ITEM(gm_gvm95_blk, 650, RIFLE_STOCK);

			ITEM(gm_g36a1_blk, 1200, RIFLE_STOCK); // gm_30Rnd_556x45mm_B_DM11_g36_blk
			ITEM(gm_g36e_blk, 900, RIFLE_STOCK);

			ITEM(gm_hk33a3_blk, 700, RIFLE_STOCK); //gm_30Rnd_556x45mm_B_DM11_hk33_blk
			ITEM(gm_hk33ka2_blk, 700, RIFLE_STOCK);

			ITEM(gm_hk33ka3_blk, 720, RIFLE_STOCK);
			ITEM(gm_hk33sg1_blk, 720, RIFLE_STOCK);
			
			ITEM(gm_g3a3_blk, 700, RIFLE_STOCK); // gm_20Rnd_762x51mm_B_T_DM21_g3_blk
			ITEM(gm_g3a3_oli, 700, RIFLE_STOCK);
			ITEM(gm_g3a3a0_blk, 800, RIFLE_STOCK);
			ITEM(gm_g3a3a0_oli, 800, RIFLE_STOCK);
			ITEM(gm_g3a3a0_gold, 5000, RIFLE_STOCK);
			ITEM(gm_g3a3a1_ris_blk, 1000, RIFLE_STOCK);
			ITEM(gm_g3a3a1_ris_oli, 1000, RIFLE_STOCK);
			ITEM(gm_g3a4_blk, 600, RIFLE_STOCK);
			ITEM(gm_g3a4_oli, 600, RIFLE_STOCK);
			ITEM(gm_g3a4a0_blk, 600, RIFLE_STOCK);
			ITEM(gm_g3a4a0_oli, 600, RIFLE_STOCK);
			ITEM(gm_g3a4a1_ris_blk, 850, RIFLE_STOCK);
			ITEM(gm_g3a4a1_ris_oli, 850, RIFLE_STOCK);
			ITEM(gm_g3ka4_blk, 550, RIFLE_STOCK);
			ITEM(gm_g3ka4_oli, 550, RIFLE_STOCK);
			ITEM(gm_g3ka4a1_ris_blk, 750, RIFLE_STOCK);
			ITEM(gm_g3sg1_blk, 850, RIFLE_STOCK);
			ITEM(gm_g3sg1_oli, 850, RIFLE_STOCK);
			ITEM(gm_g8a1_blk, 1100, RIFLE_STOCK);
			ITEM(gm_g8a2_blk, 1200, RIFLE_STOCK);

		};
		
		class mggm 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(gm_lmgk500_brn, 800, RIFLE_STOCK); // gm_75Rnd_762x39mm_BSD_57N231U_ak47_blk
			ITEM(gm_lmgk500s_brn, 800, RIFLE_STOCK);
			ITEM(gm_lmgrpk74n_prp, 900, RIFLE_STOCK); // gm_45Rnd_545x39mm_B_7N6_ak74_org
			ITEM(gm_lmgrpk74n_brn, 900, RIFLE_STOCK);

			ITEM(gm_lmgrpk_brn, 900, RIFLE_STOCK); // gm_75Rnd_762x39mm_B_57N231_mpikm_blk
			ITEM(gm_lmgrpk_prp, 900, RIFLE_STOCK);

			ITEM(gm_mg3_blk, 2000, RIFLE_STOCK); // gm_120Rnd_762x51mm_B_T_DM21_mg3_grn
			ITEM(gm_mg3_des, 2000, RIFLE_STOCK);
			
			ITEM(gm_mg8a1_blk, 2000, RIFLE_STOCK); // gm_100Rnd_762x51mm_B_T_DM21_mg8_oli
			ITEM(gm_mg8a2_blk, 2000, RIFLE_STOCK); // gm_100Rnd_762x51mm_B_T_DM21A1_mg8_oli gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli

			ITEM(gm_hmgpkm_prp, 1750, RIFLE_STOCK); // gm_100Rnd_762x54mmR_B_T_7t2_pk_grn
			
		};

		class sniperRiflesgm
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(gm_svd_wud, 1500, RIFLE_STOCK); // gm_10Rnd_762x54mmR_AP_7N1_svd_blk
			ITEM(gm_psg1_blk, 1500, RIFLE_STOCK); // gm_20Rnd_762x51mm_B_T_DM21_g3_blk
			ITEM(gm_msg90_blk, 1500, RIFLE_STOCK); // gm_20Rnd_762x51mm_B_T_DM151_g3_blk
			ITEM(gm_msg90a1_blk, 1500, RIFLE_STOCK); // gm_20Rnd_762x51mm_B_T_DM41_g3_blk

		};

		class smggm 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(gm_mp2a1_blk, 200, RIFLE_STOCK); // gm_32Rnd_9x19mm_B_DM51_mp2_blk

			ITEM(gm_mp5a2_blk, 250, RIFLE_STOCK); // gm_30Rnd_9x19mm_B_DM11_mp5_blk
			ITEM(gm_mp5a3_blk, 250, RIFLE_STOCK); // gm_30Rnd_9x19mm_B_DM11_mp5a3_blk
			ITEM(gm_mp5a4_blk, 250, RIFLE_STOCK); // gm_60Rnd_9x19mm_B_DM11_mp5a3_blk
			ITEM(gm_mp5a5_blk, 250, RIFLE_STOCK);
			ITEM(gm_mp5n_blk, 250, RIFLE_STOCK);
			ITEM(gm_mp5n_surefire_blk, 250, RIFLE_STOCK);
			ITEM(gm_mp5nsd1_blk, 350, RIFLE_STOCK);
			ITEM(gm_mp5nsd2_blk, 350, RIFLE_STOCK);
			ITEM(gm_mp5sd2_blk, 350, RIFLE_STOCK);
			ITEM(gm_mp5sd3_blk, 350, RIFLE_STOCK);
			ITEM(gm_mp5sd5_blk, 350, RIFLE_STOCK);
			ITEM(gm_mp5sd6_blk, 350, RIFLE_STOCK);
			ITEM(gm_hk53a2_blk, 400, RIFLE_STOCK);
			ITEM(gm_hk53a3_blk, 400, RIFLE_STOCK);
		};

		class launchersgm
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(gm_m72a3_oli, 200, 50);
			ITEM(gm_rpg18_oli, 200, 50);
			ITEM(gm_pzf3_blk, 800, 50); 
			ITEM(gm_pzf44_2_oli, 500, 15);
			ITEM(gm_rpg7_wud, 700, 15);
			ITEM(gm_rpg7_prp, 700, 15);
			ITEM(gm_pzf84_oli, 1000, 15);
			ITEM(gm_fim43_oli, 750, 50);
			ITEM(gm_9k32m_oli, 750, 50);

		};
	
		class launcherMagazinesgm 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf {
				price = 125;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_heat_t_DM12a1_carlgustaf {
				price = 145;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_heat_t_DM22_carlgustaf {
				price = 200;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf {
				price = 250;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf {
				price = 25;
				stock = 50;
			};

			class gm_1Rnd_66mm_heat_m72a3 {
				price = 50;
				stock = 50;
			};

			class gm_1Rnd_60mm_heat_dm12_pzf3 {
				price = 150;
				stock = 50;
			};
			class gm_1Rnd_60mm_heat_dm22_pzf3 {
				price = 200;
				stock = 50;
			};
			class gm_1Rnd_60mm_heat_dm32_pzf3 {
				price = 300;
				stock = 50;
			};

			class gm_1Rnd_44x537mm_heat_dm32_pzf44_2 {
				price = 90;
				stock = 50;
			};

			class gm_1Rnd_70mm_he_m585_fim43 {
				price = 750;
				stock = 50;
			};

			class gm_1Rnd_72mm_he_9m32m {
				price = 750;
				stock = 50;
			};

			class gm_1Rnd_40mm_heat_pg7v_rpg7 {
				price = 115;
				stock = 50;
			};
			class gm_1Rnd_40mm_heat_pg7vl_rpg7 {
				price = 200;
				stock = 50;
			};

		};

		class opticsgm
		{
			displayName = "GM Optics";
			picture = "";

			class gm_pso1_gry {
				price = 500;
				stock = 50;
			};

			class gm_zvn64_rear_ak {
				price = 25;
				stock = 50;
			};

			class gm_c79a1_blk {
				price = 400;
				stock = 50;
			};

			class gm_c79a1_oli {
				price = 400;
				stock = 50;
			};

			class gm_feroz24_blk {
				price = 250;
				stock = 50;
			};

			class gm_feroz2x17_pzf44_2_blk {
				price = 250;
				stock = 50;
			};

			class gm_feroz2x17_pzf44_2_des {
				price = 250;
				stock = 50;
			};

			class gm_feroz2x17_pzf44_2_win {
				price = 250;
				stock = 50;
			};

			class gm_pgo7v_blk {
				price = 250;
				stock = 50;
			};

			class gm_zfk4x25_blk {
				price = 250;
				stock = 50;
			};

		};

		class pointersgm 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_pointers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(gm_zvn64_front, 25, PN_STOCK);
		};

		class muzzlesgm 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(gm_bayonet_6x3_wud, 10, PN_STOCK);
			ITEM(gm_bayonet_6x3_blk, 10, PN_STOCK);

		};

		class magazinesgm 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";


			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////



			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class gm_1Rnd_265mm_flare_single_wht_gc {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_8Rnd_9x19mm_B_DM11_p210_blk {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_8Rnd_9x19mm_B_DM11_p1_blk {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_8Rnd_9x19mm_BSD_DM81_p1_blk {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_8Rnd_9x19mm_B_DM51_p210_blk {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_1Rnd_265mm_smoke_single_blk_gc {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_8Rnd_9x18mm_B_pst_pm_blk {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_15Rnd_9x18mm_B_pst_pm63_blk {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class gm_1Rnd_265mm_flare_multi_nbc_DM47 {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class gm_30Rnd_9x19mm_B_DM51_mp5_blk {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_9x19mm_B_DM11_mp5_blk {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_9x19mm_AP_DM91_mp5_blk {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class gm_32Rnd_9x19mm_B_DM51_mp2_blk {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_32Rnd_9x19mm_B_DM11_mp2_blk {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class gm_32Rnd_9x19mm_AP_DM91_mp2_blk {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_9x19mm_B_DM11_mp5a3_blk {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class gm_60Rnd_9x19mm_B_DM11_mp5a3_blk {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class gm_30Rnd_556x45mm_B_DM11_g36_blk {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_556x45mm_B_T_DM21_g36_blk {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class gm_30Rnd_556x45mm_B_DM11_g36_des {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_556x45mm_B_T_DM21_g36_des {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_556x45mm_B_DM11_hk33_blk {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class gm_20Rnd_762x51mm_B_T_DM21_g3_blk {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_762x39mm_B_57N231_ak47_blk {
				price = 95;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_545x39mm_B_7N6_ak74_org {
				price = 95;
				stock = MAGAZINE_STOCK;
			};
			class gm_20Rnd_556x45mm_B_M193_stanag_gry {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_556x45mm_B_M855_stanag_gry {
				price = 95;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////


			class gm_10Rnd_762x54mmR_AP_7N1_svd_blk {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class gm_10Rnd_762x54mmR_API_7bz3_svd_blk {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class gm_10Rnd_762x54mmR_B_T_7t2_svd_blk {
				price = 235;
				stock = MAGAZINE_STOCK;
			};
			
			class gm_20Rnd_762x51mm_B_T_DM151_g3_blk {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class gm_20Rnd_762x51mm_B_T_DM41_g3_blk {
				price = 235;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class gm_45Rnd_545x39mm_B_7N6_ak74_prp {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class gm_45Rnd_545x39mm_B_T_7T3_ak74_prp {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class gm_100Rnd_762x54mmR_B_T_7t2_pk_grn {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class gm_100Rnd_762x54mmR_API_7bz3_pk_grn {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class gm_100Rnd_762x54mm_B_T_t46_pk_grn {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class gm_100Rnd_762x54mm_API_b32_pk_grn {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class gm_120Rnd_762x51mm_B_T_DM21_mg3_grn {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class gm_120Rnd_762x51mm_B_T_DM21A1_mg3_grn {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class gm_120Rnd_762x51mm_B_T_DM21A2_mg3_grn {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class gm_75Rnd_762x39mm_B_57N231_mpikm_blk {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class gm_45Rnd_545x39mm_B_7N6_ak74_org {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class gm_75Rnd_762x39mm_BSD_57N231U_ak47_blk {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////

		};
		
		class underbarrelgm{
	     	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_bipods"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(gm_g3_bipod_blk, 50, 20);
			ITEM(gm_g8_bipod_blk, 50, 20);
			ITEM(gm_msg90_bipod_blk, 50, 20);
			
		};	
		
		class miscgm{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_gm", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(gm_explosive_petn_charge, 450, MISC_STOCK);
			ITEM(gm_explosive_plnp_charge, 400, MISC_STOCK);
		};