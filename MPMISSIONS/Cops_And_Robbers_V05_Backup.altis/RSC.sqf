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

_unit forceAddUniform "U_BG_Guerilla2_2";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "rhs_mag_9x18_12_57N181S";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addItemToUniform "Chemlight_red";
_unit addVest "V_TacVest_oli";
_unit addItemToVest "ACE_Cellphone";
_unit addItemToVest "ACE_DeadManSwitch";
_unit addItemToVest "ACE_M26_Clacker";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_VOG25_AK";};
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 2 do {_unit addItemToVest "DemoCharge_Remote_Mag";};
_unit addItemToVest "Chemlight_yellow";
_unit addHeadgear "H_Watchcap_blk";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "rhs_weap_akm";
_unit addWeapon "rhs_weap_makarov_pmm";
_unit addWeapon "Binocular";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_fadak_1";
_unit linkItem "ItemGPS";

if(true) exitWith{};