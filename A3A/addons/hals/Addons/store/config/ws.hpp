		class riflesWs 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_ws", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_XMS_Base_lxWS, 700, RIFLE_STOCK);
			ITEM(arifle_XMS_Base_khk_lxWS, 700, RIFLE_STOCK);
			ITEM(arifle_XMS_Base_Sand_lxWS, 700, RIFLE_STOCK);
			
			ITEM(arifle_XMS_Shot_lxWS, 800, RIFLE_STOCK);
			ITEM(arifle_XMS_Shot_khk_lxWS, 800, RIFLE_STOCK);
			ITEM(arifle_XMS_Shot_Sand_lxWS, 800, RIFLE_STOCK);

			ITEM(arifle_XMS_M_lxWS, 900, RIFLE_STOCK);
			ITEM(arifle_XMS_M_khk_lxWS, 900, RIFLE_STOCK);
			ITEM(arifle_XMS_M_Sand_lxWS, 900, RIFLE_STOCK);

			ITEM(arifle_XMS_GL_lxWS, 1050, RIFLE_STOCK);
			ITEM(arifle_XMS_GL_khk_lxWS, 1050, RIFLE_STOCK);
			ITEM(arifle_XMS_GL_Sand_lxWS, 1050, RIFLE_STOCK);

			ITEM(arifle_Galat_lxWS, 1500, RIFLE_STOCK);

			ITEM(arifle_SLR_V_lxWS, 2000, RIFLE_STOCK);
			ITEM(arifle_SLR_D_lxWS, 2000, RIFLE_STOCK);
			ITEM(arifle_SLR_lxWS, 2000, RIFLE_STOCK);

			ITEM(arifle_SLR_V_GL_lxWS, 2150, RIFLE_STOCK);
			ITEM(arifle_SLR_GL_lxWS, 2150, RIFLE_STOCK);
		
			ITEM(LMG_S77_Compact_lxWS, 1800, RIFLE_STOCK);
			ITEM(LMG_S77_Compact_Snakeskin_lxWS, 1800, RIFLE_STOCK);

			ITEM(LMG_S77_lxWS, 2000, RIFLE_STOCK);
			ITEM(LMG_S77_Hex_lxWS, 2000, RIFLE_STOCK);
			ITEM(LMG_S77_GHex_lxWS, 2000, RIFLE_STOCK);
			ITEM(LMG_S77_AAF_lxWS, 2000, RIFLE_STOCK);
			ITEM(LMG_S77_Desert_lxWS, 2000, RIFLE_STOCK);

			ITEM(arifle_VelkoR5_lxWS, 750, RIFLE_STOCK);
			ITEM(arifle_VelkoR5_snake_lxWS, 750, RIFLE_STOCK);
			ITEM(arifle_Velko_lxWS, 800, RIFLE_STOCK);
			ITEM(arifle_VelkoR5_GL_lxWS, 1000, RIFLE_STOCK);
			ITEM(arifle_VelkoR5_GL_snake_lxWS, 1000, RIFLE_STOCK);

			ITEM(sgun_aa40_lxWS, 1250, RIFLE_STOCK);
			ITEM(sgun_aa40_snake_lxWS, 1250, RIFLE_STOCK);
			ITEM(sgun_aa40_tan_lxWS, 1250, RIFLE_STOCK);

			ITEM(glaunch_GLX_lxWS, 600, RIFLE_STOCK);
			ITEM(glaunch_GLX_hex_lxWS, 600, RIFLE_STOCK);
			ITEM(glaunch_GLX_ghex_lxWS, 600, RIFLE_STOCK);
			ITEM(glaunch_GLX_snake_lxWS, 600, RIFLE_STOCK);
			ITEM(glaunch_GLX_tan_lxWS, 600, RIFLE_STOCK);
		};

		class magazinesWs 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_ws", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			//SLR Rifle grenades
			ITEM(1Rnd_40mm_HE_lxWS, 50, MZ_STOCK);
			ITEM(1Rnd_58mm_AT_lxWS, 75, MZ_STOCK);
			ITEM(1Rnd_50mm_Smoke_lxWS, 25, MZ_STOCK);

			ITEM(20Rnd_762x51_slr_lxWS, 125, MZ_STOCK);
			ITEM(30Rnd_762x51_slr_lxWS, 175, MZ_STOCK);

			ITEM(35Rnd_556x45_Velko_lxWS, 65, MZ_STOCK);
			ITEM(50Rnd_556x45_Velko_lxWS, 115, MZ_STOCK);

			ITEM(75Rnd_556x45_Stanag_lxWS, 150, MZ_STOCK);
			ITEM(75Rnd_556x45_Stanag_green_lxWS, 150, MZ_STOCK);
			ITEM(75Rnd_556x45_Stanag_red_lxWS, 150, MZ_STOCK);

			class 100Rnd_762x51_S77_Red_lxWS {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_762x51_S77_Red_Tracer_lxWS {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_762x51_S77_Green_lxWS {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_762x51_S77_Green_Tracer_lxWS {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_762x51_S77_Yellow_lxWS {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_762x51_S77_Yellow_Tracer_lxWS {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Pellet_Grenade_shell_lxWS {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_12Gauge_AA40_HE_lxWS {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Slug_lxWS {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Pellets_lxWS {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Smoke_lxWS {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_12Gauge_AA40_HE_Snake_lxWS {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Slug_Snake_lxWS {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Pellets_Snake_lxWS {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Smoke_Snake_lxWS {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_12Gauge_AA40_HE_Tan_lxWS {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Slug_Tan_lxWS {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Pellets_Tan_lxWS {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_12Gauge_AA40_Smoke_Tan_lxWS {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
		};