#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_core", "A3_UI_F"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

#define RANDOM_NUMBER __RAND_UINT8__

#if __A3_DEBUG__
	class RANDOM_NUMBER
	{
		number = RANDOM_NUMBER;
	};
#endif

#if RANDOM_NUMBER > 0
    #define BACKGROUND data\backgrounds\us_army_co.jpg
#endif

#if RANDOM_NUMBER > 17
    #define BACKGROUND data\backgrounds\absolute_heat_co.jpg
#endif

#if RANDOM_NUMBER > 34
    #define BACKGROUND data\backgrounds\bwa_co.jpg
#endif

#if RANDOM_NUMBER > 51
    #define BACKGROUND data\backgrounds\canada_co.jpg
#endif

#if RANDOM_NUMBER > 68
    #define BACKGROUND data\backgrounds\rebels2_co.jpg
#endif

#if RANDOM_NUMBER > 85
    #define BACKGROUND data\backgrounds\ffaa_co.jpg
#endif

#if RANDOM_NUMBER > 102
    #define BACKGROUND data\backgrounds\italy_co.jpg
#endif

#if RANDOM_NUMBER > 119
    #define BACKGROUND data\backgrounds\pla_co.jpg
#endif

#if RANDOM_NUMBER > 136
    #define BACKGROUND data\backgrounds\racs_co.jpg
#endif

#if RANDOM_NUMBER > 153
    #define BACKGROUND data\backgrounds\rebels_co.jpg
#endif

#if RANDOM_NUMBER > 170
    #define BACKGROUND data\backgrounds\russia_co.jpg
#endif

#if RANDOM_NUMBER > 187
    #define BACKGROUND data\backgrounds\spearhead_1944_co.jpg
#endif

#if RANDOM_NUMBER > 204
    #define BACKGROUND data\backgrounds\sweden_co.jpg
#endif

#if RANDOM_NUMBER > 221
    #define BACKGROUND data\backgrounds\turkey_co.jpg
#endif

#if RANDOM_NUMBER > 238
    #define BACKGROUND data\backgrounds\vietnarm_co.jpg
#endif

#ifndef BACKGROUND
    #define BACKGROUND data\backgrounds\usmc_co.jpg
#endif

