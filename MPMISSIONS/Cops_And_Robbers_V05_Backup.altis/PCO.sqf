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

_unit forceAddUniform "demian2435_police_man_uniform";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 3 do {_unit addItemToUniform "Chemlight_blue";};
_unit addVest "demian2435_police_belt";
for "_i" from 1 to 3 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
_unit addHeadgear "H_Beret_02";

_unit addWeapon "UK3CB_BAF_L131A1";
_unit addHandgunItem "UK3CB_BAF_Flashlight_L131A1";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_2";
_unit linkItem "ItemGPS";

if(true) exitWith{};