#include "..\script_component.hpp"

class CfgPatches 
{
    class ultimate_d37
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {ADDON};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class CfgSounds
{
	sounds[] = {};
	class cramalarm
	{
		name = "cramalarm";
		sound[] = {"D37\Sound\cramalarm.ogg", 1.0, 1.0};
		titles[] = {0, ""};
	};
};
#include "CfgVehicles.hpp"

class cfgWeapons
{
    class ItemRadio;

    class LauncherCore;
	class MissileLauncher: LauncherCore {};
	class weapon_rim116Launcher: MissileLauncher {
		reloadTime = 0.75;
		magazines[] += {"magazine_Missile_dome_x21"};
	};
};

class cfgAmmo 
{
	class MissileCore;
	class MissileBase: MissileCore {
		class EventHandlers;
	};
	class ammo_Missile_ShortRangeAABase: MissileBase {};
	class ammo_Missile_rim116: ammo_Missile_ShortRangeAABase {};
	class ammo_Missile_dome: ammo_Missile_rim116 {
		thrust = 10;
		thrustTime = 34;
		timeToLive = 34;
	};

	class ammo_Missile_AntiRadiationBase: MissileBase {
		class EventHandlers:EventHandlers {
			class D37_Dome {
				init = "_this call A3U_fnc_initMissile";
			};
		};
	};

	class ammo_Missile_CruiseBase: MissileBase {
		class EventHandlers:EventHandlers {
			class D37_Dome {
				init = "_this call A3U_fnc_initMissile";
			};
		};
	};
};

class cfgMagazines 
{
	class CA_Magazine;
	class VehicleMagazine: CA_Magazine {};
	class magazine_Missile_rim116_x21: VehicleMagazine {};

	class magazine_Missile_dome_x21: magazine_Missile_rim116_x21 {
		ammo = "ammo_Missile_dome";
	};
};
