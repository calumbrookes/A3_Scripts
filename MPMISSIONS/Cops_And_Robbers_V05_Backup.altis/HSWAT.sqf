_crate = _this select 0;

clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

_crate addWeaponCargoGlobal["UK3CB_BAF_L131A1",5];
_crate addWeaponCargoGlobal["UK3CB_BAF_L128A1",2];
_crate addWeaponCargoGlobal["rhs_weap_m4a1_carryhandle",5];
_crate addWeaponCargoGlobal["UK3CB_BAF_L129A1",1];
_crate addItemCargoGlobal["UK3CB_BAF_Flashlight_L131A1",5];
_crate addMagazineCargoGlobal["UK3CB_BAF_17Rnd_9mm",20];
_crate addMagazineCargoGlobal["B_IR_Grenade",5];
_crate addMagazineCargoGlobal["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];
_crate addMagazineCargoGlobal["UK3CB_BAF_L128A1_Slugs",10];
_crate addMagazineCargoGlobal["UK3CB_BAF_L128A1_Pellets",10];
_crate addMagazineCargoGlobal["UK3CB_BAF_20Rnd",10];
_crate addItemCargoGlobal["ACE_fieldDressing",10];
_crate addItemCargoGlobal["ACE_morphine",5];
_crate addItemCargoGlobal["Chemlight_blue",20];
_crate addItemCargoGlobal["Chemlight_red",20];

if(true) exitWith{};