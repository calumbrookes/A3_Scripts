//[_marker,_buildingAI,_staticAI,_staticAAAI,_patrolAI,_patrolTownAI,_suvehAI,_tankAI] execVM "c\occupyTown.sqf";
//[_objTown,30,2,0,4,4,2,0] execVM "c\occupyTown.sqf";
private ["_resetCheck","_resetArray","_checkDist","_lastspot","_objmarker","_marker","_markerpos","_buildingAI","_staticAI","_radius","_staticAAAI","_patrolAI","_suvehAI","_tankAI","_patrolTownAI","_blaOT","_buildingAImax","_radiusP","_townOccupied","_dist","_unit","_range"];

_marker = _this select 0;
_markerpos = getmarkerpos _marker;
_buildingAI = _this select 1; // AI in builing % of all building spots filled
_buildingAImax	= _this select 2;
_radius = _this select 3;
_radius = if (isnil ("_radius")) then { ((getmarkersize _marker) select 0) * 100; }else{_radius;};
_radius = if (_radius < 1) then { ((getmarkersize _marker) select 0) * 100; }else{_radius;};
//if ((_marker in compoundsArray) && _radius > 125) then {_radius = 125;}; //remind fallu
_radiusP = 180;
_staticAI 	= _this select 4; //50cal tripods
_staticAAAI	= _this select 5; // SAM tripods
_patrolAI 	= _this select 6; //fire teams outside town
_patrolTownAI = _this select 7; //fire teams in town
_suvehAI 	= _this select 8; // BMP
_tankAI		= _this select 9; // BTR
_paraAI		= _this select 10; //Fastropers
_spawnCars = _this select 11; //ambient cars

//reset groups
_buildingAIGrp = [];
_staticAIGrps = [];
_staticAAAIGrps	= [];
_patrolAIGrps = [];
_patrolTownAIGrps = []; 
_suvehAIGrps = [];
_tankAIGrps	= []; 
_paraAIGrps	= _paraAI;

//find marker on map
_unit = getmarkerpos _marker;
_dist = 999999999;
_objmarker = "";
{
	_range = ((getMarkerPos _x) distance (_unit));
	if (_range < _dist) then {_dist = _range; _objmarker = _x};
} foreach townMarkers;
//_objmarker setmarkertext (format ["%1",_radius]);//debug

// wait until player nearby
while {!([_markerpos, 600] call f_fnc_nearBPlayer)} do { //remind taki
sleep 10; 
if (!(_marker in activeTowns)) exitwith {};
};

// dont spawn near blufor base
while {_markerpos distance getmarkerpos "respawn_west" < _radius + _radiusP + 300} do {
_radiusP = _radiusP - 100; 
};
if (_radiusP < 100) then {_radiusP = 100;};

if (!(_marker in activeTowns)) exitwith {};
// spawn cars
if (_spawnCars > 0) then {
[_objmarker,_spawnCars] execVM "cos\cosCore.sqf";
}; 

// tanks in town
for "_x" from 1 to _suvehAI do {
//_blaOT = [_markerpos,_radius+80,nil,2,[0.3,0.1,0.5,0.7,0.6,0.7,1,1,1,0.5],nil,nil,nil] execVM "LV\taskPatrolV.sqf";
//waitUntil { scriptDone _blaOT };
_blaOT = nil;
_blaOT = [_markerpos,_radius+80,nil,2,[0.3,0.1,0.5,0.7,0.6,0.7,1,1,1,0.5],nil,nil,nil] call LV_fnc_taskPatrolV;
waitUntil { !isnil "_blaOT" };
_suvehAIGrps pushback _blaOT;
if (!(_marker in activeTowns)) exitwith {};
};
if (!(_marker in activeTowns)) exitwith {};

// apcs patrols outside
for "_x" from 1 to _tankAI do {
//_blaOT = [_markerpos,_radius+_radiusP,nil,1,[0.3,0.1,0.5,0.8,0.7,0.7,1,1,1,0.5],nil,nil,nil] execVM "LV\taskPatrolV.sqf";
//waitUntil { scriptDone _blaOT };
_blaOT = nil;
_blaOT = [_markerpos,_radius+_radiusP,nil,1,[0.3,0.1,0.6,0.8,0.7,0.7,1,1,1,0.5],nil,nil,nil] call LV_fnc_taskPatrolV;
waitUntil { !isnil "_blaOT" };
_tankAIGrps pushback _blaOT;
if (!(_marker in activeTowns)) exitwith {};
};
if (!(_marker in activeTowns)) exitwith {};

// Rooftop 50cal
if (_staticAI > 0) then {
_staticAIGrps = [_markerpos, _radius, 1, _staticAI, "O_G_Soldier_F", east] call gdsn_fnc_spawnRooftopStaticWeapons;
if (!(_marker in activeTowns)) exitwith {};
};

// Rooftop AA
if (_staticAAAI > 0) then {
_staticAAAIGrps = [_markerpos, _radius, 3, _staticAAAI, "O_G_Soldier_F", east] call gdsn_fnc_spawnRooftopStaticWeapons;
if (!(_marker in activeTowns)) exitwith {};
};

