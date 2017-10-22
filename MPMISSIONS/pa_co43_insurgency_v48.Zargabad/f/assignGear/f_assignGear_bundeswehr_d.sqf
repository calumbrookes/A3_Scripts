// F3 - Folk Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "BWA3_acc_LLM01_irlaser";	// IR Laser
_attach2 = "BWA3_acc_LLM01_flash";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor BWA3_muzzle_MP7_snds
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "optic_MRCO";	// Holosight  rhsusf_acc_ACOG2
_scope2 = "optic_Aco_smg";			// MRCO Scope - 1x - 6x optic_MRCO rhsusf_acc_compm4
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x BWA3_optic_20x50
_scope4 = "optic_MRCO"; // MG scope rhsusf_acc_ELCAN
_scope6 = "optic_Aco_smg"; // vehicle crew

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION
/*_Eriflemag1 = "BWA3_30Rnd_556x45_G36";
_EARmag1 = "BWA3_200Rnd_556x45";
_EMATmag1 = "BWA3_Pzf3_IT";
_EMAT1 = "BWA3_Pzf3";
_ERATmag1 = "BWA3_RGW90_HH";
_ERAT1 = "BWA3_RGW90";*/

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "BWA3_G36";
_riflemag = "BWA3_30Rnd_556x45_G36";
_riflemag_tr = "BWA3_30Rnd_556x45_G36_Tracer";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "BWA3_G36K";
_carbinemag = "BWA3_30Rnd_556x45_G36";
_carbinemag_tr = "BWA3_30Rnd_556x45_G36_Tracer";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "BWA3_MP7";
_smgmag = "BWA3_40Rnd_46x30_MP7";
_smgmag_tr = "BWA3_40Rnd_46x30_MP7";	// Has no tracer variant, phase out

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "BWA3_G36_AG";
_glriflemag = "BWA3_30Rnd_556x45_G36";
_glriflemag_tr = "BWA3_30Rnd_556x45_G36_Tracer";
_glmag = "1Rnd_HE_Grenade_shell";
_glmag2 = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "BWA3_P8";
_pistolmag = "BWA3_15Rnd_9x19_P8";

// Grenades
_grenade = "BWA3_DM51A1";
_Mgrenade = "BWA3_DM51A1";
_smokegrenade = "SmokeShell";				// White
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeorange = "BWA3_DM32_Orange";	// Orange
_smokegrenadeyellow = "BWA3_DM32_Yellow";	// Yellow

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "ACE_NVG_Wide";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "BWA3_AssaultPack_Tropen";			// carries 120, weighs 20
_bagmedium = "BWA3_FieldPack_Tropen";				// carries 240, weighs 30
_baglarge =  "BWA3_Kitbag_Tropen"; 			// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "B_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "BWA3_MG4";
_ARmag = "BWA3_200Rnd_556x45";
_ARmag_tr = "BWA3_200Rnd_556x45";	// Mod doesn't have this

// Medium MG - Mod doesn't have this
_MMG = "BWA3_MG5";
_MMGmag = "BWA3_1200Rnd_762x51";
_MMGmag_tr = "BWA3_1200Rnd_762x51";	// Mod doesn't have this

// Rifleman AT
_RAT = "BWA3_RGW90";
_RATmag = "BWA3_RGW90_HH";

// Medium AT
_MAT = "launch_NLAW_F"; //rhs_weap_fgm148
_MATmag1 = "NLAW_F"; //rhs_fgm148_magazine_AT
_MATmag2 = "NLAW_F"; //rhs_fgm148_magazine_AT

// Surface Air
_SAM = "BWA3_Fliegerfaust";
_SAMmag = "BWA3_Fliegerfaust_Mag";

// Sniper
_SNrifle = "BWA3_G28_Standard";
_SNrifleMag = "BWA3_10Rnd_762x51_G28";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["BWA3_Uniform_Tropen","BWA3_Uniform2_Tropen"];
_baseHelmet = ["BWA3_OpsCore_Tropen_Patch","BWA3_OpsCore_Tropen"]; //"BWA3_M92_Tropen"
_baseGlasses = ["rhs_googles_orange"];

