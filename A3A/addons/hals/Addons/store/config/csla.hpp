	class riflesCSLA 
	{
		displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";	
			ITEM(CSLA_rSa61, 600, RIFLE_STOCK);	
			ITEM(CSLA_Sa24, 600, RIFLE_STOCK);	
			ITEM(CSLA_Sa26, 600, RIFLE_STOCK);	
			ITEM(CSLA_Sa58P, 600, RIFLE_STOCK);	
			ITEM(CSLA_Sa58V, 600, RIFLE_STOCK);	
			ITEM(CSLA_VG70, 600, RIFLE_STOCK);	
			ITEM(US85_MPVN, 600, RIFLE_STOCK);	
			ITEM(US85_MPVSD, 600, RIFLE_STOCK);	
			ITEM(US85_M16A2, 600, RIFLE_STOCK);	
			ITEM(US85_M16A1, 600, RIFLE_STOCK);	
			ITEM(US85_M16A2CAR, 600, RIFLE_STOCK);	
			ITEM(US85_M16A2GL, 600, RIFLE_STOCK);	
			ITEM(US85_M16A2CARGL, 600, RIFLE_STOCK);	
			ITEM(US85_FAL, 600, RIFLE_STOCK);	
			ITEM(US85_FALf, 600, RIFLE_STOCK);		
	}; 

///mg
	class mgCSLA 
	{
		displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";
			ITEM(CSLA_UK59L, 1000, RIFLE_STOCK);	
			ITEM(US85_M249, 1000, RIFLE_STOCK);	
			ITEM(US85_M60, 1000, RIFLE_STOCK);		
	}; 

////sniperRifles
	class sniperRiflesCSLA 
	{
	displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";	
			ITEM(CSLA_OP63, 1000, RIFLE_STOCK);	
			ITEM(CSLA_HuntingRifle, 1000, RIFLE_STOCK);	
			ITEM(US85_M21, 1000, RIFLE_STOCK);	
			ITEM(US85_M14, 1000, RIFLE_STOCK);		
	}; 

///launchers
	class launchersCSLA
	{
		displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";
			ITEM(CSLA_RPG75, 1250, RIFLE_STOCK);	
			ITEM(CSLA_9K32, 1250, RIFLE_STOCK);	
			ITEM(US85_LAW72, 1250, RIFLE_STOCK);	
			ITEM(US85_M136, 1250, RIFLE_STOCK);	
			ITEM(US85_SMAW, 1250, RIFLE_STOCK);	
			ITEM(US85_M47, 1250, RIFLE_STOCK);	
			ITEM(US85_FIM92, 1250, RIFLE_STOCK);		
	}; 

	class magazineslaunchersCSLA
	{
		displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";	
            ITEM(CSLA_RPG75_Mag, 200, MAGAZINE_STOCK);	
            ITEM(CSLA_PG7M110, 200, MAGAZINE_STOCK);	
            ITEM(CSLA_9M32M, 200, MAGAZINE_STOCK);	
            ITEM(US85_LAW72_Mag, 200, MAGAZINE_STOCK);	
            ITEM(US85_M136_Mag, 200, MAGAZINE_STOCK);	
            ITEM(US85_SMAW_HEAA, 200, MAGAZINE_STOCK);	
            ITEM(US85_M47_Mag, 200, MAGAZINE_STOCK);	
            ITEM(US85_FIM92_Mag, 200, MAGAZINE_STOCK);
    };
