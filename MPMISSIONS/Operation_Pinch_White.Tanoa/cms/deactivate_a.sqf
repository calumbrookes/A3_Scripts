[{removeAllActions laptopalpha;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CAACTION1 = laptopalpha addAction ["Deactivate GSM Tower", "cms\activate_a.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CALPHA",false,true];
[{["gsmtower", "Assigned"] call BIS_fnc_taskSetState;},"BIS_fnc_spawn",west,true] call BIS_fnc_MP;
["SIGNAL RESTORATION GSM TOWER","hint",west,true] call BIS_fnc_MP;