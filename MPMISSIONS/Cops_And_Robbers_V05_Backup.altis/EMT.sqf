_crate = _this select 0;

clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

_crate addWeaponCargoGlobal["UK3CB_BAF_L131A1",20];
_crate addItemCargoGlobal["UK3CB_BAF_Flashlight_L131A1",20];
_crate addMagazineCargoGlobal["UK3CB_BAF_17Rnd_9mm",100];
_crate addMagazineCargoGlobal["B_IR_Grenade",20];
_crate addItemCargoGlobal["ACE_fieldDressing",100];
_crate addItemCargoGlobal["ACE_morphine",20];
_crate addItemCargoGlobal["ACE_epinephrine",20];
_crate addItemCargoGlobal["ACE_bodyBag",20];
_crate addItemCargoGlobal["ACE_bloodIV",20];
_crate addItemCargoGlobal["Chemlight_blue",20];
_crate addItemCargoGlobal["Chemlight_red",20];

if(true) exitWith{};