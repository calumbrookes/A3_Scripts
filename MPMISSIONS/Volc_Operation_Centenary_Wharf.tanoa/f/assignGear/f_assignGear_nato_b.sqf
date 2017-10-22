// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

// BACKPACK: MEDIC
case "m":
{
	// LOADOUT: MEDIUM
	if (_loadout <= 1) then {

		_unit addBackpack (_bagmedic call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);

		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 25];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 15];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine",   15];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_bloodIV", 4];

	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {

		_unit addBackpack (_bagmedic call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);

		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 6];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_fieldDressing", 25];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 15];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine",   15];
		(unitBackpack _unit) addItemCargoGlobal ["ACE_bloodIV", 4];
	};
};

// BACKPACK: GRENADIER (CO/DC/SL/FTL/G)
case "g":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagSL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		_unit addmagazines [_glriflemag,2];
		_unit addmagazines [_glmag,1];
		_unit addmagazines [_glsmokewhite,1];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_smokegrenade,1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagSL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagSL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: AR
case "ar":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack (_bagsmall call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 15];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 10];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack (_bagmedium call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 8];
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
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_tr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
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
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
	};

	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];

	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: RIFLEMAN (R)
case "r":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
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
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack (_bagsmall call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack (_bagsmall call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
	};
};

// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
case "mmgag":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addmagazines [_MMGmag,1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack (_bagsmall call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack (_bagmedium call BIS_fnc_selectRandom);
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 4];
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
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	};
};

// BACKPACK: MAT ASSISTANT (MATAG)
case "matag":
    {
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
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
	_unit addBackpack _bagmortar;
	(unitBackpack _unit) addMagazineCargoGlobal [_mtrhe, 6];
};

// BACKPACK: MORTAR GUNNER (MTRG)
case "mtrg":
{
	_unit addBackpack _bagmortar;
	(unitBackpack _unit) addMagazineCargoGlobal [_mtrhe, 2];
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MTRAG)
case "mtrag":
{
	_unit addBackpack _bagmortar;
	(unitBackpack _unit) addMagazineCargoGlobal [_mtrhe, 2];
};

// BACKPACK: MEDIUM SAM GUNNER (MSAMG)
case "msamg":
{
	_unit addBackpack (_baglarge call BIS_fnc_selectRandom);
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// BACKPACK: MEDIUM SAM ASSISTANT GUNNER (MSAMAG)
case "msamag":
{
	_unit addBackpack (_baglarge call BIS_fnc_selectRandom);
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
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,4];
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
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: UAV
case "uav":
{
		_unit addBackpack _bagjtac;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack (_bagsmall call BIS_fnc_selectRandom);
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
};

case "none":
{
	if(_typeOfUnit in _backpackradiotypes) then {
		_unit addBackpack _bagradio;
		clearMagazineCargoGlobal (unitBackpack _unit);
	};
};
