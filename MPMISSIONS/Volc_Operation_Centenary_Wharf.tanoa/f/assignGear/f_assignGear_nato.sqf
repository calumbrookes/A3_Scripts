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
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "UK3CB_BAF_Eotech";	// Holosight
_scope2 = "RKSL_optic_LDS";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x

_bipod1 = "bipod_01_F_snd";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Black bipod

// Default setup
_attachments = []; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "UK3CB_BAF_Flashlight_L131A1";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= [_hg_silencer1]; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "UK3CB_BAF_L85A2";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "UK3CB_BAF_L85A2";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "UK3CB_BAF_L22A2";
_smgmag = "UK3CB_BAF_556_30Rnd";
_smgmag_tr = "UK3CB_BAF_556_30Rnd_T";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "UK3CB_BAF_L85A2_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
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
_pistolmag = "UK3CB_BAF_9_17Rnd";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

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

// Backpacks
_bagsmall = ["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A","UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B","UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C","UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"];			// carries 120, weighs 20
_bagmedium = ["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A","UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B","UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C"];				// carries 240, weighs 30
_baglarge =  ["UK3CB_BAF_B_Bergen_MTP_Engineer_H_A","UK3CB_BAF_B_Bergen_MTP_Engineer_L_A"]; 			// carries 320, weighs 40
_bagmortar = "UK3CB_BAF_B_Carryall_MTP";	// mortar ammunition
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
_bagSL = "UK3CB_BAF_B_Bergen_MTP_Radio_L_A";
_bagjtac = "UK3CB_BAF_B_Bergen_MTP_JTAC_L_A";
_bagcc = "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A";
_bagmedic = ["UK3CB_BAF_B_Bergen_MTP_Medic_L_A","UK3CB_BAF_B_Bergen_MTP_Medic_L_B","UK3CB_BAF_B_Bergen_MTP_Medic_H_A","UK3CB_BAF_B_Bergen_MTP_Medic_H_B"];

//TFR RADIO BACKPACK
//Check if TFR is the radio addon is used
if(f_var_radios == 2) then {
	//Designate radio backpack that is to be used.
	_bagradio = "tf_rt1523g";  //Remember to use "" for classnames eg "tf_rt1523g_sage"

	// Unit types you want to give long-range radios if previous is
	// E.G: ["co", "m"] would give the CO and all medics  long-range radios
	_backpackradiotypes = ["co","dc"];

	if(_typeOfUnit in _backpackradiotypes) then {
		_bagsmall = _bagradio;
		_bagmedium = _bagradio;
		_baglarge = _bagradio;
	};
};
// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "UK3CB_BAF_L86A2";
_ARmag = "UK3CB_BAF_556_30Rnd";
_ARmag_tr = "UK3CB_BAF_556_30Rnd_T";

// Medium MG
_MMG = "UK3CB_BAF_L110A3";
_MMGmag = "UK3CB_BAF_556_200Rnd";
_MMGmag_tr = "UK3CB_BAF_556_200Rnd_T";

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
_RAT = "UK3CB_BAF_Javelin_Slung_Tube";
_RATmag = "NLAW_F";

// Medium AT
_MAT = "UK3CB_BAF_Javelin_Slung_Tube";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

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

