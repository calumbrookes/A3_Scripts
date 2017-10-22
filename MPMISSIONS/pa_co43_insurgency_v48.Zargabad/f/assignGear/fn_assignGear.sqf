// F3 - Folk Assign Gear Script (Server-side)
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_faction","_typeofUnit","_unit"];

// ====================================================================================

// DETECT unit FACTION
// The following code detects what faction the unit's slot belongs to, and stores
// it in the private variable _faction. It can also be passed as an optional parameter.

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;

_faction = toLower (faction _unit);
if(count _this > 2) then
{
  _faction = toLower (_this select 2);
};

// ====================================================================================

// INSIGNIA
// This block will give units insignia on their uniforms.
if (isPlayer _unit) then {
[_unit,_typeofUnit] spawn {
	#include "f_assignInsignia.sqf"
};};
// ====================================================================================

// DECIDE IF THE SCRIPT SHOULD RUN
// Depending on locality the script decides if it should run

if !(local _unit) exitWith {};

// ====================================================================================

// SET A PUBLIC VARIABLE
// A public variable is set on the unit, indicating their type. This is mostly relevant for the F3 respawn component

_unit setVariable ["f_var_assignGear",_typeofUnit,true];

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS 2
// Used by the faction-specific scripts

private ["_attach1","_attach2","_silencer1","_silencer2","_scope1","_scope2","_scope3","_bipod1","_bipod2","_attachments","_silencer","_hg_silencer1","_hg_scope1","_hg_attachments","_rifle","_riflemag","_riflemag_tr","_carbine","_carbinemag","_carbinemag_tr","_smg","_smgmag","_smgmag_tr","_diverWep","_diverMag1","_diverMag2","_glrifle","_glriflemag","_glriflemag_tr","_glmag","_glsmokewhite","_glsmokegreen","_glsmokered","_glflarewhite","_glflarered","_glflareyellow","_glflaregreen","_pistol","_pistolmag","_grenade","_Mgrenade","_smokegrenade","_smokegrenadegreen","_firstaid","_medkit","_nvg","_uavterminal","_chemgreen","_chemred","_chemyellow","_chemblue","_bagsmall","_bagmedium","_baglarge","_bagmediumdiver","_baguav","_baghmgg","_baghmgag","_baghatg","_baghatag","_bagmtrg","_bagmtrag","_baghsamg","_baghsamag","_AR","_ARmag","_ARmag_tr","_MMG","_MMGmag","_MMGmag_tr","_Tracer","_DMrifle","_DMriflemag","_RAT","_RATmag","_MAT","_MATmag1","_MATmag2","_HAT","_HATmag1","_HATmag2","_SAM","_SAMmag","_SNrifle","_SNrifleMag","_ATmine","_satchel","_APmine1","_APmine2","_light","_heavy","_diver","_pilot","_crew","_ghillie","_specOp","_baseUniform","_baseHelmet","_baseGlasses","_lightRig","_mediumRig","_heavyRig","_diverUniform","_diverHelmet","_diverRig","_diverGlasses","_pilotUniform","_pilotHelmet","_pilotRig","_pilotGlasses","_crewUniform","_crewHelmet","_crewRig","_crewGlasses","_ghillieUniform","_ghillieHelmet","_ghillieRig","_ghillieGlasses","_sfuniform","_sfhelmet","_sfRig","_sfGlasses","_typeofUnit","_unit","_isMan","_backpack","_typeofBackPack","_loadout","_COrifle","_mgrenade","_DCrifle","_FTLrifle","_armag","_ratmag","_typeofunit"];

// ====================================================================================

// This variable simply tracks the progress of the gear assignation process, for other
// scripts to reference.

_unit setVariable ["f_var_assignGear_done",false,true];

// ====================================================================================

// DEBUG
if (f_var_debugMode == 1) then
{
	_unit sideChat format ["DEBUG (assignGear.sqf): unit faction: %1",_faction];
};

// ====================================================================================

// ====================================================================================

// GEAR: BLUFOR > NATO
// The following block of code executes only if the unit is in a NATO slot; it
// automatically includes a file which contains the appropriate equipment data.

waitUntil{!isNil "c_var_addons"};
waitUntil{!isNil "c_var_gear"};


