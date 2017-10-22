[{removeAllActions laptopalpha;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CAACTION1 = laptopalpha addAction ["Activate Alpha", "cms\activate_a.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CALPHA",false,true];
["SIGNAL LOSS COMMS ALPHA","hint",west,true] call BIS_fnc_MP;