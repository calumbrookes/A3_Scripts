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

_unit forceAddUniform "U_BG_leader";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_9x18_12_57N181S";};
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
_unit addItemToUniform "HandGrenade";
_unit addItemToUniform "SmokeShell";
_unit addVest "V_TacVest_oli";
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_CableTie";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_VOG25_AK";};
_unit addItemToVest "rhs_200rnd_556x45_B_SAW";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x18_12_57N181S";};
_unit addBackpack "B_AssaultPack_dgtl";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_200rnd_556x45_B_SAW";};
_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
_unit addItemToBackpack "MiniGrenade";
_unit addHeadgear "H_Watchcap_blk";
_unit addGoggles "G_Balaclava_blk";

_unit addWeapon "rhs_weap_m249_pip_L";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addWeapon "rhs_weap_makarov_pmm";
_unit addWeapon "Binocular";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_fadak_1";
_unit linkItem "ItemGPS";

if(true) exitWith{};