if (!(_unit isKindOf "CAManBase")) then {
	if (c_var_addons == 0) then { //no addons
	//if (true) then { //no addons
		#include "f_assignGear_nato.sqf";
	} else { //use addons
		switch (c_var_gear) do
		{
			case 0:
				{
					#include "f_assignGear_nato.sqf"; 
				};
			case 1:
				{
					#include "f_assignGear_us_delta_g.sqf"; 
				};
			case 2:
				{
					#include "f_assignGear_us_marine_rhs.sqf"; 
				};
			case 3:
				{
					#include "f_assignGear_uk.sqf"; 
				};
			case 4:
				{
					#include "f_assignGear_rus.sqf"; 
				};
		};
	};
} else {



if (_faction == "blu_f") then {
	/*_loadout1 = 0;
	if ( (vehicleVarName _unit) find "ASL" > 0) then {
	_loadout1 = 0;
	};

	if ( (vehicleVarName _unit) find "BSL" > 0) then {
	_loadout1 = 1;
	};

	if ( (vehicleVarName _unit) find "CSL" > 0) then {
	_loadout1 = 2;
	};

	if ( (vehicleVarName _unit) find "DSL" > 0) then {
	_loadout1 = 3;
	};

	if ( (vehicleVarName _unit) find "CO" > 0) then {
	_loadout1 = 4;
	};*/

	if (c_var_addons == 0 || c_var_gear == 0) then { //no addons
	//if (true) then { //no addons
			#include "f_assignGear_nato.sqf"; 
	} else { //use addons
		if (c_var_gear == 1) then {
			#include "f_assignGear_us_delta_g.sqf"; 
		};
		if (c_var_gear == 2) then {
			#include "f_assignGear_us_marine_rhs.sqf"; 
		};
		if (c_var_gear == 3) then {
			#include "f_assignGear_uk.sqf"; 
		};
		if (c_var_gear == 4) then {
			#include "f_assignGear_rus.sqf"; 
		};
	}; 
};

// ====================================================================================

// GEAR: OPFOR > CSAT
// The following block of code executes only if the unit is in a CSAT slot; it
// automatically includes a file which contains the appropriate equipment data.

//no addons
if (_faction == "opf_f" ||  _faction == "OPF_G_F" ) then {
	if (c_var_addons == 0) then { //no addons
		#include "f_assignGear_csat.sqf"
	} else {
		#include "f_assignGear_insurgent_des.sqf" //remind fallu
	};
};
// ====================================================================================

// GEAR: INDEPEDENT > AAF
// The following block of code executes only if the unit is in a AAF slot; it
// automatically includes a file which contains the appropriate equipment data.

if(_faction == "ind_f") then {
	if (c_var_addons == 0) then { //no addons
		#include "f_assignGear_csat.sqf"
	} else {
		#include "f_assignGear_mec.sqf";
	};
	
};

// ====================================================================================

// GEAR: FIA
// The following block of code executes only if the unit is in a FIA slot (any faction); it
// automatically includes a file which contains the appropriate equipment data.

if (_faction in ["blu_g_f","ind_g_f"]) then {
	if (c_var_addons == 0) then { //no addons
		#include "f_assignGear_csat.sqf"
	} else {
		#include "f_assignGear_mec.sqf";
	};
};

};

// ====================================================================================

// GEAR: Modded factions
// KEEP COMMENTED OUT IF NOT USING
// DO NOT FORGET TO COPY OVER .SQF FILES
/*
if (_faction == "rhs_faction_vdv") then {
	TF_defaultEastBackpack = "tf_mr3000_rhs";
	#include "f_assignGear_vdv.sqf";
};
*/
// ====================================================================================

// This variable simply tracks the progress of the gear assignation process, for other
// scripts to reference.

_unit setVariable ["f_var_assignGear_done",true,true];


// ====================================================================================
// DEBUG

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

if (isNil "_carbine") then { //_carbine should exist unless no faction has been called
	player globalchat format ["DEBUG (assignGear.sqf): Faction %1 is not defined. unit: %2",_faction,_unit];
} else {
 	if (f_var_debugMode == 1) then	{
		player sideChat format ["DEBUG (assignGear.sqf): Gear for %1: %1 slot selected.",_unit,_faction,_typeofUnit];
	};
};

// ====================================================================================