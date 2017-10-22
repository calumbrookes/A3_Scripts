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

_unit forceAddUniform "demian2435_swat_man_uniform";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "Chemlight_blue";
_unit addItemToUniform "ACE_HandFlare_White";
for "_i" from 1 to 4 do {_unit addItemToUniform "UK3CB_BAF_L128A1_Slugs";};
_unit addItemToUniform "UK3CB_BAF_L128A1_Pellets";
_unit addVest "demian2435_swat_vest";
_unit addItemToVest "Chemlight_blue";
_unit addItemToVest "Chemlight_red";
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_L128A1_Slugs";};
for "_i" from 1 to 5 do {_unit addItemToVest "UK3CB_BAF_L128A1_Pellets";};
_unit addItemToVest "HandGrenade";
_unit addHeadgear "demian2435_swat_helmet";
_unit addWeapon "Binocular";

_unit addWeapon "UK3CB_BAF_L128A1";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addWeapon "UK3CB_BAF_L131A1";
_unit addHandgunItem "UK3CB_BAF_Flashlight_L131A1";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_2";
_unit linkItem "ItemGPS";
_unit linkItem "UK3CB_BAF_HMNVS";

if(true) exitWith{};