// Armored vests
_lightRig = ["BWA3_Vest_Tropen"];
_mediumRig = ["BWA3_Vest_Rifleman1_Tropen"]; 	// default for all infantry classes
_heavyRig = ["BWA3_Vest_Rifleman1_Tropen"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["BWA3_Uniform_Crew_Tropen"];
_crewHelmet = ["BWA3_CrewmanKSK_Tropen_Headset"];
_crewRig = ["BWA3_Vest_Tropen"];
_crewGlasses = ["rhs_googles_clear"];

// Ghillie
_ghillieUniform = ["BWA3_Uniform3_Tropen"];
_ghillieHelmet = [];
_ghillieRig = ["BWA3_Vest_Marksman_Tropen"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["BWA3_Uniform3_Tropen"];
_sfhelmet = ["BWA3_OpsCore_Tropen_Camera"];
_sfRig = ["BWA3_Vest_Marksman_Tropen"];
_sfGlasses = ["BWA3_G_Combat_Clear"];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit linkItem "ItemGPS"; 	// Add and equip a GPS

};


// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_us_army_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Leader_Tropen";
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		//_unit linkItem "ItemGPS";
		["r"] call _backpack;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Leader_Tropen";
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,4];
		_unit addweapon _glrifle;		
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		//_unit linkItem "ItemGPS";
		["r"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Medic_Tropen";
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		//_unit linkItem "ItemGPS";
		["m"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Grenadier_Tropen";
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,4];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		//_unit linkItem "ItemGPS";
		["g"] call _backpack;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Autorifleman_Tropen";
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_ARmag,2];
		_unit addweapon _AR;
		_unit addmagazines [_ARmag,1];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		["ar"] call _backpack;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Autorifleman_Tropen"; 
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MMG;
		["mmg"] call _backpack;
		_attachments = [_scope4];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		["mmgag"] call _backpack;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgg"] call _backpack;

	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgag"] call _backpack;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,8];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;	
		_unit addWeapon "Rangefinder";;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,3];
		["matag"] call _backpack;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hatg"] call _backpack;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hatag"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["mtrg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "Rangefinder";
		["mtrag"] call _backpack;
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		["msamg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,1];
		_unit addweapon _SAM;
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["msamag"] call _backpack;
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hsamg"] call _backpack;
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hsamag"] call _backpack;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		//_unit linkItem "ItemGPS";
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		//_unit addItem "ItemGPS";
		//_unit assignItem "ItemGPS";
		_unit addWeapon "Rangefinder";
		_attachments = [_attach1,_scope6];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		//_unit addItem "ItemGPS";
		//_unit assignItem "ItemGPS";
		["cc"] call _backpack;
		_attachments = [_attach1,_scope6];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		//_unit addItem "ItemGPS";
		//_unit assignItem "ItemGPS";
		_attachments = [_attach1,_scope6];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		//_unit addItem "ItemGPS";
		//_unit assignItem "ItemGPS";
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		["cc"] call _backpack;
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit linkItem _uavterminal;
		_attachments = [];
		["uav"] call _backpack;
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,4];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
		_attachments = [];
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_vestItems = vestItems _unit;
		removeVest _unit;
		_unit addVest "BWA3_Vest_Grenadier_Tropen"; 
		{_unit addItemToVest _x} forEach _vestItems;
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,8];
		_unit addmagazines [_glmag2,4];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,2];
		["g"] call _backpack;
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 8];
		//_unit addMagazineCargoGlobal [_EARmag1, 2];
		
		_unit addItemCargoGlobal ["ToolKit",1];
		_unit addBackpackCargoGlobal [_baglarge,1];
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addWeaponCargoGlobal [_RAT, 1];
		_unit addWeaponCargoGlobal [_MAT, 1];
		_unit addMagazineCargoGlobal [_RATmag, 1];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_MATmag1, 2];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
		_unit addItemCargoGlobal [_medkit, 1];
		
	};
	
	case "v_th":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 8];
		//_unit addMagazineCargoGlobal [_EARmag1, 2];
		
		_unit addItemCargoGlobal ["ToolKit",1];
		_unit addBackpackCargoGlobal [_baglarge,1];
		_unit addWeaponCargoGlobal [_RAT, 1];
		_unit addWeaponCargoGlobal [_MAT, 1];
		_unit addMagazineCargoGlobal [_RATmag, 1];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_MATmag1, 2];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
		_unit addItemCargoGlobal [_medkit, 1];
		_unit addBackpackCargoGlobal ["B_Parachute",20];
	};
	case "v_ths":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 4];
		//_unit addMagazineCargoGlobal [_EARmag1, 1];
		
		_unit addItemCargoGlobal ["ToolKit",1];
		_unit addBackpackCargoGlobal [_baglarge,1];
		_unit addMagazineCargoGlobal [_riflemag, 4];
		_unit addMagazineCargoGlobal [_glriflemag, 4];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_armag, 3];
		_unit addMagazineCargoGlobal [_grenade, 2];
		_unit addMagazineCargoGlobal [_smokegrenade, 2];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 1];
		_unit addMagazineCargoGlobal [_glmag, 2];
		_unit addMagazineCargoGlobal [_glsmokewhite, 2];
		_unit addItemCargoGlobal [_firstaid,2];
		_unit addBackpackCargoGlobal ["B_Parachute",2];
	};
	
// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 40];
		//_unit addMagazineCargoGlobal [_EARmag1, 8];
		//_unit addWeaponCargoGlobal [_ERAT1, 1];
		//_unit addWeaponCargoGlobal [_EMAT1, 2];
		//_unit addMagazineCargoGlobal [_ERATmag1, 1];
		//_unit addMagazineCargoGlobal [_EMATmag1, 2];
		
		_unit addItemCargoGlobal ["ToolKit",1];
		_unit addBackpackCargoGlobal [_baglarge,1];
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addWeaponCargoGlobal [_RAT, 3];
		_unit addWeaponCargoGlobal [_MAT, 3];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 3];
		_unit addMagazineCargoGlobal [_MATmag1, 3];
		_unit addMagazineCargoGlobal [_MATmag2, 3];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_firstaid,8];
		_unit addItemCargoGlobal [_medkit, 2];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 20];
		//_unit addMagazineCargoGlobal [_EARmag1, 5];
		
		_unit addItemCargoGlobal ["ToolKit",1];
		_unit addBackpackCargoGlobal [_baglarge,1];
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addWeaponCargoGlobal [_RAT, 2];
		_unit addWeaponCargoGlobal [_MAT, 2];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_MATmag1, 2];
		_unit addMagazineCargoGlobal [_MATmag2, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,8];
		_unit addItemCargoGlobal [_medkit, 2];
	};
// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_atv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 1];
		
		_unit addMagazineCargoGlobal [_riflemag, 1];
		_unit addMagazineCargoGlobal [_glriflemag, 1];
		_unit addMagazineCargoGlobal [_grenade, 1];
		_unit addMagazineCargoGlobal [_smokegrenade, 2];
		_unit addItemCargoGlobal [_firstaid,1];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 5];
		//_unit addMagazineCargoGlobal [_EARmag1, 2];
		
		_unit addWeaponCargoGlobal [_RAT, 1];
		_unit addWeaponCargoGlobal [_MAT, 1];
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_MATmag1, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addItemCargoGlobal [_firstaid, 6];
		_unit addItemCargoGlobal [_medkit, 1];
};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 20];
		//_unit addMagazineCargoGlobal [_EARmag1, 5];
		//_unit addWeaponCargoGlobal [_ERAT1, 1];
		//_unit addWeaponCargoGlobal [_EMAT1, 2];
		//_unit addMagazineCargoGlobal [_ERATmag1, 1];
		//_unit addMagazineCargoGlobal [_EMATmag1, 2];
		
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addWeaponCargoGlobal [_RAT, 3];
		_unit addWeaponCargoGlobal [_MAT, 6];
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,16];
		_unit addMagazineCargoGlobal [_ratmag, 3];
		_unit addMagazineCargoGlobal [_MATmag1, 6];
		_unit addMagazineCargoGlobal [_MATmag2, 6];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_unit addItemCargoGlobal [_firstaid, 25];
		_unit addItemCargoGlobal [_medkit, 5];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_unit addItemCargoGlobal ["ACE_M26_Clacker",2];
		
		//_unit addMagazineCargoGlobal [_Eriflemag1, 45];
		//_unit addMagazineCargoGlobal [_EARmag1, 15];
		//_unit addWeaponCargoGlobal [_ERAT1, 2];
		//_unit addWeaponCargoGlobal [_EMAT1, 4];
		//_unit addMagazineCargoGlobal [_ERATmag1, 2];
		//_unit addMagazineCargoGlobal [_EMATmag1, 4];
		
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addWeaponCargoGlobal [_RAT, 10];
		_unit addWeaponCargoGlobal [_MAT, 20];
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addMagazineCargoGlobal [_ratmag, 10];
		_unit addMagazineCargoGlobal [_MATmag1, 20];
		_unit addMagazineCargoGlobal [_MATmag2, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addItemCargoGlobal [_firstaid, 50];
		_unit addItemCargoGlobal [_medkit, 10];
		_unit addItemCargoGlobal ["ToolKit",2];
};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	// ACE Standard
	if (f_var_medical == 2) exitWith
		{
			[_unit] execVM "f\ace3\ACE3_MedicalStandardConverter.sqf";
		};
	// ACE Advanced
	if (f_var_medical == 3) exitWith
		{
			[_unit] execVM "f\ace3\ACE3_MedicalAdvancedConverter.sqf";
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;