[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CBACTION2 = laptopbravo addAction ["Deactivate Bravo", "cms\deactivate_b.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CBRAVO",true,true];
if((CALPHA) && (CBRAVO)) then {
	[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	[{removeAllActions laptopalpha;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
    ["MSG RCVD STOP PRCD MARKER CIA CACHE STOP","hint",west,true] call BIS_fnc_MP;
    [{"ciacache" setMarkerAlpha 1;},"BIS_fnc_spawn",west,true] call BIS_fnc_MP;
    sleep 300;
    ["SIGINT: Unauthorised Transmission from Comms Bravo","hint",east,true] call BIS_fnc_MP;
} else {
    ["BRAVO ACTIVATED. ALPHA IS NOT ACTIVE.","hint",west,true] call BIS_fnc_MP;
}