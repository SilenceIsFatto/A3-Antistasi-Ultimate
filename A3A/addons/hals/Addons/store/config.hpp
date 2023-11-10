/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	};

#define MAGAZINE_STOCK 200
#define LAUNCHER_STOCK 15
#define PISTOL_STOCK 50
#define RIFLE_STOCK 20
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	containerTypes[] = {"LandVehicle", "Air", "Ship", "ReammoBox_F"};
	containerRadius = 30;
	sellFactor = 0.5;
	debug = 0;

	class categories 
	{
		#include "config\3cbbaf.hpp"
		#include "config\3cbf.hpp"
		#include "config\3cbfcw.hpp"
		#include "config\aegis.hpp"
		#include "config\bwa.hpp"
		#include "config\csa38.hpp"
		#include "config\cup.hpp"
		#include "config\cw.hpp"
		#include "config\empire.hpp"
		#include "config\ffaa.hpp"
		#include "config\fwa.hpp"
		#include "config\gm.hpp"
		#include "config\ifa.hpp"
		#include "config\italy.hpp"
		#include "config\niarms.hpp"
		#include "config\optre.hpp"
		#include "config\pla.hpp"
		#include "config\rhs.hpp"
		#include "config\scion.hpp"
		#include "config\sfp.hpp"
		#include "config\sma.hpp"
		#include "config\spearhead.hpp"
		#include "config\tow.hpp"
		#include "config\unsung.hpp"
		#include "config\vanilla.hpp"
		#include "config\vn.hpp"
		#include "config\wrs.hpp"
		#include "config\ws.hpp"
		#include "config\braf.hpp"
	};

	class stores 
	{
		class vanilla 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflesVanilla", 
				"sniperRiflesVanilla", 
				"mgVanilla",
				"smgVanilla", 
				"magazinesVanilla", 
				"opticsVanilla", 
				"muzzlesVanilla", 
				"underbarrelVanilla", 
				"pointersVanilla", 
				"navigationVanilla", 
				"miscVanilla"
			};
		};

		class ws 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflesWs",
				"magazinesWs"
			};
		};

		class aegis 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsAegis", 
				"launchersAegis", 
				"riflesAegis", 
				"sniperRiflesAegis", 
				"mgAegis",
				"smgAegis", 
				"magazinesAegis"
			};
		};

		class rhs 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsRhs", 
				"launchersRhs", 
				"riflesRhs", 
				"sniperRiflesRhs", 
				"specialWeaponsRhs",
				"mgRhs", 
				"smgRhs", 
				"launcherMagazinesRhs", 
				"magazinesRhs", 
				"opticsRhs", 
				"muzzlesRhs", 
				"underbarrelRhs", 
				"pointersRhs", 
				"navigationRhs", 
				"miscRhs"
			};
		};

		class 3cbf 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handguns3cbf", 
				"launchers3cbf", 
				"rifles3cbf", 
				"sniperRifles3cbf", 
				"mg3cbf", 
				"smg3cbf", 
				"additionalMuzzles3cbf",
				"additionalScopes3cbf",
				"additionalMagazines3cbf"
			};
		};

		class 3cbfcw
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handguns3cbfcw",
				"smg3cbfcw",
				"rifles3cbfcw",
				"sniperRifles3cbfcw",
				"mg3cbfcw",
				"specialWeapons3cbfcw",
				"launchers3cbf",
				"launcherMagazines3cbfcw",
				"navigation3cbfcw",
				"underbarrel3cbfcw",
				"pointers3cbfcw",
				"muzzles3cbfcw",
				"optics3cbfcw",
				"magazines3cbfcw",
				"misc3cbfcw"
			};
		};
		
		class cw
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunscw",
				"smgcw",
				"mgcw",
				"riflescw",
				"sniperriflescw",
				"launcherscw",
				"launchermagazinescw",
				"riflegrenadescw",
				"muzzlescw",
				"magazinescw", 
				"pointerscw",
				"specialweaponscw",
				"misccw",
				"opticscw",
				"underbarrelcw"
			};
		};
		
		class emp
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsemp",
				"smgemp",
				"mgemp",
				"riflesemp",
				"sniperriflesemp",
				"launchersemp",
				"launchermagazinesemp",
				"magazinesemp",
				"opticsemp"

			};
		};

		class vn
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsvn",
				"smgvn",
				"mgvn",
				"riflesvn",
				"sniperriflesvn",
				"launchersvn",
				"specialWeaponsvn",
				"launchermagazinesvn",
				"riflegrenadesvn",
				"muzzlesvn",
				"pointersvn",
				"opticsvn",
				"underbarrelvn",
				"magazinesvn",
				"miscvn"
			};
		};
		
		class cup		
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
			"handgunsCup", 
			"launchersCup", 
			"riflesCup", 
			"sniperRiflesCup",
			"specialWeaponsCup", 
			"mgCup", 
			"smgCup", 
			"launcherMagazinesCup", 
			"magazinesCup", 
			"opticsCup", 
			"muzzlesCup", 
			"underbarrelCup", 
			"pointersCup", 
			"navigationCup", 
			"miscCup"
			};
		};

		class ww2mod
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsifaa",
				"smgifaa",
				"mgifaa",
				"riflesifaa",
				"sniperriflesifaa",
				"launchersifaa",
				"launchermagazinesifaa",
				"riflegrenadesifaa",
				"muzzlesifaa",
				"magazinesifaa", 
				"pointersifaa",
				"specialweaponsifaa",
				"miscifaa",
				"opticsifaa",
				"underbarrelifaa"
			};
		};

		class ww2cdlc
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsspe",
				"smgspe",
				"mgspe",
				"riflesspe",
				"sniperriflesspe",
				"launchersspe",
				"launchermagazinesspe",
				"riflegrenadesspe",
				"muzzlesspe",
				"magazinesspe", 
				"pointersspe",
				"specialweaponsspe",
				"miscspe",
				"underbarrelspe"
			};
		};
		
		class unsstore
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsuns",
				"smguns",
				"mguns",
				"riflesuns",
				"sniperriflesuns",
				"launchersuns",
				"launchermagazinesuns",
				"riflegrenadesuns",
				"muzzlesuns",
				"magazinesuns", 
				"pointersuns",
				"specialweaponsuns",
				"miscuns",
				"opticsuns",
				"underbarreluns"
			};
		};
		
		class optre
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "handgunshalo",
			      "smghalo",
			      "mghalo",
			      "rifleshalo",
			      "sniperrifleshalo",
			      "launchershalo",
			      "launchermagazineshalo",
			      "riflegrenadeshalo",
			      "muzzleshalo",
			      "magazineshalo", 
			      "pointershalo",
			      "specialweaponshalo",
			      "mischalo",
			      "opticshalo",
			      "underbarrelhalo"
			};
		};
		
		class ffaastock
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "handgunsffaa",
			      "smgffaa",
			      "mgffaa",
			      "riflesffaa",
			      "sniperriflesffaa",
			      "launchersffaa",
			      "muzzlesffaa",
			      "magazinesffaa", 
			      "pointersffaa",
			      "opticsffaa",
			      "underbarrelffaa"
			};
		};
		
		class italystock
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "handgunsitaly",
			      "mgitaly",
			      "riflesitaly",
			      "sniperriflesitaly",
			      "launchersitaly",
			      "launchermagazinesitaly",
			      "muzzlesitaly",
			      "magazinesitaly", 
			      "pointersitaly",
			      "specialweaponsitaly",
			      "opticsitaly",
			      "underbarrelitaly"
			};
		};
		
		class sfpstock
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "handgunsswe",
			      "smgswe",
			      "mgswe",
			      "riflesswe",
			      "sniperriflesswe",
			      "launchersswe",
			      "launchermagazinesswe",
			      "magazinesswe", 
			      "pointersswe",
			      "specialweaponsswe",
			      "opticsswe",
			      "underbarrelswe"
			};
		};
		
		class plastock
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "mgpla",
			      "riflespla",
			      "sniperriflespla",
			      "launcherspla",
			      "launchermagazinespla",
			      "magazinespla"
			};
		};
		
		class bwastock
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "handgunsbwa",
			      "smgbwa",
			      "mgbwa",
			      "riflesbwa",
			      "sniperriflesbwa",
			      "launchersbwa",
			      "launchermagazinesbwa",
			      "muzzlesbwa",
			      "magazinesbwa", 
			      "pointersbwa",
			      "opticsbwa",
			      "underbarrelbwa"
			};
		};
		
		class 3cbbafstock
		{
		  displayName = $STR_ARMS_DEALER_STORE;
		  categories[] = {
			      "handguns3cbbaf",
			      "smg3cbbaf",
			      "mg3cbbaf",
			      "rifles3cbbaf",
			      "sniperrifles3cbbaf",
			      "launchers3cbbaf",
			      "riflegrenades3cbbaf",
			      "muzzles3cbbaf",
			      "magazines3cbbaf", 
			      "pointers3cbbaf",
			      "specialweapons3cbbaf",
			      "optics3cbbaf",
			      "underbarrel3cbbaf"
			};
		};
		
		class globmob 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsgm", 
				"riflesgm", 
				"mggm",
				"sniperRiflesgm", 
				"smggm", 
				"launchersgm", 
				"launcherMagazinesgm", 
				"opticsgm", 
				"pointersgm", 
				"muzzlesgm", 
				"magazinesgm",
				"underbarrelgm", 
				"miscgm"
			};
		};
		
		class niarms 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflesniarms", 
				"mgniarms",
				"sniperRiflesniarms", 
				"smgniarms", 
				"opticsniarms", 
				"pointersniarms", 
				"muzzlesniarms", 
				"magazinesniarms",
				"underbarrelniarms"
			};
		};
		
		class fwa 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflesfwa", 
				"mgfwa",
				"sniperRiflesfwa", 
				"smgfwa", 
				"opticsfwa", 
				"muzzlesfwa", 
				"magazinesfwa",
				"underbarrelfwa"
			};
		};
		
		class tow 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflestow", 
				"mgtow",
				"opticstow", 
				"muzzlestow", 
				"magazinestow",
				"underbarreltow"
			};
		};
		
		class sma 
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflessma", 
				"mgsma",
				"opticssma", 
				"muzzlessma", 
				"magazinessma",
				"underbarrelsma"
			};
		};
		
		class csa38
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunscsa", 
				"smgcsa",
				"mgcsa", 
				"riflescsa", 
				"sniperriflescsa",
				"muzzlescsa",
				"magazinescsa", 
				"launcherscsa"
			};
		};
		class scion
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflesScion", 
				"magazinesriflesScion",
				"sniperRiflesScion", 
				"magazinessniperRiflesScion", 
				"opticsScion"
			};
		};
		class wrs
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"riflesWRS", 
				"magazinesriflesWRS",
				"sniperRiflesWRS", 
				"magazinessniperRiflesWRS"
			};
		};
		class brafstock		
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsBraf", 
				"launchersBraf", 
				"riflesBraf", 
				"sniperRiflesBraf",
				"specialWeaponsBraf", 
				"mgBraf", 
				"smgBraf", 
				"launcherMagazinesBraf", 
				"magazinesBraf", 
				"opticsBraf", 
				"muzzlesBraf",  
				"pointersBraf", 
				"navigationBraf"
			};
		};
	};
};