////handguns
	class handgunsCSLA 
	{
		displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(CSLA_Pi52, 200, RIFLE_STOCK);	
			ITEM(CSLA_Pi75sr, 200, RIFLE_STOCK);	
			ITEM(CSLA_Pi75lr, 200, RIFLE_STOCK);	
			ITEM(CSLA_Pi82, 200, RIFLE_STOCK);	
			ITEM(CSLA_Sa61, 200, RIFLE_STOCK);	
			ITEM(US85_1911, 200, RIFLE_STOCK);	
			ITEM(US85_M9, 200, RIFLE_STOCK);		
		}; 

	class magazinesCSLA
	{
		displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

            ITEM(CSLA_Pi52_8rnd_7_62Pi52, 20, MAGAZINE_STOCK);	
            ITEM(CSLA_Pi75_15Rnd_9Luger, 20, MAGAZINE_STOCK);	
            ITEM(CSLA_Pi82_12rnd_9Pi82, 20, MAGAZINE_STOCK);	
            ITEM(CSLA_Sa61_10rnd_7_65Pi27, 20, MAGAZINE_STOCK);	
            ITEM(US85_1911_7Rnd_045ACP, 20, MAGAZINE_STOCK);	
            ITEM(US85_M9_15Rnd_9Luger, 20, MAGAZINE_STOCK);

            ITEM(CSLA_Sa61_20rnd_7_65Pi27, 50, MAGAZINE_STOCK);	
            ITEM(CSLA_Sa24_32rnd_7_62Pi52, 50, MAGAZINE_STOCK);	
            ITEM(CSLA_Sa58_30rnd_7_62vz43, 50, MAGAZINE_STOCK);	
            ITEM(US85_MPV_30Rnd_9Luger, 50, MAGAZINE_STOCK);	
            ITEM(US85_30Rnd_556x45, 50, MAGAZINE_STOCK);	
            ITEM(US85_20Rnd_556x45, 50, MAGAZINE_STOCK);

            ITEM(CSLA_UK59_50rnd_7_62vz59, 50, MAGAZINE_STOCK);	
            ITEM(US85_200Rnd_556x45, 50, MAGAZINE_STOCK);	
            ITEM(US85_100Rnd_762x51, 50, MAGAZINE_STOCK);

            ITEM(CSLA_OP63_10rnd_7_62Odst59, 50, MAGAZINE_STOCK);	
            ITEM(CSLA_10Rnd_762hunt, 50, MAGAZINE_STOCK);	
            ITEM(US85_20Rnd_762x51, 50, MAGAZINE_STOCK);
    };
