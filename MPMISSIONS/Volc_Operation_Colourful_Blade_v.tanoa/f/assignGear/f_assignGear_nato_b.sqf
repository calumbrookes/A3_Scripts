// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

// BACKPACK: MEDIC
case "m":
{
	// LOADOUT: MEDIUM
	if (_loadout <= 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_firstaid,6];
		(unitBackpack _unit) addItemCargoGlobal [_medkit,3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 6];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_firstaid,6];
		(unitBackpack _unit) addItemCargoGlobal [_medkit,3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 6];
	};
};

// BACKPACK: GRENADIER (CO/DC/SL/FTL/G)
case "g":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 4];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 4];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 4];
	};
};

// BACKPACK: AR
case "ar":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_ARmag_Tr,2];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
};

// BACKPACK: AAR
case "aar":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_riflemag,2];
		_unit addmagazines [_ARmag,2];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
	};
};

// BACKPACK: RIFLEMAN AT (RAT)
case "rat":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
	};
};

// BACKPACK: DESIGNATED MARKSMAN (DM)
case "dm":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_firstaid,6];
		(unitBackpack _unit) addItemCargoGlobal [_medkit,3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 6];
	};

	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_firstaid,6];
		(unitBackpack _unit) addItemCargoGlobal [_medkit,3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 6];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_firstaid,6];
		(unitBackpack _unit) addItemCargoGlobal [_medkit,3];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 6];
	};
};

// BACKPACK: RIFLEMAN (R)
case "r":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 2];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 2];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 2];
	};
};

// BACKPACK: CARABINEER (CAR)
case "car":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_carbinemag,2];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: MMG GUNNER (MMG)
case "mmg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_MMGmag,1];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
case "mmgag":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_MMGmag,1];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// LOADOUT: HEAVY MG GUNNER (HMGG)
case "hmgg":
{
	_unit addBackpack _baghmgg;
};

// LOADOUT: HEAVY MG ASSISTANT GUNNER (HMGAG)
case "hmgag":
{
	_unit addBackpack _baghmgag;
};

// BACKPACK: MAT GUNNER (MATG)
case "matg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
};

// BACKPACK: MAT ASSISTANT (MATAG)
case "matag":
    {
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
	};
};

// LOADOUT: HEAVY AT GUNNER (HATG)
case "hatg":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 2];
};

// LOADOUT: HEAVY AT ASSISTANT GUNNER (HATAG)
case "hatag":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 2];
};

// BACKPACK: MORTAR GUNNER (MTRG)
case "mtrg":
{
	_unit addBackpack _bagmtrg;
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MTRAG)
case "mtrag":
{
	_unit addBackpack _bagmtrag;
};

// BACKPACK: MEDIUM SAM GUNNER (MSAMG)
case "msamg":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// BACKPACK: MEDIUM SAM ASSISTANT GUNNER (MSAMAG)
case "msamag":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// LOADOUT: HEAVY SAM GUNNER (HSAMG)
case "hsamg":
{
	_unit addBackpack _baghsamg;
};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER (HSAMAG)
case "hsamag":
{
	_unit addBackpack _baghsamag;
};

// BACKPACK: ENGINEER (DEMO)
case "eng":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_satchel,6];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_satchel,6];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_satchel,6];
	};
};

// BACKPACK: ENGINEER (MINES)
case "engm":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,2];
	};
};

// BACKPACK: SUBMACHINEGUNNER (SMG)
case "smg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_smgmag,2];
		_unit addmagazines [_grenade,1];_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,2];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: DIVER (DIV)
case "div":
{
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 4];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellBlue", 4];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
	};
};

// BACKPACK: UAV
case "uav":
{
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellRed", 2];
		(unitBackpack _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
};