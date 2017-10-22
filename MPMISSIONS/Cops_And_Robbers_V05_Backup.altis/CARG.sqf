_crate = _this select 0;

clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

_crate addMagazineCargoGlobal["rhs_30Rnd_762x39mm",20];
_crate addMagazineCargoGlobal["rhs_mag_9x18_12_57N181S",20];
_crate addMagazineCargoGlobal["hlc_VOG25_AK",5];
_crate addMagazineCargoGlobal["rhsusf_100Rnd_556x45_soft_pouch",5];
_crate addMagazineCargoGlobal["rhs_10Rnd_762x54mmR_7N1",2];

_crate addItemCargoGlobal["ACE_fieldDressing",20];
_crate addItemCargoGlobal["ACE_morphine",10];
_crate addItemCargoGlobal["ACE_epinephrine",10];
_crate addItemCargoGlobal["Chemlight_blue",5];
_crate addItemCargoGlobal["Chemlight_red",5];
_crate addItemCargoGlobal["handgrenade",5];
_crate addItemCargoGlobal["smokeshell",5];

_crate addItemCargoGlobal["hlc_optic_kobra",5];
_crate addItemCargoGlobal["ACE_CableTie",20];
_crate addItemCargoGlobal["acc_flashlight",5];
_crate addItemCargoGlobal["FHQ_optic_AimM_BLK",5];

_crate addWeaponCargoGlobal["rhs_weap_akm_gp25",2];
_crate addWeaponCargoGlobal["rhs_weap_makarov_pmm",2];
_crate addWeaponCargoGlobal["rhs_weap_akms",2];

if(true) exitWith{};