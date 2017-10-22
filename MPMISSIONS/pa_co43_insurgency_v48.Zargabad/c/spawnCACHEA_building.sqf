// _pos is where ai are spawned, _area is where ai are headed _num1 is min num and _num2 is max num
// call with _instance = [town1, attackarea, 1, 3] execVM "retaliate.sqf";
//if (!isserver) exitwith {};

private ["_thecache","_pos,""_tmp","_min","_max","_h","_cachebuilding","_marker","_selectedC"];

//hint format["32 o:%1 p:%2 pl:%3", (_o),(count _poslist), _poslist];sleep 4;
_pos = _this select 0;
//_chamount = _this select 1;
//cachelist = []; //list of units created

if (isnil "allCaches") then {allCaches = [];};
if (isnil "liveCaches") then {liveCaches = 0;};

liveCaches = liveCaches + 1;
_thecache = createVehicle ["Box_FIA_Support_F", getMarkerPos _pos, [], 0, "NONE"];
_thecache allowdamage false;
_thecache addEventHandler ["killed", {_this execVM "c\cacheDeath.sqf"}];

	clearWeaponCargoGlobal _thecache;
	clearMagazineCargoGlobal _thecache;
	clearItemCargoGlobal _thecache;
	clearBackpackCargoGlobal _thecache;
	
if (isNil "c_var_addons" || {c_var_addons == 0}) then {
	_thecache addWeaponCargoGlobal ["arifle_Katiba_C_F", 4];
	_thecache addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 24];
	_thecache addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 8];
	_thecache addWeaponCargoGlobal ["arifle_TRG21_GL_F", 2];
	_thecache addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 12];
	_thecache addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green", 4];
	_thecache addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 6];
	_thecache addWeaponCargoGlobal ["LMG_Zafir_F", 1];
	_thecache addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
	//_thecache addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
	//_thecache addMagazineCargoGlobal ["10Rnd_762x51_Mag", 6];
	//_thecache addItemCargoGlobal ["optic_MRCO",1];
	_thecache addWeaponCargoGlobal ["launch_RPG32_F", 2];
	_thecache addMagazineCargoGlobal ["RPG32_F", 4];
	_thecache addWeaponCargoGlobal ["launch_O_Titan_F", 1];
	_thecache addMagazineCargoGlobal ["Titan_AA", 2]; //remind fallu 4
	
	_thecache addMagazineCargoGlobal ["HandGrenade", 4];
	_thecache addMagazineCargoGlobal ["SmokeShell", 4];
	_thecache addItemCargoGlobal ["FirstAidKit",8];
	_thecache addItemCargoGlobal ["Medikit",1];
	_thecache addItemCargoGlobal ["ACE_NVG_Gen2",4];
	_thecache addBackpackCargoGlobal ["B_FieldPack_khk",2];
	//_thecache addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 2];
	_thecache addMagazineCargoGlobal ["APERSMine_Range_Mag", 1]; //REMIND TAKISTAN
	_thecache addMagazineCargoGlobal ["APERSMine_Range_Mag", 1];
} else {
	_thecache addWeaponCargoGlobal ["hlc_rifle_akm", 2];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_b_ak", 12];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_t_ak", 4];
	_thecache addWeaponCargoGlobal ["hlc_rifle_ak47", 2];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_b_ak", 12];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_t_ak", 4];
	_thecache addWeaponCargoGlobal ["hlc_rifle_akmgl", 2];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_b_ak", 12];
	_thecache addMagazineCargoGlobal ["hlc_30Rnd_762x39_t_ak", 4];
	_thecache addMagazineCargoGlobal ["hlc_VOG25_AK", 6];
	_thecache addWeaponCargoGlobal ["hlc_rifle_rpk", 1];
	_thecache addMagazineCargoGlobal ["hlc_75Rnd_762x39_m_rpk", 4];
	_thecache addWeaponCargoGlobal ["rhs_weap_pkm", 1];
	_thecache addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 4];
	//_thecache addWeaponCargoGlobal ["rhs_weap_svds", 1];
	//_thecache addMagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N1", 6];
	//_thecache addItemCargoGlobal ["rhs_acc_pso1m2",1];
	//_thecache addWeaponCargoGlobal ["UK3CB_BAF_AT4_AP_Launcher", 2];
	_thecache addWeaponCargoGlobal ["rhs_weap_rpg7", 2];
	_thecache addMagazineCargoGlobal ["rhs_rpg7_PG7VR_mag", 4];
	_thecache addItemCargoGlobal ["rhs_acc_pgo7v",2];
	
	_thecache addWeaponCargoGlobal ["launch_RPG32_F", 2];
	_thecache addMagazineCargoGlobal ["RPG32_F", 4];
	
	//_thecache addWeaponCargoGlobal ["rhs_weap_igla", 1];
	//_thecache addMagazineCargoGlobal ["rhs_mag_9k38_rocket", 4];  //remind fallu 2
	_thecache addWeaponCargoGlobal ["rhs_weap_fim92", 1];
	_thecache addMagazineCargoGlobal ["rhs_fim92_mag", 2];  //remind fallu 4
	
	_thecache addMagazineCargoGlobal ["HandGrenade", 4];
	_thecache addMagazineCargoGlobal ["SmokeShell", 4];
	_thecache addItemCargoGlobal ["FirstAidKit",8];
	_thecache addItemCargoGlobal ["Medikit",1];
	_thecache addItemCargoGlobal ["ACE_NVG_Gen2",4];
	_thecache addBackpackCargoGlobal ["rhs_sidor",2];
	_thecache addMagazineCargoGlobal ["IEDUrbanBig_Remote_Mag", 1]; //REMIND TAKISTAN
	//_thecache addMagazineCargoGlobal ["IEDLandBig_Remote_Mag", 1]; 
	_thecache addMagazineCargoGlobal ["IEDUrbanSmall_Remote_Mag", 1];
	_thecache addMagazineCargoGlobal ["IEDLandSmall_Remote_Mag", 1];
};	
	allCaches pushBack _thecache;