////attachments
		class attachmentsCSLA
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(CSLA_ZD4x8, 150, MZ_STOCK);

			ITEM(CSLA_NSPU, 150, MZ_STOCK);

			ITEM(CSLA_Sa58bnt, 200, MZ_STOCK);

			ITEM(CSLA_Sa58bpd, 200, MZ_STOCK);

			ITEM(CSLA_PSO1_OP63, 200, MZ_STOCK);

			ITEM(CSLA_NSPU_OP63, 200, MZ_STOCK);

			ITEM(CSLA_UK59_ZD4x8, 200, MZ_STOCK);

			ITEM(CSLA_PGO7, 150, MZ_STOCK);

			ITEM(US85_M9tlm, 150, MZ_STOCK);

			ITEM(US85_sc4x20_M16, 200, MZ_STOCK);

			ITEM(US85_sc2000_M16, 200, MZ_STOCK);

			ITEM(US85_ANPVS4_M16, 200, MZ_STOCK);

			ITEM(US85_M16fl, 200, MZ_STOCK);

			ITEM(US85_M16tlm, 200, MZ_STOCK);

			ITEM(US85_ANPVS4_M21, 150, MZ_STOCK);

			ITEM(US85_M21tlm, 150, MZ_STOCK);

			ITEM(US85_M14bpd, 200, MZ_STOCK);

			ITEM(US85_scFAL, 200, MZ_STOCK);

			ITEM(US85_ANPVS4_FAL, 200, MZ_STOCK);

			ITEM(US85_FALbpd, 200, MZ_STOCK);

			ITEM(US85_sc4x20M249, 200, MZ_STOCK);

			ITEM(US85_sc2000M249, 200, MZ_STOCK);

			ITEM(US85_ANPVS4_M60, 200, MZ_STOCK);

		};

		class navigationCSLA
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_CSLA", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(US85_ANPVS5_Goggles, 1000, NN_STOCK);
			ITEM(CSLA_nokto, 1000, NN_STOCK);

		};

		class miscCSLA 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_CSLA", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(CSLA_helmet53, 500, MISC_STOCK);
			ITEM(CSLA_helmet53d, 750, MISC_STOCK);
			ITEM(CSLA_helmet53m, 500, MISC_STOCK);
			ITEM(CSLA_helmet53j, 1000, MISC_STOCK);
			ITEM(CSLA_helmet53G, 500, MISC_STOCK);
			ITEM(CSLA_helmet53G_on, 750, MISC_STOCK);
			ITEM(US85_helmetPASGT, 500, MISC_STOCK);
			ITEM(US85_helmetPASGTr, 1000, MISC_STOCK);
			ITEM(US85_helmetPASGTG, 500, MISC_STOCK);
			ITEM(US85_helmetM1g, 750, MISC_STOCK);
			ITEM(US85_helmetM1c, 500, MISC_STOCK);
			ITEM(US85_helmetDH132 1000, MISC_STOCK);
			ITEM(US85_helmetDH132G, 500, MISC_STOCK);
			ITEM(US85_helmetDH132G_on, 750, MISC_STOCK);
			ITEM(US85_helmetPlt, 500, MISC_STOCK);
			ITEM(US85_helmetPltC, 1000, MISC_STOCK);
			ITEM(US85_helmetPltAttack 1000, MISC_STOCK);
			ITEM(US85_helmetPltAttackC, 500, MISC_STOCK);
			ITEM(US85_helmetSFL, 750, MISC_STOCK);
			ITEM(US85_helmetSFLG, 500, MISC_STOCK);
			ITEM(US85_helmetSFLG_on, 1000, MISC_STOCK);
			ITEM(AFMC_helmetMk6 1000, MISC_STOCK);
			ITEM(AFMC_helmetMk6para, 500, MISC_STOCK);
			ITEM(AFMC_helmetMk6r, 750, MISC_STOCK);
			ITEM(AFMC_helmetM1c, 500, MISC_STOCK);

			ITEM(US85_grVest, 1000, MISC_STOCK);
			ITEM(US85_grV_ofc, 1000, MISC_STOCK);
			ITEM(US85_grVm_M16GL, 1000, MISC_STOCK);
			ITEM(US85_grV_M16GL, 1000, MISC_STOCK);
			ITEM(US85_grV_M9, 1000, MISC_STOCK);
			ITEM(US85_grV_MG, 1000, MISC_STOCK);
			ITEM(US85_grV_MPV, 1000, MISC_STOCK);
			ITEM(US85_grSF_M16, 1000, MISC_STOCK);
			ITEM(US85_grSF_M16GL, 1000, MISC_STOCK);
			ITEM(US85_grSF_M24, 1000, MISC_STOCK);
			ITEM(US85_grSF_M9, 1000, MISC_STOCK);
			ITEM(US85_grSF_MG, 1000, MISC_STOCK);
			ITEM(US85_grSF_TLBV, 1000, MISC_STOCK);
			ITEM(AFMC_grVest, 1000, MISC_STOCK);
			ITEM(AFMC_grV_M16, 1000, MISC_STOCK);
			ITEM(AFMC_grV_ofc, 1000, MISC_STOCK);
			ITEM(AFMC_grV_M24, 1000, MISC_STOCK);
			ITEM(AFMC_grV_MG, 1000, MISC_STOCK);

			ITEM(CSLA_RG4o, 500, MISC_STOCK);
			ITEM(CSLA_RG4u, 500, MISC_STOCK);
			ITEM(CSLA_URG86o, 750, MISC_STOCK);
			ITEM(CSLA_URG86u, 750, MISC_STOCK);

			ITEM(CSLA_PtMiBa3_mag, 300, MISC_STOCK);
			ITEM(CSLA_PPMiNa_mag, 250, MISC_STOCK);
			ITEM(CSLA_RG4m_mag, 500, MISC_STOCK);
			ITEM(CSLA_URG86m_mag, 400, MISC_STOCK);
			ITEM(CSLA_F1m_mag, 200, MISC_STOCK);
			ITEM(CSLA_NO2, 200, MISC_STOCK);
			ITEM(CSLA_TNT0100g, 150, MISC_STOCK);
			ITEM(US85_M67m_mag, 100, MISC_STOCK);

		};