		class riflesScion 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_scion", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SC_Rifle_Ravager, 500, RIFLE_STOCK);
			ITEM(SC_Rifle_AR12, 600, RIFLE_STOCK);	
			ITEM(SC_Rifle_AR12C, 600, RIFLE_STOCK);	
			ITEM(SC_Rifle_ARG47, 700, RIFLE_STOCK);	
			ITEM(SC_Rifle_ARG88, 800, RIFLE_STOCK);	
			ITEM(SC_Rifle_ARG88M, 1000, RIFLE_STOCK);		
		}; 

		class magazinesriflesScion
		{
            displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_scion", localize "STR_A3AU_magazines"]);
            picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

            ITEM(SC_20Rnd_Plasma_Mag, 100, MAGAZINE_STOCK);	
            ITEM(SC_30Rnd_65x39mm_Mag, 200, MAGAZINE_STOCK);	
            ITEM(SC_35Rnd_762x51_Mag, 200, MAGAZINE_STOCK);	
            ITEM(SC_30Rnd_Shrapnel_Mag_Cyan, 200, MAGAZINE_STOCK);	
            ITEM(SC_10Rnd_HCShrapnel_Mag_Cyan, 200, MAGAZINE_STOCK);
        };

		class sniperRiflesScion 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_scion", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SC_Rifle_SSR55, 1200, RIFLE_STOCK);	
			ITEM(SC_Rifle_SSR55C, 1200, RIFLE_STOCK);	
		}; 

		class magazinessniperRiflesScion
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_scion", localize "STR_A3AU_srMagazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

            ITEM(SC_5Rnd_50HV_Mag, 250, MAGAZINE_STOCK);	
        };

		class opticsScion 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_scion", localize "STR_A3AU_sights"]);
			picture = "";

			class sc_reflex_c_blue 
            {
				price = 100;
				stock = 100;
			};
            class sc_reflex_c_red : sc_reflex_c_blue {};
            class sc_reflex_c1_red : sc_reflex_c_blue {};
            class sc_reflex_r_blue : sc_reflex_c_blue {};
            class sc_reflex_r_green : sc_reflex_c_blue {};
            class sc_reflex_r_yellow : sc_reflex_c_blue {};

			class sc_t1
            {
				price = 500;
				stock = 100;
			};
            class sc_x11 : sc_t1 {};
			class sc_tso55
            {
				price = 1000;
				stock = 100;
			};
		}; 