_cachepos = getposatl (_this select 0);
[_cachepos]spawn {
_cachepos = _this select 0;
"Bo_GBU12_lgb" createVehicle _cachepos;
sleep 0.8;
"Bo_GBU12_lgb" createVehicle [(_cachepos select 0) + random(5) - 10,(_cachepos select 1) + random(5) - 10,(_cachepos select 2)];
sleep 0.4;
"Bo_GBU12_lgb" createVehicle [(_cachepos select 0) + random(5) - 10,(_cachepos select 1) + random(5) - 10,(_cachepos select 2)];
sleep 2;
"Bo_GBU12_lgb" createVehicle [(_cachepos select 0) + random(5) - 10,(_cachepos select 1) + random(5) - 10,(_cachepos select 2)];
};

liveCaches = liveCaches - 1;
_selectedC = allCaches find (_this select 0);
if (!(isnil "chMarkers")) then {
{
	deletemarker _x;
}foreach (chMarkers select _selectedC);
};
//chMarkers = [];

if (liveCaches > 0) then {
//["Cache destroyed!\n1 cache remaining","hintSilent",true] call BIS_fnc_MP;
["TaskSucceeded",["",format ["1 cache remaining.  %1 tickets remaining",Wtickets]]] remoteExecCall ["BIS_fnc_showNotification", -2]; 
} else {
//["Cache destroyed!\n2 new caches in 10 minutes.\nRespawn tickets reset","hintSilent",true] call BIS_fnc_MP;
["TaskSucceeded",["",format ["2 new caches in 10 minutes.  %1 tickets were remaining.  Respawn tickets reset",Wtickets]]] remoteExecCall ["BIS_fnc_showNotification", -2]; 
Wtickets = 100; publicvariable "Wtickets";

activeTowns = [];
publicvariable "activeTowns";

uisleep 570;
/*{
	deletemarker _x;
}foreach townMarkers;
townMarkers = [];
publicvariable "townMarkers";

{
	_x setmarkertype "Empty";
} foreach activeTowns;
activeTowns = [];*/


//delete all groups
/*{
if (count units _x < 1) then {deletegroup _x;} else {
if ((side _x == east) || (side _x == resistance)) then {
if (!isplayer (leader _x)) then {
[_x]spawn{
	_groupD = (_this select 0);
	
	{
		if (vehicle _x != _x) then {
			(vehicle _x) hideObjectGlobal false;
			deletevehicle vehicle _x;
		};
			if (!(isplayer _x)) then {
			_x enableSimulationGlobal true;
			_x hideObjectGlobal false;
			deletevehicle _x;
			};
		sleep 0.1;
	} foreach units _groupD;
	
	deletegroup _groupD;
};
};
};
};
} foreach allgroups;*/
//hint "deleted all groups";
uisleep 30;
[["c\headlessCheck.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
};