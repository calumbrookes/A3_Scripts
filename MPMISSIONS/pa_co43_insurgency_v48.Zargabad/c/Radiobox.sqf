//Ammobox.sqf
//clothing crate arma 3 
//Author's: =DWT= & Hashsix
// Crates Init : nul = [this] execVM "ammobox.sqf";

if (! isServer) exitWith {};

// Wait for parameter to be initialised
waitUntil{!isNil "f_var_radios"};
waitUntil{!isNil "f_var_ace3"};

// If any radio system selected
if(f_var_radios == 2) then {

_pos = (getpos basebox1) vectoradd [5,5,0];
_crate = createVehicle ["Box_NATO_Support_F", _pos, [], 0, "NONE"];
_crate allowdamage false;

//disable loading
if (f_var_ace3 == 1) then {
_crate setVariable ["ace_cargo_size", -1];
};

clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//*Uniforms 
//_crate addItemCargoGlobal ["_classname",50];

//*Vests
//_crate addItemCargoGlobal ["_classname",10];

//*Helmets
//_crate addItemCargoGlobal ["_classname",10];

//*Backpack
_crate addbackpackcargoGlobal ["tf_rt1523g",20];

//*Items 
_crate addItemCargoGlobal ["tf_anprc152", 20];

//*Magazine
//_crate addMagazineCargoGlobal ["_classname", 50];

//*Weapon
//_crate addWeaponCargoGlobal ["_classname", 50];

};