//put guys in buildings randomly
_range = (getmarkersize _pos select 0)*100;
_height = [.3,2];
_bpos = [];
{
  if (!alive _x) exitwith {};
  for [{_i = 0;_p = _x buildingpos _i},{str _p != "[0,0,0]"},{_i = _i + 1;_p = _x buildingpos _i}] do {
    _bpos set [count _bpos,_p];
  };
} foreach (nearestObjects [getMarkerPos _pos, ["Building"], _range]);

_tmp = [];
_min = _height select 0;
_max = _height select 1;
{
  _h = _x select 2;
  if (_h >= _min && _h <= _max) then { _tmp set [count _tmp,_x] };
} foreach _bpos;

if (count _tmp > 0) then {
_mpos = (floor random count _tmp);
_thecache setVectorUp [0,0,1];
_thecache setPos [(_tmp select (_mpos)) select 0,(_tmp select (_mpos)) select 1,((_tmp select (_mpos)) select 2)+0.5];
_thecache setVectorUp [0,0,1];
_cachebuilding = nearestObject [getpos _thecache, "Building"];
//debugmarker
_mname = format ["Marker%1",(allCaches find _thecache)];
_marker = createMarker [_mname, (_tmp select (_mpos)) ];
//_marker setMarkerType "mil_Warning";
_marker setMarkerType "empty";
 //foreach cachelist;
};

//debug, marks all spawns
/*_u = 0; for "_u" from 0 to ((count _bpos)-1) do {
_mname2 = format ["bmrk%1%2",_o,_u];
_marker2 = createMarker [_mname2, (_bpos select (_u)) ];
_mname2 setMarkerType "Dot";
};*/

//spawn AI
//_nul = [_posarray select (_poslist select _o), "aicache_", 6, 6, 0.7, _range] execVM "scripts\spawnAI_building.sqf";
[_cachebuilding,_marker,_thecache]spawn {
private ["_cachebuilding"];
_cachebuilding = _this select 0;
_thecache = _this select 2;
	while {alive _thecache} do {
		sleep 10;
		if (!alive _cachebuilding) then {
			_thecache setdamage 1;
		};
	};
	_this select 1 setMarkerType "mil_Flag";
	_this select 1 setMarkerColor "ColorBLUFOR";
};

sleep 2;
_thecache allowdamage true;
//thecache setdamage 1;