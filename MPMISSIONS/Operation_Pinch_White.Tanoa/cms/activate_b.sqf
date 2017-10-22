[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
[{_CBACTION2 = laptopbravo addAction ["Reactivate Bravo", "cms\deactivate_b.sqf"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
missionNamespace setVariable ["CBRAVO",true,true];
[{["commstower", "Succeeded"] call BIS_fnc_taskSetState;},"BIS_fnc_spawn",west,true] call BIS_fnc_MP;
if((CALPHA) && (CBRAVO)) then {
	[{removeAllActions laptopbravo;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	[{removeAllActions laptopalpha;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
    ["SIGINT: ENEMY COMMUNICATIONS DISABLED","hint",west,true] call BIS_fnc_MP;
	[{[west,["searchbelfort"],["Search the improvised enemy POW interrogation facility and rescue the UN Prisoners of War","Search for Prisoners"],[3135.287,11229.852,0],true,1,true] call BIS_fnc_taskCreate;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
   	[{["wait", "Succeeded"] call BIS_fnc_taskSetState;},"BIS_fnc_spawn",west,true] call BIS_fnc_MP;
} else {
    ["WHISKEY DEACTIVATED. GSM TOWER IS ACTIVE.","hint",west,true] call BIS_fnc_MP;
}