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

_unit forceAddUniform "demian2435_swat_leader_uniform";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {_unit addItemToUniform "Chemlight_blue";};
_unit addItemToUniform "ACE_HandFlare_White";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "Chemlight_green";
_unit addVest "demian2435_swat_vest";
for "_i" from 1 to 3 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "HandGrenade";
_unit addHeadgear "demian2435_swat_leader_helmet";

_unit addWeapon "rhs_weap_m4a1_carryhandle";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
_unit addWeapon "UK3CB_BAF_L131A1";
_unit addHandgunItem "UK3CB_BAF_Flashlight_L131A1";
_unit addWeapon "Binocular";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_2";
_unit linkItem "ItemGPS";
_unit linkItem "UK3CB_BAF_HMNVS";

if(true) exitWith{};