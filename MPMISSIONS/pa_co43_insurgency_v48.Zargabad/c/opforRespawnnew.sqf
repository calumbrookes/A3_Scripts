[_this]spawn{

onMapSingleClick "";
if (isnil "tpMarkers") then {tpMarkers = [];};
{
deletemarker _x;
}foreach tpMarkers;
tpMarkers = [];
removeAllActions (_this select 0);

sleep ((getNumber (missionconfigfile >> "RespawnDelay")) + 1);
waitUntil {sleep 0.2; alive player};
hintsilent format ["Your radio channel is reset\n\nUse teleport to get back into action"];

[player getvariable "f_var_assignGear",player] call f_fnc_assignGear; 

[] execVM "f\radios\radio_init.sqf";

[] execVM "f\medical\medical_init.sqf";

player setCustomAimCoef 0.35;
	
player setvariable ["didIntel", false]; 
lastSquadTP = diag_tickTime;
click = true;
player addAction ["Teleport Action", "c\opforTPnew.sqf",nil,0];
//player addAction ["Spawn Quad", "c\spawnquad.sqf"];
};

if ((random 10)>4) then {
_corpse = _this;
_didIntel = _corpse getvariable "didIntel";
if (isnil "_didIntel") then {
_corpse setvariable ["didIntel", false]; 
};
if (!(_corpse getvariable "didIntel")) then {
_corpse setvariable ["didIntel", true]; 
_intel = createVehicle ["Land_Suitcase_F", [0,0,0], [], 0, "NONE"]; 
_intel setposatl (getposatl _corpse);
[[[_intel],"c\intelAddAction.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
//[-2, {
//(_this) addaction ["Pick up intel", "c\intelAction.sqf"];
//},_intel] call CBA_fnc_globalExecute;

[_intel] spawn {
sleep 900;
deleteVehicle (_this select 0);
};
};
};

