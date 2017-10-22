if (!isServer) exitWith {};

waituntil {!isNil "c_var_addons"};

_thecache = _this select 0;

clearMagazineCargoGlobal _thecache;
clearWeaponCargoGlobal _thecache;
clearItemCargoGlobal _thecache;
clearbackpackcargoGlobal _thecache;

if (isNil "c_var_addons" || {c_var_addons == 0}) then {
	_thecache addWeaponCargoGlobal ["arifle_Katiba_C_F", 2];
	_thecache addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 12];
	_thecache addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 4];
	_thecache addWeaponCargoGlobal ["arifle_TRG21_GL_F", 2];
	_thecache addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 12];
	_thecache addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green", 4];
	_thecache addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 6];
	_thecache addWeaponCargoGlobal ["LMG_Zafir_F", 1];
	_thecache addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
	_thecache addWeaponCargoGlobal ["launch_RPG32_F", 2];
	_thecache addMagazineCargoGlobal ["RPG32_F", 2];
	//_thecache addWeaponCargoGlobal ["launch_O_Titan_F", 1]; //remind fallu
	//_thecache addMagazineCargoGlobal ["Titan_AA", 1];
	
	_thecache addMagazineCargoGlobal ["HandGrenade", 4];
	_thecache addMagazineCargoGlobal ["SmokeShell", 4];
	_thecache addItemCargoGlobal ["FirstAidKit",8];
	_thecache addItemCargoGlobal ["Medikit",1];
	_thecache addItemCargoGlobal ["ACE_NVG_Gen1",4];
	_thecache addBackpackCargoGlobal ["B_FieldPack_khk",2];
	_thecache addMagazineCargoGlobal ["APERSMine_Range_Mag", 1]; //REMIND TAKISTAN
	_thecache addMagazineCargoGlobal ["APERSMine_Range_Mag", 1];
	_thecache addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green", 40];
} else {

	_thecache addWeaponCargoGlobal ["hlc_rifle_akm", 1];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_b_ak", 6];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_t_ak", 2];
	_thecache addWeaponCargoGlobal ["hlc_rifle_ak47", 1];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_b_ak", 6];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_t_ak", 2];
	_thecache addWeaponCargoGlobal ["hlc_rifle_aks74_GL", 2];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_b_ak", 12];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_t_ak", 4];
	_thecache addMagazineCargoGlobal ["hlc_VOG25_AK", 6];
	_thecache addWeaponCargoGlobal ["hlc_rifle_rpk", 1];
	_thecache addMagazineCargoGlobal ["hlc_75Rnd_762x39_m_rpk", 4];
	//_thecache addWeaponCargoGlobal ["UK3CB_BAF_AT4_AP_Launcher", 2];
	_thecache addWeaponCargoGlobal ["rhs_weap_rpg7", 2];
	_thecache addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag", 4];
	//_thecache addWeaponCargoGlobal ["launch_RPG32_F", 2];
	//_thecache addMagazineCargoGlobal ["RPG32_F", 2];
	//_thecache addWeaponCargoGlobal ["rhs_weap_igla", 1]; //remind fallu
	//_thecache addMagazineCargoGlobal ["rhs_mag_9k38_rocket", 1];
	//_thecache addWeaponCargoGlobal ["rhs_weap_fim92", 1];
	//_thecache addMagazineCargoGlobal ["rhs_fim92_mag", 1];  //remind fallu 2
	
	_thecache addMagazineCargoGlobal ["HandGrenade", 4];
	_thecache addMagazineCargoGlobal ["SmokeShell", 4];
	_thecache addItemCargoGlobal ["FirstAidKit",8];
	_thecache addItemCargoGlobal ["Medikit",1];
	_thecache addItemCargoGlobal ["ACE_NVG_Gen1",4];
	_thecache addBackpackCargoGlobal ["rhs_sidor",2];
	_thecache addMagazineCargoGlobal ["IEDUrbanSmall_Remote_Mag", 1]; //REMIND TAKISTAN
	_thecache addMagazineCargoGlobal ["IEDLandSmall_Remote_Mag", 1];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_545x39_t_ak", 40];
};	

[]spawn {
uisleep 1800;
[Ecrate] execVM "c\Ecratefill.sqf";
};