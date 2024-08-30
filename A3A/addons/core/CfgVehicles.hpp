class CfgVehicles
{
    class Box_Syndicate_Ammo_F;

    class A3AP_Box_Syndicate_Ammo_F : Box_Syndicate_Ammo_F 
    {
        armor = 2000;
    };

    class NATO_Box_Base;

	class A3AU_Storage_base: NATO_Box_Base
	{
		author = AUTHOR;
		hiddenSelections[] = 
		{
			"Camo_Signs",
			"Camo"
		};
		hiddenSelectionsTextures[] = 
		{
			QPATHTOFOLDER(Pictures\items\AmmoBox_signs_CA.paa),
			QPATHTOFOLDER(Pictures\items\AmmoBox_CO.paa)
		};
	};

	class A3AU_Storage_Small: A3AU_Storage_base
	{
		class SimpleObject
		{
			eden = 1;
			animate[] = 
			{
				{"ammo_hide",1},
				{"ammoord_hide",0},
				{"grenades_hide",1},
				{"support_hide",1}
			};
			hide[] = {};
			verticalOffset = 0.28400001;
			verticalOffsetWorld = 0;
			init = "''";
		};
		editorPreview = QPATHTOFOLDER(Pictures\items\A3AU_Storage_Small.jpg);
		scope = 2;
		displayName = "Storage Crate (Small)";
		model = "\A3\weapons_F\AmmoBoxes\AmmoBox_F";
		icon = "iconCrateOrd";
		maximumLoad = 1000;
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems{};
	};

	class A3AU_Storage_Medium: A3AU_Storage_base
	{
		mapSize = 1.8099999;
		class SimpleObject
		{
			eden = 1;
			animate[] = {};
			hide[] = {};
			verticalOffset = 0.189;
			verticalOffsetWorld = 0;
			init = "''";
		};
		editorPreview = QPATHTOFOLDER(Pictures\items\A3AU_Storage_Medium.jpg);
		_generalMacro = "Box_NATO_Wps_F";
		scope = 2;
		displayName = "Storage Crate (Medium)";
		model = "\A3\weapons_F\AmmoBoxes\WpnsBox_F";
		icon = "iconCrateWpns";
		maximumLoad = 3000;
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems{};
	};

    class ReammoBox_F;

	class A3AU_Storage_Large: ReammoBox_F
	{
		author = AUTHOR;
		mapSize = 1.58;
		class SimpleObject
		{
			eden = 1;
			animate[] = {};
			hide[] = {};
			verticalOffset = 0.89200002;
			verticalOffsetWorld = 0;
			init = "''";
		};
		editorPreview = QPATHTOFOLDER(Pictures\items\A3AU_Storage_Large.jpg);
		scope = 2;
		displayName = "Storage Crate (Large)";
		model = "\A3\Weapons_F\Ammoboxes\Supplydrop.p3d";
		maximumLoad = 6000;
		memoryPointSupply = "doplnovani";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {QPATHTOFOLDER(Pictures\items\supplydrop_co.paa)};
		slingLoadCargoMemoryPoints[] = 
		{
			"SlingLoadCargo1",
			"SlingLoadCargo2",
			"SlingLoadCargo3",
			"SlingLoadCargo4"
		};
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems{};
		class TransportBackpacks{};
	};
};
