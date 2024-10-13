class cfgVehicles
{
    class Item_Base_F;
    class Thing;
	
    class AllVehicles;
	
	class Air: AllVehicles {};
	class Plane: Air {
		class Eventhandlers;
	};
	class Helicopter: Air {
		class Eventhandlers;
	};
	/* class Helicopter_Base_F: Helicopter {
		class Eventhandlers: Eventhandlers {
			class D37_dome {
				init = "_this call A3U_fnc_handleUAV;";
			};
		};
	};

		
	class UAV: Plane {
		class Eventhandlers: Eventhandlers {
			class D37_dome {
				init = "_this call A3U_fnc_handleUAV;";
			};
		};
	}; */

	class Plane_Base_F: Plane {};
	class Plane_Fighter_01_Base_F: Plane_Base_F {};
	class B_Plane_Fighter_01_F: Plane_Fighter_01_Base_F 
	{
		class EventHandlers {};
	};

	class CRAM_Fake_PlaneTGT: B_Plane_Fighter_01_F 
	{
		//model = "\A3\Structures_F\Mil\Helipads\HelipadEmpty_F.p3d";
		class EventHandlers: EventHandlers 
		{
			init = "(_this select 0) hideObjectGlobal true;";
		};
		scope = 1;
	};

	class Land: AllVehicles {};
	class LandVehicle: Land {};
	class StaticWeapon: LandVehicle {};
	class StaticMGWeapon: StaticWeapon {};
    class AAA_System_01_base_F: StaticMGWeapon
	{
		class EventHandlers;

		class Turrets 
		{
			class MainTurret;
		};
	};

    class B_AAA_System_01_F: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
		class Turrets: Turrets 
		{
			class MainTurret: MainTurret 
			{
				magazines[] = {"magazine_Cannon_Phalanx_x1550","magazine_Cannon_Phalanx_x1550","magazine_Cannon_Phalanx_x1550"};
			};
		};
	};

	class SAM_System_01_base_F: StaticMGWeapon 
	{
		class EventHandlers;
		class Turrets 
		{
			class MainTurret;
		};
	};

	class B_SAM_System_01_F: SAM_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 2800, 1] spawn A3U_fnc_handleDome;";
			};
		};
	};

    class B_SAM_System_01_F_DOME: B_SAM_System_01_F 
	{
        displayName = "Iron Dome";
        class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4400, 1, [420/3.6, 0, 4, false, 14, 1]] spawn A3U_fnc_handleDome;";
			};
		};

        class Turrets: Turrets 
		{
            class MainTurret: MainTurret 
			{
                initElev = 89;
                maxelev = 90;
                minelev = 89;

				magazines[] = {"magazine_Missile_dome_x21"};
            };
        };
    };

	class SAM_System_03_base_F: StaticMGWeapon 
	{
		class EventHandlers;
	};
	class B_SAM_System_03_F: SAM_System_03_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 7500, 1, [1100/3.6, 0, 4, true, 30, 3]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	class SAM_System_04_base_F: StaticMGWeapon 
	{
		class EventHandlers;
	};
	class O_SAM_System_04_F: SAM_System_04_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 7500, 1, [1100/3.6, 0, 4, true, 30, 3]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	class SAM_System_02_base_F: StaticMGWeapon 
	{
		class EventHandlers;
	};
	class B_SAM_System_02_F: SAM_System_02_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4500, 1, [800/3.6, 0, 3, true, 15, 4]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	////CUP
	class CUP_Type072_Turret_Base: StaticMGWeapon
	{
		class EventHandlers;

		class Turrets 
		{
			class MainTurret;
		};
	};

    class CUP_B_Type072_Turret: CUP_Type072_Turret_Base 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
		class Turrets: Turrets 
		{
			class MainTurret: MainTurret 
			{
				magazines[] = {"CUP_3000Rnd_TE4_Red_Tracer_37mm_Type76_M","CUP_3000Rnd_TE4_Red_Tracer_37mm_Type76_M"};
			};
		};
	};

	class CUP_WV_CRAM_base: StaticMGWeapon
	{
		class EventHandlers;
	};

    class CUP_WV_B_CRAM: CUP_WV_CRAM_base 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class CUP_WV_SS_Launcher_base: StaticMGWeapon 
	{
		class EventHandlers;
	};
	class CUP_WV_B_SS_Launcher: CUP_WV_SS_Launcher_base 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4500, 1, [800/3.6, 0, 3, true, 15, 4]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	class CUP_WV_RAM_Launcher_base: StaticMGWeapon
	{
		class EventHandlers;
		class Turrets 
		{
			class MainTurret;
		};
	};

	class CUP_WV_B_RAM_Launcher: CUP_WV_RAM_Launcher_base 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4400, 1, [420/3.6, 0, 4, false, 14, 1]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	///OPTRE
	class OPTRE_Scythe: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

    class OPTRE_Scythe_AA: OPTRE_Scythe 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_Scythe_AA_INS: OPTRE_Scythe 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_Scythe_INS: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_Scythe_CMA: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_Lance: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4400, 1, [420/3.6, 0, 4, false, 14, 1]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	class COPTRE_Lance_INS: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4400, 1, [420/3.6, 0, 4, false, 14, 1]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	class OPTRE_Lance_CMA: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class DOME37 
			{
				init = "[_this select 0, 4400, 1, [420/3.6, 0, 4, false, 14, 1]] spawn A3U_fnc_handleDome;";
			};
		};
	};

	class OPTRE_FC_T56_AAG: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_FC_T56_AA: AAA_System_01_base_F 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_FC_T56_AA_IND: OPTRE_FC_T56_AA 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};

	class OPTRE_FC_T56_AAG_IND: OPTRE_FC_T56_AAG 
	{
		class EventHandlers: EventHandlers 
		{
			class CRAM37 
			{
				init = "[_this select 0, 2800, 2] spawn A3U_fnc_handleCRAM;";
			};
		};
	};
};