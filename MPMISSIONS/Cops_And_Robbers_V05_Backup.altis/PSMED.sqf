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
for "_i" from 1 to 3 do {_unit addItemToUniform "Chemlight_blue";};
_unit addItemToUniform "ACE_HandFlare_White";
for "_i" from 1 to 2 do {_unit addItemToUniform "B_IR_Grenade";};
_unit addItemToUniform "UK3CB_BAF_17Rnd_9mm";
_unit addVest "demian2435_swat_vest";
for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 8 do {_unit addItemToVest "hlc_30Rnd_9x19_B_MP5";};
_unit addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
_unit addHeadgear "demian2435_sniper_cap";

_unit addWeapon "hlc_smg_mp5k_PDW";
_unit addPrimaryWeaponItem "FHQ_optic_AC11704";
_unit addWeapon "UK3CB_BAF_L131A1";
_unit addHandgunItem "UK3CB_BAF_Flashlight_L131A1";
_unit addWeapon "Rangefinder";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_2";
_unit linkItem "ItemGPS";
_unit linkItem "UK3CB_BAF_HMNVS";

if(true) exitWith{};