class RscActivePicture;
class RscStandardDisplay;
class RscPicture;
class RscText;
class RscStructuredText;
class RscTitles
{ //loading screen
	class SplashNoise
	{
		idd=-1;
		movingEnable=0;
		duration=11;
		fadein=0;
		fadeout=0;
		controls[]=
		{
			"BackgroundNoise"
		};
		class BackgroundNoise: RscPicture
		{
			text = QPATHTOFOLDER(data\backgrounds\AUC_Credits_Blank_co.jpg);
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
	class SplashBohemia
	{
		idd=-1;
		movingEnable=0;
		duration=4;
		fadein=0;
		fadeout=0;
		name="$STR_A3_SplashCopyright_0";
		controls[]=
		{
			"PictureA3Logo",
			"PictureBIlogo",
			"PicturePhysXLogo",
			"LegalText"
		};
		class PictureA3Logo: RscPicture
		{
			idc=1200;
			text="\A3\Ui_f\data\Logos\arma3_white_ca.paa";
			x="SafeZoneX + SafeZoneW / 2 - (36 * (0.01875 * SafezoneH)) / 2";
			y="SafeZoneY +	SafeZoneH / 2 - (13.7 * (0.025 * SafezoneH)) / 2";
			w="8 * (0.01875 * SafezoneH)";
			h="4 * (0.025 * SafezoneH)";
		};
		class PictureBIlogo: RscPicture
		{
			idc=1201;
			text="\A3\Ui_f\data\IGUI\RscTitles\SplashBohemia\bi_logo_small_ca.paa";
			x="SafeZoneX + SafeZoneW / 2 - (33 * (0.01875 * SafezoneH)) / 2";
			y="SafeZoneY +	SafeZoneH / 2 - (25.7 * (0.025 * SafezoneH)) / 2";
			w="32 * (0.01875 * SafezoneH)";
			h="16 * (0.025 * SafezoneH)";
		};
		class PicturePhysXLogo: RscPicture
		{
			idc=1202;
			text="\A3\Ui_f\data\Logos\GameWorks_white_ca.paa";
			x="SafeZoneX + SafeZoneW / 2 + (16.5 * (0.01875 * SafezoneH)) / 2";
			y="SafeZoneY +	SafeZoneH / 2 - (13.6 * (0.025 * SafezoneH)) / 2";
			w="16 * (0.01875 * SafezoneH)";
			h="4 * (0.025 * SafezoneH)";
		};
		class LegalText: RscStructuredText
		{
			idc=-1;
			text="$STR_A3_LEGAL_SPLASH";
			size="0.02 * SafezoneH";
			shadow=0;
			x="SafeZoneX + SafeZoneW / 2 - (50 * (0.01875 * SafezoneH)) / 2";
			y="SafeZoneY +	SafeZoneH - (0.38 * SafezoneH)";
			w="50 * (0.01875 * SafezoneH)";
			h="0.39 * SafezoneH";
			class Attributes
			{
				align="center";
				shadow=0;
			};
		};
	};
	class SplashArma3
	{
		idd=-1;
		movingEnable=0;
		duration=4;
		fadein=1;
		fadeout=1;
		name="$STR_A3_SplashBohemia_0";
		controls[]=
		{
			"Picture",
			"TextPresents"
		};
		class Picture: RscPicture
		{
			text = QPATHTOFOLDER(data\backgrounds\AUC_Credits_co.jpg);
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
		class TextPresents: RscText
		{
			idc=1000;
			text="";
			style=2;
			sizeEx="0.03*SafezoneH";
			shadow=0;
			x="SafeZoneX + SafeZoneW / 2 - (46.5 * 		(0.01875 * SafezoneH)) / 2";
			y="SafeZoneY +	SafeZoneH - (0.505 * SafezoneH)";
			w="48 * 		(0.01875 * SafezoneH)";
			h="0.03 * SafezoneH";
		};
	};
	class SplashCopyright
	{
		idd=-1;
		movingEnable=0;
		duration=3;
		fadein=1;
		fadeout=1;
		name="-";
		controls[]=
		{
			"Picture"
		};
		class Picture: RscPicture
		{
			text = QPATHTOFOLDER(data\backgrounds\AUC_Updates_co.jpg);
			colorText[]={1,1,1,1};
			x="safezoneX";
			y="safezoneY";
			w="safezoneW";
			h="safezoneH";
		};
	};
	class SplashESRB
	{
		onLoad = "(_this # 0) ctrlEnable false;";
	};
	class SplashTagline
	{
		onLoad = "(_this # 0) ctrlEnable false;";
	};
	class RscCredits
	{
		onLoad = "(_this # 0) ctrlEnable false;";
	};
};
class RscDisplayMain: RscStandardDisplay //main menu
{
	enableDisplay = 0;
	class controlsBackground 
    {
        class Background 
        {
            idc = -1;
            type = 0;
            style = 48;
            text = QPATHTOFOLDER(BACKGROUND); // Path to your custom main menu image
            x = "safeZoneX";
            y = "safeZoneY";
            w = "safeZoneW";
            h = "safeZoneH";
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
            font = "RobotoCondensed";
            sizeEx = 0.025;
        };
    };
	class controls 
    {
		delete Spotlight;
		delete Spotlight1;
		delete Spotlight2;
		delete Spotlight3;
		delete BackgroundSpotlightRight;
		delete BackgroundSpotlightLeft;
		delete BackgroundSpotlight;
		delete SpotlightNext;
		delete SpotlightPrev;
		class Logo: RscActivePicture
		{
			text = QPATHTOFOLDER(data\AULOGO_TEST.paa);
			tooltip="Join the official Antistasi Ultimate Discord server!";
			color[]={0.89999998,0.89999998,0.89999998,1};
			colorActive[]={1,1,1,1};
			shadow=0;
			x="0.5 - 	5 * 	(pixelW * pixelGrid * 2)";
			y="safezoneY + (2.75 - 0.25 * 	5) * 	(pixelH * pixelGrid * 2)";
			w="2 * 	5 * 	(pixelW * pixelGrid * 2)";
			h="0.5 * 	5 * 	(pixelH * pixelGrid * 2)";
			url = "https://discord.gg/antistasiultimate";
			onButtonClick="['https://discord.gg/antistasiultimate'] call bis_fnc_executeCode;";
			onSetFocus="(_this select 0) ctrlsettextcolor [1,1,1,1];";
			onKillFocus="(_this select 0) ctrlsettextcolor [0.9,0.9,0.9,1];";
			onLoad="(_this select 0) ctrlshow !(395180 in getDLCs 1)";
		};
		class base_side_btn
        {
			onLoad = "(_this # 0) ctrlEnable false;";
			type = 1;
			idc = -1;
			style = 48;
			x = "safeZoneX + safeZoneW - 0.187";
			y = "safeZoneY + safeZoneH - 0.28";
			w = 0.18;
			h = 0.05;
			text = QPATHTOFOLDER(data\DevB.paa); // No text needed for an image button
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 1};
			font = "RobotoCondensed";
			sizeEx = 0.04;
			colorFocused[] = {1, 1, 1, 0.9};
			colorShadow[] = {0, 0, 0, 0};
			colorBorder[] = {0, 0, 0, 0};
			shadow = 0;
			soundEnter[] = {"", 0.1, 1};
			soundPush[] = {"", 0.1, 1};
			soundClick[] = {"", 0.1, 1};
			soundEscape[] = {"", 0.1, 1};
			colorDisabled[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			colorBackgroundDisabled[] = {0, 0, 0, 0};
			offsetX = 0;
			offsetY = 0;
			offsetPressedX = 0;
			offsetPressedY = 0;
			borderSize = 0;
			onMouseButtonClick = "-";
		};
		class SteamButton1: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			text = QPATHTOFOLDER(data\DevB.paa); // Path to button image
			tooltip = "Steam workshop Mod";
			url = "https://steamcommunity.com/sharedfiles/filedetails/?id=3020755032";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB_Hov.paa""";
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB.paa""";
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB_Hov.paa""";
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB.paa""";
		};
		class GitHubButton2: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			y = "safeZoneY + safeZoneH - 0.34";
			text = QPATHTOFOLDER(data\GitB.paa); // Path to button image
			tooltip="GitHub Page";
			url = "https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB_Hov.paa""";
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB.paa""";
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB_Hov.paa""";
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB.paa""";
		};
		class ServerButton3: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			y = "safeZoneY + safeZoneH - 0.4";
			text = QPATHTOFOLDER(data\ServerB.paa); // No text needed for an image button
			tooltip="Connect to our community server!";
			onMouseButtonClick = "connectToServer ['138.201.62.114', 2402, '1221']";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB_Hov.paa""";
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB.paa""";
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB_Hov.paa""";
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB.paa""";
		};
		class ArmaCreditsButton4: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			x = "safeZoneX + 0.007";
			text = QPATHTOFOLDER(data\ArmaCredits.paa); // No text needed for an image button
			tooltip="ArmA 3 Credits";
			onMouseButtonClick = "if (scriptdone (missionnamespace getvariable ['RscDisplayMain_credits',scriptnull])) then {RscDisplayMain_credits = _this spawn (uinamespace getvariable 'bis_fnc_credits');};";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits_Hov.paa""";
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits.paa""";
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits_Hov.paa""";
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits.paa""";
		};
	};
};