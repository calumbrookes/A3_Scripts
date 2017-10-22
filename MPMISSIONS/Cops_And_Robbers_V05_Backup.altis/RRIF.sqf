waitUntil {!isNull player};
_unit = _this select 0;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "U_BG_Guerrilla_6_1";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "rhs_mag_9x18_12_57N181S";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addVest "V_TacVest_oli";
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_CableTie";};
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_VOG25_AK";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
_unit addItemToVest "SmokeShell";
_unit addHeadgear "H_Watchcap_blk";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "rhs_weap_akm_gp25";
_unit addWeapon "rhs_weap_makarov_pmm";
_unit addWeapon "Binocular";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_fadak_1";
_unit linkItem "ItemGPS";

if(true) exitWith{};