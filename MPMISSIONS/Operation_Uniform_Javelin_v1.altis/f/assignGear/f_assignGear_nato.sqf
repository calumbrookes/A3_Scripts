// F3 - Folk ARPS Assign Gear Script - NATO
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
//		dm			- designated marksman
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
//		uav			- UAV operator"
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
_attach1 = "acc_flashlight";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "rhsusf_acc_nt4_black";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "FHQ_optic_ACOG";	// Holosight
_scope2 = "UK3CB_BAF_SpecterLDS_3D";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x

_bipod1 = "bipod_01_F_snd";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1,_scope2]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

_hg_attach1 ="UK3CB_BAF_Flashlight_L131A1"; // flashlight

// Default setup
_hg_attachments= [_hg_attach1]; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "UK3CB_BAF_L85A2_RIS_AFG";
_riflemag = "UK3CB_BAF_30Rnd";
_riflemag_tr = "UK3CB_BAF_30Rnd";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_mk18_grip2";
_carbinemag = "hlc_30rnd_556x45_S";
_carbinemag_tr = "hlc_30rnd_556x45_S";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_01_F";
_smgmag = "30Rnd_45ACP_Mag_SMG_01";
_smgmag_tr = "30Rnd_45ACP_Mag_SMG_01_tracer_green";

// Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_pdw = "hlc_smg_mp5k_PDW";
_pdwmag = "hlc_30Rnd_9x19_B_MP5";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "rhs_weap_mk18_m320";
_glriflemag = "hlc_30rnd_556x45_S";
_glriflemag_tr = "hlc_30rnd_556x45_S";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "3Rnd_UGL_FlareWhite_F";
_glflarered = "3Rnd_UGL_FlareRed_F";
_glflareyellow = "3Rnd_UGL_FlareYellow_F";
_glflaregreen = "3Rnd_UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "UK3CB_BAF_L131A1";
_pistolmag = "UK3CB_BAF_17Rnd_9mm";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";
_IRgren = "B_IR_Grenade";

_bagsmall = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";			// carries 120, weighs 20
_bagmedium = "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B";				// carries 240, weighs 30
_baglarge =  ["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A","UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B","UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C"]; 			// carries 320, weighs 40
_bagmedic = "UK3CB_BAF_B_Bergen_MTP_Medic_L_A"; // Issued to Medics
_bagco = "UK3CB_BAF_B_Bergen_MTP_JTAC_H_A";
_bagdc = "UK3CB_BAF_B_Bergen_MTP_Radio_H_B";
_bagftl = "UK3CB_BAF_B_Bergen_MTP_SL_H_A";
_bageng = ["UK3CB_BAF_B_Bergen_MTP_Engineer_H_A","UK3CB_BAF_B_Bergen_MTP_Sapper_H_A"];
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
_AR = "arifle_MX_SW_F";
_ARmag = "100Rnd_65x39_caseless_mag";
_ARmag_tr = "100Rnd_65x39_caseless_mag_Tracer";

// Medium MG
_MMG = "MMG_02_sand_F";
_MMGmag = "130Rnd_338_Mag";
_MMGmag_tr = "130Rnd_338_Mag";

// NON-DLC ALTERNATIVE:
// _MMG = "LMG_Zafir_F";
// _MMGmag = ""150Rnd_762x54_Box"";
// _MMGmag_tr = ""150Rnd_762x54_Box"_Tracer";

// Marksman rifle
_DMrifle = "srifle_DMR_03_tan_F";
_DMriflemag = "20Rnd_762x51_Mag";

// MAR-10
//_DMrifle = "srifle_DMR_02_F";
//_DMriflemag = "10Rnd_338_Mag";

// Rifleman AT
_RAT = "launch_NLAW_F";
_RATmag = "NLAW_F";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "launch_B_Titan_F";
_SAMmag = "Titan_AA";

