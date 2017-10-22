[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CBACTION1 = laptopbravo addAction ["Deactivate Comms Whiskey", "cms\activate_b.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CBRAVO",false,true];
[{["commstower", "Assigned"] call BIS_fnc_taskSetState;},"BIS_fnc_spawn",west,true] call BIS_fnc_MP;
["SIGNAL RESTORATION COMMS WHISKEY","hint",west,true] call BIS_fnc_MP;