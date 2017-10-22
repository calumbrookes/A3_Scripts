[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CBACTION1 = laptopbravo addAction ["Activate Bravo", "cms\activate_b.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CBRAVO",false,true];
["SIGNAL LOSS COMMS BRAVO","hint",west,true] call BIS_fnc_MP;