_mtrhe = "UK3CB_BAF_1Rnd_81mm_Mo_Shells";
_mtrsm = "UK3CB_BAF_1Rnd_81mm_Mo_Smoke_White";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["co"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd","m"];
_ghillie = ["mmgag","mmgg","ar"];
_specOp = ["dc"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM","UK3CB_BAF_U_CombatUniform_MTP_RM"];
_baseHelmet = ["UK3CB_BAF_H_Beret_RM_Bootneck","UK3CB_BAF_H_Beret_RM_Bootneck_PRR","UK3CB_BAF_H_Beret_RM_Bootneck_PRR_Over"];
_baseGlasses = [];

// Vests
_lightRig = ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_B","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F","UK3CB_BAF_V_Osprey_Grenadier_A","UK3CB_BAF_V_Osprey_Grenadier_B"];
_mediumRig = ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_B","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F","UK3CB_BAF_V_Osprey_Grenadier_A","UK3CB_BAF_V_Osprey_Grenadier_B"]; 	// default for all infantry classes
_heavyRig = ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_B","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_F","UK3CB_BAF_V_Osprey_Grenadier_A","UK3CB_BAF_V_Osprey_Grenadier_B"];

// Diver - CO
_diverUniform =  ["UK3CB_BAF_U_RolledUniform_MTP"];
_diverHelmet = ["UK3CB_BAF_H_Beret_RM_Officer_PRR_Over"];
_diverRig = ["UK3CB_BAF_V_PLCE_Webbing_Plate_MTP"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RN"];
_pilotHelmet = ["UK3CB_BAF_H_PilotHelmetHeli_A"];
_pilotRig = ["V_Rangemaster_belt"];
_pilotGlasses = [];

// Crewman - MED
_crewUniform = ["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM","UK3CB_BAF_U_CombatUniform_MTP_RM","UK3CB_BAF_U_Smock_MTP"];
_crewHelmet = ["UK3CB_BAF_H_Beret_RAMC_PRR","UK3CB_BAF_H_Beret_RAMC","UK3CB_BAF_H_Beret_RAMC_PRR_Over","UK3CB_BAF_H_Beret_RAMC_Officer","UK3CB_BAF_H_Beret_RAMC_Officer_PRR","UK3CB_BAF_H_Beret_RAMC_Officer_PRR_Over"];
_crewRig = ["UK3CB_BAF_V_Osprey_Medic_A","UK3CB_BAF_V_Osprey_Medic_B","UK3CB_BAF_V_Osprey_Medic_C","UK3CB_BAF_V_Osprey_Medic_D"];
_crewGlasses = [];

// Ghillie - MMG
_ghillieUniform = ["UK3CB_BAF_U_Smock_MTP"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
_ghillieHelmet = ["UK3CB_BAF_H_Beret_RM_Bootneck","UK3CB_BAF_H_Beret_RM_Bootneck_PRR","UK3CB_BAF_H_Beret_RM_Bootneck_PRR_Over"];
_ghillieRig = ["UK3CB_BAF_V_Osprey_MG_A","UK3CB_BAF_V_Osprey_MG_B"];
_ghillieGlasses = [];

// Spec Op - SL
_sfuniform = ["UK3CB_BAF_U_Smock_MTP"];
_sfhelmet = ["UK3CB_BAF_H_Beret_RM_Officer_PRR_Over","UK3CB_BAF_H_Beret_RM_Officer_PRR","UK3CB_BAF_H_Beret_RM_Officer"];
_sfRig = ["UK3CB_BAF_V_Osprey_SL_A","UK3CB_BAF_V_Osprey_SL_B","UK3CB_BAF_V_Osprey_SL_C","UK3CB_BAF_V_Osprey_SL_D"];
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

	//_unit linkItem _nvg;					// Add and equip the faction's nvg
	_unit addItem _firstaid;				// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";				// Add and equip the map
	_unit linkItem "ItemCompass";			// Add and equip a compass
	_unit linkItem "ItemRadio";				// Add and equip A3's default radio
	_unit linkItem "ItemWatch";				// Add and equip a watch
	_unit linkItem "ItemGPS"; 			// Add and equip a GPS

  // ADD ACE ITEMS
	_unit addItem "ACE_Flashlight_XL50";	// Add a flashlight for ACE map support.
	_unit addItem "ACE_Maptools";

	// Add medical items
	{_unit addItem "ACE_fieldDressing"} forEach [1,2,3,4,5,6,7,8]; // Bandages
	{_unit addItem "ACE_morphine"} forEach [1,2,3,4];
	//{_unit addItem "ACE_epinephrine"} forEach [1,2];
	//{_unit addItem "ACE_bloodIV"} forEach [1,2];

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
		_unit addmagazines [_glriflemag,4];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _rifle;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadegreen,1];
		_unit addWeapon "UK3CB_BAF_Soflam_Laserdesignator";
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
		_unit linkItem "ItemGPS";
		_unit addItem "ACE_microDAGR";
		["g"] call _backpack;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_glriflemag,5];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,5];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenadegreen,1];
		_unit addWeapon "UK3CB_BAF_Soflam_Laserdesignator";
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
		_unit linkItem "ItemGPS";
		_unit addItem "ACE_microDAGR";
		["g"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,11];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _firstaid} forEach [1,2,3,4];
		_unit linkItem "ItemGPS";
		_unit addItem "ACE_microDAGR";
		["m"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,1];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,5];
		_unit addmagazines [_glsmokewhite,1];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_smokegrenadegreen,1];
		_unit addmagazines [_glriflemag,10];
		_unit addWeapon "UK3CB_BAF_Soflam_Laserdesignator";
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
		_unit linkItem "ItemGPS";
		_unit addItem "ACE_microDAGR";
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_riflemag,10];
		_unit addmagazines [_riflemag_tr,5];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_scope2];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,7];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
	};

// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{
		_unit addmagazines [_DMriflemag,10];
		_unit addmagazines [_riflemag_tr,5];
		_unit addweapon _DMrifle;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_attachments = [_attach1,_scope2];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,1];
		_unit addweapon _MMG;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
		_attachments = [_scope1];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,5];
		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
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
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		_unit addWeapon "UK3CB_BAF_Javelin_CLU";
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MAT;
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
		removeHeadgear _unit;
		_unit addHeadgear "UK3CB_BAF_H_Beret_CRArt_PRR";
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		["hatag"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		removeHeadgear _unit;
		_unit addHeadgear "UK3CB_BAF_H_Beret_CRArt_PRR";
		_unit addmagazines [_carbinemag,2];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addItem "ACE_RangeTable_82mm";
		["mtrag"] call _backpack;
		this addWeapon "UK3CB_BAF_L16";

	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		removeHeadgear _unit;
		_unit addHeadgear "UK3CB_BAF_H_Beret_CRArt_PRR";
		_unit addmagazines [_carbinemag,2];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addItem "ACE_RangeTable_82mm";
		["mtrag"] call _backpack;
		this addWeapon "UK3CB_BAF_L16_Tripod";
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		["msamg"] call _backpack;
		removeHeadgear _unit;
		_unit addHeadgear "UK3CB_BAF_H_Beret_CRArt_PRR";
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
		removeHeadgear _unit;
		_unit addHeadgear "UK3CB_BAF_H_Beret_CRArt_PRR";
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		["msamag"] call _backpack;
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
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
		_unit addItem "ACE_Kestrel";
		["none"] call _backpack;
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
		_unit addItem "ACE_microDAGR";
		["none"] call _backpack;
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
		["none"] call _backpack;
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
		["none"] call _backpack;
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["none"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _uavterminal;
		["cc"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		["none"] call _backpack;
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		_unit addItem "ACE_M26_Clacker";
		_unit addItem "ACE_DefusalKit";
		_unit addItem "ACE_wirecutter";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,7];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		_unit addItem "ACE_M26_Clacker";
		_unit addItem "ACE_DefusalKit";
		_unit addItem "ACE_wirecutter";
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		removeHeadgear _unit;
		_unit addHeadgear "UK3CB_BAF_H_Beret_Signals_PRR_Over";
		_unit addmagazines [_riflemag,5];
		_unit addweapon _rifle;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit linkItem _uavterminal;
		["uav"] call _backpack;
		_unit addWeapon "UK3CB_BAF_Soflam_Laserdesignator";
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

		_unit addmagazines [_riflemag_tr,2];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,3];
		_unit addmagazines [_riflemag,10];
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
	case "veh_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
		_unit addItemCargoGlobal ["ACE_morphine", 10];
		_unit addItemCargoGlobal ["ACE_epinephrine", 10];
		_unit addItemCargoGlobal ["ACE_bloodIV", 5];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "veh_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_grenade, 6];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
		_unit addItemCargoGlobal ["ACE_morphine", 10];
		_unit addItemCargoGlobal ["ACE_epinephrine", 10];
		_unit addItemCargoGlobal ["ACE_bloodIV", 5];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "veh_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 10];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 10];
		_unit addItemCargoGlobal ["ACE_morphine", 2];
		_unit addItemCargoGlobal ["ACE_epinephrine", 2];
		_unit addItemCargoGlobal ["ACE_bloodIV", 2];
	};

// CARGO: DRONE MEDICAL - room for basically fuck all
	case "veh_drm":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal ["ACE_fieldDressing", 10];
		_unit addItemCargoGlobal ["ACE_morphine", 2];
		_unit addItemCargoGlobal ["ACE_epinephrine", 2];
		_unit addItemCargoGlobal ["ACE_bloodIV", 10];
	};

// CARGO: DRONE CARGO - room for even less than fuck all
	case "veh_drc":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal ["Laserbatteries", 2];
		_unit addWeaponCargoGlobal ["UK3CB_BAF_Soflam_Laserdesignator",1];
		_unit addItemCargoGlobal [_uavterminal,1];
		_unit addItemCargoGlobal ["ACRE_PRC152",1];
	};


// CARGO: DRONE CARGO - room for even less than fuck all
	case "veh_lcu":
	{
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 10];
		_unit addMagazineCargoGlobal [_grenade, 2];
		_unit addMagazineCargoGlobal [_smokegrenade, 2];
		_unit addMagazineCargoGlobal [_smokegrenadegreen,2];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 10];
		_unit addItemCargoGlobal ["ACE_morphine", 5];
		_unit addItemCargoGlobal ["ACE_epinephrine", 5];
		_unit addItemCargoGlobal ["ACE_bloodIV", 5];
		_unit addMagazineCargoGlobal ["Laserbatteries", 10];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_mgrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
		_unit addItemCargoGlobal ["ACE_morphine", 10];
		_unit addItemCargoGlobal ["ACE_epinephrine", 10];
		_unit addItemCargoGlobal ["ACE_bloodIV", 5];
};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,16];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_mgrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 100];
		_unit addItemCargoGlobal ["ACE_morphine", 50];
		_unit addItemCargoGlobal ["ACE_epinephrine", 25];
		_unit addItemCargoGlobal ["ACE_bloodIV", 10];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addMagazineCargoGlobal [_ratmag, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_mgrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addItemCargoGlobal ["ACE_fieldDressing", 150];
		_unit addItemCargoGlobal ["ACE_morphine", 75];
		_unit addItemCargoGlobal ["ACE_epinephrine", 50];
		_unit addItemCargoGlobal ["ACE_bloodIV", 25];

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

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
