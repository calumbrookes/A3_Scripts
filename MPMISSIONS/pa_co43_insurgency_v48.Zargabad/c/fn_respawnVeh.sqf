//[[[_this select 0],"c\respawnVehClient.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
// "[[[""v_ifv"",_this select 0], cb_fnc_respawnVeh], ""BIS_fnc_call"", true, false] call BIS_fnc_MP;"
//["v_car",this] call cb_fnc_respawnVeh;

private["_veh","_loadout"];
_loadout = _this select 0;
_veh = _this select 1;

_veh disableTIEquipment true; 

if (isserver) then {
_veh setVariable ["TF_RadioType", "tf_rt1523g", true];
_veh setVariable ["tf_side", west, true];

[_loadout,_veh] call f_fnc_assignGear; 

switch (_loadout) do
{
	case "v_atv":
		{
			//["v_atv",_veh] call f_fnc_assignGear; 
		};
	case "v_tr":
		{
			//["v_tr",_veh] call f_fnc_assignGear;
			_veh spawn {
				waituntil {time > 5};
				[_this, 7, "ACE_Wheel", true] call ace_repair_fnc_addSpareParts;
			};
		};
	case "v_ifv":
		{
			//["v_ifv",_veh] call f_fnc_assignGear; 
			_veh spawn {
				waituntil {time > 5};
				[_this, 3, "ACE_Wheel", true] call ace_repair_fnc_addSpareParts;
			};
		};
	case "v_car":
		{
			//["v_car",_veh] call f_fnc_assignGear;
			_veh spawn {
				waituntil {time > 5};
				[_this, 3, "ACE_Wheel", true] call ace_repair_fnc_addSpareParts;
			};  			
		};
	case "v_ths":
		{
			//["v_ths",_veh] call f_fnc_assignGear;
		};
	case "v_th":
		{
			//["v_th",_veh] call f_fnc_assignGear;			
		};
	default 
		{
			//["v_car",_veh] call f_fnc_assignGear; 
		};
};

if (_veh iskindof "B_Heli_Light_01_armed_F" || _veh iskindof "B_Heli_Light_01_F") then {
	_veh spawn {
		waituntil {time > 5};
		_this addweapon "CMFlareLauncher";  
		_this addMagazine "168Rnd_CMFlare_Chaff_Magazine";  
	};  
};

	if (_veh iskindof "UK3CB_BAF_Jackal2_L2A1_D" || _veh iskindof "UK3CB_BAF_Jackal2_L2A1_W"  || _veh iskindof  "UK3CB_BAF_Coyote_Passenger_L111A1_W" || _veh iskindof  "UK3CB_BAF_Coyote_Passenger_L111A1_D") then { 
		[_veh]spawn{
			waitUntil{((_this select 0) getVariable ["f_var_assignGear_done", false])};
			(_this select 0) addMagazineCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", 3]; //commander slot
			(_this select 0) addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_127x99_Box", 5]; //hmg gunner slot 
			};
		};

		if (_veh iskindof "UK3CB_BAF_Jackal2_GMG_D" || _veh iskindof "UK3CB_BAF_Jackal2_GMG_W" || _veh iskindof "UK3CB_BAF_Coyote_Passenger_L134A1_W" || _veh iskindof "UK3CB_BAF_Coyote_Passenger_L134A1_D") then { 
		[_veh]spawn{
			waitUntil{((_this select 0) getVariable ["f_var_assignGear_done", false])};
			(_this select 0) addMagazineCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", 3]; //commander slot
			(_this select 0) addMagazineCargoGlobal ["UK3CB_BAF_32Rnd_40mm_G_Box", 3]; //gmg gunner slot 
			};
		};

};

if (_veh iskindof "I_Heli_light_03_F") then {
	_veh setObjectTexture [0, "\a3\air_f_epb\Heli_Light_03\data\heli_light_03_base_co.paa"];  
};

if (_veh iskindof "I_MRAP_03_hmg_F" || _veh iskindof "I_MRAP_03_gmg_F" || _veh iskindof "I_MRAP_03_F" ) then {
	_veh setObjectTexture [0, "\a3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa"];  
	_veh setObjectTexture [1, "\a3\data_f\vehicles\turret_co.paa"];   
};

if (_veh iskindof "I_APC_Wheeled_03_cannon_F") then {
	_veh setObjectTexture [0,  "#(rgb,8,8,3)color(0.569,0.548,0.481,0.29)"];
};

waitUntil {!isnil "mobileHQ"};
if (_veh == mobileHQ) then {
if (isserver) then {
		mobileHQ setvariable ["deployed",0,true];
		mobileHQ setvariable ["deploying",0,true];
		mobileHQ lockDriver false;
		mobileHQ addMPEventHandler ["mpkilled", {_this execVM "c\mobileHQKilled2.sqf"}];
		//[]execVM "c\mobileHQDeployServer.sqf"; //remind fallu
		};
	if (!isdedicated) then {
	if (side player != east) then {
		mobileHQ addAction ["Deploy/Undeploy MHQ", "c\mobileHQDeploy.sqf"];
		mobileHQ addAction ["Teleport to Base", "c\mobileHQTeleportBack.sqf"];
		if (time > 15) then {hintsilent "MHQ Respawned";};
	};
	};
};