sleep 5;
if (!hasInterface or isServer) then {

if (isnil "HCAvailable") then {HCAvailable = false;};

if (!hasInterface && !isDedicated) then {
	waitUntil{!isNil "c_var_hc"};
	if (c_var_hc==0) then {
		HCAvailable = false; 
	} else {
		HCAvailable = true; 
	};
	publicVariable "HCAvailable";
};

if (isServer && time < 120) then {
		_enemyHQ = createCenter east; // Create the AI's HQ, this assumes the AI is going to be OPFOR
		_enemyHQ2 = createCenter resistance; 
		east setFriend [resistance, 1];
		resistance setFriend [east, 1];
		east setFriend [west, 0];
		west setFriend [east, 0];
		resistance setFriend [west, 0];
		west setFriend [resistance, 0];
	sleep 15;
};

if (!HCAvailable && isServer) then { // If the headless client is not available and this is the server
        //hint "Headless not available!";
		
		//REMIND TAKI
		if (isnil "compoundsArray") then {compoundsArray = [
		"c_100_1","c_100_2","c_100_3","c_100_4","c_100_5","c_100_6","c_100_7","c_100_8","c_100_9","c_100_10","c_100_11","c_100_12","c_100_13","c_100_14","c_100_15","c_100_16",
		"c_100_17","c_100_18","c_100_19","c_200_1","c_200_2","c_200_3","c_200_4","c_200_5","c_200_6","c_200_7","c_200_8","c_200_9","c_300_1","c_300_2","c_200_10","c_200_11",
		"c_200_12","c_100_20","c_100_21","c_100_22","c_100_23","c_100_24","c_100_25","c_100_26","c_100_27"
		];};
		if (isnil "townsArray") then {townsArray = [
		"t_300_1","t_300_2","t_200_1","t_200_2","t_200_3","t_200_4","t_200_5","t_200_6","t_200_7","t_200_8","t_200_9","t_200_10","t_200_11","t_200_12","t_200_13","t_200_14"
		];};
		if (isnil "activeTowns") then {activeTowns = [];};
		if (isnil "townMarkers") then {townMarkers = [];};
		
		waitUntil{!isNil "c_var_addons"};
		[] execVM "c\chooseTown.sqf";
		ainotspawned = false;
		publicvariable "ainotspawned";
		
		_debugMarker = createMarker ["Servermarker", [0,100,0]];
		_debugMarker setMarkerText "SERVER AI";
		_debugMarker setMarkerShape "ICON";
		_debugMarker setMarkerType "mil_dot";
		_debugMarker setMarkerColor "ColorRed";
			
} else {

        if (!hasInterface && !isDedicated && HCAvailable) then { // If this player is the headless client
        //hint "Headless available!";
	
		//REMIND TAKI
		if (isnil "compoundsArray") then {compoundsArray = [
		"c_100_1","c_100_2","c_100_3","c_100_4","c_100_5","c_100_6","c_100_7","c_100_8","c_100_9","c_100_10","c_100_11","c_100_12","c_100_13","c_100_14","c_100_15","c_100_16",
		"c_100_17","c_100_18","c_100_19","c_200_1","c_200_2","c_200_3","c_200_4","c_200_5","c_200_6","c_200_7","c_200_8","c_200_9","c_300_1","c_300_2","c_200_10","c_200_11",
		"c_200_12","c_100_20","c_100_21","c_100_22","c_100_23","c_100_24","c_100_25","c_100_26","c_100_27"
		];};
		if (isnil "townsArray") then {townsArray = [
		"t_300_1","t_300_2","t_200_1","t_200_2","t_200_3","t_200_4","t_200_5","t_200_6","t_200_7","t_200_8","t_200_9","t_200_10","t_200_11","t_200_12","t_200_13","t_200_14"
		];};
		if (isnil "activeTowns") then {activeTowns = [];};
		if (isnil "townMarkers") then {townMarkers = [];};
		
		waitUntil{!isNil "c_var_addons"};
		[] execVM "c\chooseTown.sqf";
		ainotspawned = false;
		publicvariable "ainotspawned";
		
		_debugMarker1 = createMarker ["Headlessmarker", [0,100,0]];
		_debugMarker1 setMarkerText "HEADLESS AI";
		_debugMarker1 setMarkerShape "ICON";
		_debugMarker1 setMarkerType "mil_dot";
		_debugMarker1 setMarkerColor "ColorRed";
};
};

};