// Heavy AT
_HAT = "launch_B_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = "srifle_LRR_F";
_SNrifleMag = "7Rnd_408_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = ["co","dc","ftl"];
_heavy =  ["m"];
_diver = ["div"];
_pilot = ["pp"];
_crew = ["pcc","pc"];
_ghillie = ["sn","sp"];
_specOp = ["eng","dm","ar","aar","rat"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve","UK3CB_BAF_U_CombatUniform_MTP"];
_baseHelmet = ["UK3CB_BAF_H_Beret_PR_PRR"];
_baseGlasses = [];

// Vests
_lightRig = ["UK3CB_BAF_V_Osprey_SL_A","UK3CB_BAF_V_Osprey_SL_B","UK3CB_BAF_V_Osprey_SL_C","UK3CB_BAF_V_Osprey_SL_D"];
_mediumRig = ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_B","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F"]; 	// default for all infantry classes
_heavyRig = ["UK3CB_BAF_V_Osprey_Medic_A","UK3CB_BAF_V_Osprey_Medic_B","UK3CB_BAF_V_Osprey_Medic_C","UK3CB_BAF_V_Osprey_Medic_D"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RN"];
_pilotHelmet = ["UK3CB_BAF_H_PilotHelmetHeli_A"];
_pilotRig = ["V_TacVest_oli"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RN"];
_crewHelmet = [];
_crewRig = ["V_Rangemaster_belt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["MNP_CombatUniform_PPU_A"];
_sfhelmet = ["UK3CB_BAF_H_Beret_SAS_PRR"];
_sfRig = ["MNP_Vest_USMC_Xtreme_A"];
_sfGlasses = [];

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
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_nato_b.sqf";
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
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["gco"] call _backpack;
		_unit linkItem "UK3CB_BAF_HMNVS";
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["gdc"] call _backpack;
		_unit linkItem "UK3CB_BAF_HMNVS";
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
		["m"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["gftl"] call _backpack;
		_unit linkItem "UK3CB_BAF_HMNVS";
	};


// LOADOUT: AUTOMATIC RIFLEMAN // SAS CO
	case "ar":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;					//_COrifle
		_attachments = [_scope1,_silencer1,_attach1];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["ar"] call _backpack;
		_unit linkItem "UK3CB_BAF_HMNVS";
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN // SAS SLs
	case "aar":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;					//_COrifle
		_attachments = [_scope1,_silencer1,_attach1];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		["aar"] call _backpack;
		_unit linkItem "UK3CB_BAF_HMNVS";
	};

// LOADOUT: RIFLEMAN (AT) // SAS MED
	case "rat":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_attachments = [_scope1,_silencer1,_attach1];
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
		["rat"] call _backpack;
	};

// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_attachments = [_scope1,_silencer1,_attach1];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadeblue,4];
		["dm"] call _backpack;
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,1];
		_unit addweapon _MMG;
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		_attachments pushback (_bipod1);
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
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
		_unit addmagazines [_mgrenade,1];
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
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		["hmgag"] call _backpack;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		["matg"] call _backpack;
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		["hatg"] call _backpack;
		_unit addWeapon _HAT;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
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
		_unit addmagazines [_mgrenade,1];
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
		_unit addmagazines [_mgrenade,1];
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
		_unit addmagazines [_mgrenade,1];
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
		_unit addmagazines [_mgrenade,1];
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
		_unit linkItem "ItemGPS";
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Rangefinder";
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["cc"] call _backpack;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_pdwmag,5];
		_unit addweapon _pdw;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_attachments = [];
		_unit linkItem "UK3CB_BAF_HMNVS";
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		this unassignItem "itemmap";
		this removeItem "itemmap"; 
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		this unassignItem "itemmap";
		this removeItem "itemmap"; 
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		["eng"] call _backpack;
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_attachments = [_scope1,_silencer1,_attach1];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadeblue,4];
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		["engm"] call _backpack;
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addmagazines [_riflemag,5];
		_unit addweapon _rifle;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadeblue,4];
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit linkItem _uavterminal;
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
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
		["div"] call _backpack;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_IRgren,4];
		_unit addmagazines [_chemblue,4];
		_unit addmagazines [_chemred,4];
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadeblue,4];
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,3];
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,7];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_mgrenade,3];
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
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_pistolmag,20];
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal [_medkit,5];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_pistolmag,20];
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal [_medkit,5];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_pistolmag,20];
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal [_medkit,5];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_pistolmag,20];
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal [_medkit,5];
};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_pistolmag,20];
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal [_medkit,5];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_pistolmag,20];	
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal [_medkit,5];
};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_nato.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this is an ammobox or vehicle, check medical component settings and if needed run converter script.

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
