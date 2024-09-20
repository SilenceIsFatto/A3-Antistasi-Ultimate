class CfgVehicles
{
    class Box_Syndicate_Ammo_F;

    class A3AP_Box_Syndicate_Ammo_F : Box_Syndicate_Ammo_F 
    {
        armor = 2000;
    };

    class NATO_Box_Base;

	class A3AU_Build_Box_base: NATO_Box_Base
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
			QPATHTOFOLDER(Pictures\items\AmmoBox_black_CO.paa)
		};
	};

	class A3AU_Build_Box_Large_1: A3AU_Build_Box_base
	{
		mapSize = 2.3399999;
		class SimpleObject
		{
			eden = 1;
			animate[] = {};
			hide[] = {};
			verticalOffset = 0.15000001;
			verticalOffsetWorld = 0;
			init = "''";
		};
		editorPreview = QPATHTOFOLDER(Pictures\items\A3AU_Build_Box_Large_1.jpg);
		_generalMacro = "Box_NATO_WpsLaunch_F";
		scope = 2;
		displayName = "Build Box (Large)";
		model = "\A3\weapons_F\AmmoBoxes\WpnsBox_long_F";
		icon = "iconCrateLong";
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems{};
		class TransportBackpacks{};
	};
};