// Squad patrols outside
for "_x" from 1 to _patrolAI do {
//_blaOT = [_markerpos,_radius+_radiusP,[4,3],[0.5,0.5,0.6,0.8,0.7,0.7,1,1,1,0.5],nil,nil,nil] execVM "LV\taskPatrol.sqf";
//waitUntil { scriptDone _blaOT };
_blaOT = nil;
_blaOT = [_markerpos,_radius+_radiusP,[3,2],[0.6,0.6,0.6,0.9,0.7,0.7,1,1,1,0.5],nil,nil,nil] call LV_fnc_taskPatrol;
waitUntil { !isnil "_blaOT" };
_patrolAIGrps pushback _blaOT;
if (!(_marker in activeTowns)) exitwith {};
};
if (!(_marker in activeTowns)) exitwith {};

// Squad patrols inside
for "_x" from 1 to _patrolTownAI do {
//_blaOT = [_markerpos,_radius,[3,2],[0.5,0.5,0.6,0.8,0.7,0.7,1,1,1,0.5],nil,nil,nil] execVM "LV\taskPatrolTown.sqf";
//waitUntil { scriptDone _blaOT };
_blaOT = nil;
_blaOT = [_markerpos,_radius,[3,2],[0.5,0.5,0.6,0.8,0.7,0.7,1,1,1,0.5],nil,nil,nil] call LV_fnc_taskPatrolTown;
waitUntil { !isnil "_blaOT" };
_patrolTownAIGrps pushback _blaOT;
if (!(_marker in activeTowns)) exitwith {};
};
if (!(_marker in activeTowns)) exitwith {};

// Building AI
//_blaOT = [_markerpos, _buildingAI, _buildingAImax, 0.35, _radius] execVM "LV\spawnAI_buildingAuto.sqf";
_blaOT = nil;
_blaOT = [_markerpos, _buildingAI, _buildingAImax, 0.4, _radius] call LV_fnc_spawnAI_buildingAuto;
waitUntil { !isnil "_blaOT" };
_buildingAIGrp pushback _blaOT;

//hint format ["%1",[ _buildingAIGrp, _staticAAAIGrps, _staticAIGrps, _patrolAIGrps, _patrolTownAIGrps, _suvehAIGrps, _tankAIGrps, _paraAIGrps]];
// resetcheck
_resetCheck=true;
_resetArray = [_marker,0.2,0,_radius,0,0,0,0,0,0,_paraAIGrps,0];
_lastspot = 90000;
_checkDist = 750; // remind taki
while {_resetCheck} do {

//remove marker when cleared
_townOccupied = false;
{
if (count units _x > 0) then {
if (side _x == east) then {
	if (isplayer (leader _x)) then {
	{
		if (_x distance getmarkerpos _marker < _radius) exitWith {
			_townOccupied = true;
		};
	}foreach units _x;
	} else {
	
	if ((leader _x) distance getmarkerpos _marker < _radius) exitWith {
		_townOccupied = true;
	};
	};
};
};
}foreach allgroups;

if (!_townOccupied) exitWith{ //!(_marker in activeTowns) || 
activeTowns = activeTowns - [_marker];
publicvariable "activeTowns";

deletemarker _objmarker;
townMarkers = townMarkers - [_objmarker];
};

// Reinforcements
if (_paraAI > 0) then {
	if (([_markerpos, 250] call f_fnc_nearBPlayer)) then {
		//wait x minutes when blufor is near then check again
		if (time < _lastspot) then {_lastspot = time};
		if ((_lastspot + 180) < time) then {
		[_marker,_paraAI]spawn{
			_marker = _this select 0;
			_markerpos = getmarkerpos _marker;
			_paraAI = _this select 1;
			
			if (!(_marker in activeTowns)) exitwith {};
			sleep 20 + random(40);
			for "_x" from 1 to _paraAI do {
			[(getmarkerpos "respawn_east"),_markerpos,_markerpos,"GUARD","Aware","GUE",7,"IND_F"] spawn MCCfr_fnc_paratroops; 
			
			sleep 16 + random(16);
			};
		};
		_paraAI = 0;
		_paraAIGrps = 0;
		_resetArray set [10,_paraAIGrps];
		};
	} else {
		_lastspot = 90000;
	};
};

//reduce check distance if caches destroyed
if (!(_marker in activeTowns)) then {
_checkDist = 350;
};

// check every minute for nearby blufor, if not delete all AI and execVM occupyTown;
if (!([_markerpos, _checkDist] call f_fnc_nearBPlayer)) then {
_resetCheck = false;

_counter = 0;
{
	if (typeName _x != "GROUP") exitWith {};
	_counter = _counter + count units _x;
}foreach _buildingAIGrp;
_resetArray set [2,_counter];

_bumper = 0;
{
	_minalive = 0;
	_counter = 0;
	if (_bumper == 2 || _bumper == 3) then {_minalive = 1};
	{
		if (typeName _x != "GROUP") exitWith {};
		if (count units _x > _minalive) then {_counter = _counter + 1};
	}foreach _x;
	_resetArray set [4+_bumper,_counter];
	_bumper = _bumper + 1;
}foreach [_staticAAAIGrps,_staticAIGrps,_patrolAIGrps,_patrolTownAIGrps,_suvehAIGrps,_tankAIGrps];

//hint format ["%1",_resetArray];
{
{
{
if (vehicle _x != _x) then {deletevehicle vehicle _x};
deletevehicle _x;
}foreach units _x;
}foreach _x;
}foreach [_buildingAIGrp,_staticAAAIGrps,_staticAIGrps,_patrolAIGrps,_patrolTownAIGrps,_suvehAIGrps,_tankAIGrps];
if (!(_marker in activeTowns)) exitwith {};
_blaCT = _resetArray execVM "c\occupyTown.sqf";
};

sleep 60; //60
};