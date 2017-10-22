[{removeAllActions laptopalpha;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CAACTION2 = laptopalpha addAction ["Deactivate Alpha", "cms\deactivate_a.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CALPHA",true,true];
if((CALPHA) && (CBRAVO)) then {
	[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	[{removeAllActions laptopalpha;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
    ["MSG RCVD STOP PRCD MARKER CIA CACHE STOP","hint",west,true] call BIS_fnc_MP;
	[{"ciacache" setMarkerAlpha 1;},"BIS_fnc_spawn",west,true] call BIS_fnc_MP;
    sleep 300;
    ["SIGINT: Unauthorised Transmission from Comms Alpha","hint",east,true] call BIS_fnc_MP;
} else {
    ["ALPHA ACTIVATED. BRAVO IS NOT ACTIVE.","hint",west,true] call BIS_fnc_MP;
}