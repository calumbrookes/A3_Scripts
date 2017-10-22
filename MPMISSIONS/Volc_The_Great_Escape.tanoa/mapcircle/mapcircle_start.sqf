_counter = 0;

while {_counter < 3601} do
{
	if (_counter > 599) then {
    [{"troopcircle" setMarkerAlpha 0.5;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;

    	if (_counter < 601) then {
    	["ALERT: Prisoner Convoy Did Not Reach Lakatoro.","hint",east,true] call BIS_fnc_MP;
		};

	};

	missionNamespace setVariable ["circlecounter",_counter,true];

	_counter = _counter + 200;

	[{"troopcircle" setMarkerSize [circlecounter, circlecounter];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;

	sleep 60;
};

    [{"troopcircle" setMarkerAlpha 0;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;