private ["_curTown,""_nearbyTowns","_nearbyCompounds","_maxAIgroups","_maxDist","_objTown1","_objTown2""_extraTowns","_extraTownNew","_mname","_marker","_startTime","_townsPlusCompounds","_blaCT","_chanse"];
_nearbyTowns = [];
_extraTowns = [];
_nearbyCompounds = [];
_maxAIgroups = 44; // 14 taken, 3 big, 5 small
_minDist = 800;
_maxDist = 2000;

// hacky reset actions
{
	deletemarker _x;
}foreach townMarkers;
townMarkers = [];
activeTowns = [];
publicvariable "activeTowns";


//debug
//[]spawn{
	//while {true} do {
	//hintsilent format ["%1", count allgroups];
	//sleep 0.1;
	//};
//};

if ((count compoundsArray) < 5 || (count townsArray)<3) exitwith {
_null = [{_null = execVM "c\endMissionW.sqf";},"BIS_fnc_spawn",true,true] spawn BIS_fnc_MP;
};

//select towns
_objTown1 = townsArray call BIS_fnc_selectRandom;
//_nearbyTowns=_nearbyTowns+[_objTown1];
townsArray = townsArray - [_objTown1];
activeTowns = activeTowns + [_objTown1];
_mname = format ["mto_0%1",_objTown1];
_marker = createMarker [_mname, (getmarkerpos _objTown1) ];
//_mname setMarkerText "T";
_mname setMarkerShape "ICON";
_mname setMarkerType "empty";//"empty";
_mname setMarkerColor "ColorOPFOR";
_mname setMarkerSize [0.8,0.8];
townMarkers = townMarkers + [_mname];
//_chanse = 0.6;
_objTown2 = _objTown1;
/*
_startTime = time;
while {count activeTowns<2} do {
{
	if ((time > _startTime + 20)||((getmarkerpos _x distance getmarkerpos _objTown1 < _maxDist) && ((getmarkerpos _x) distance (getmarkerpos _objTown1) > _minDist))) exitwith {
		_objTown2 = _x;
		//_nearbyTowns=_nearbyTowns+[_objTown2];
		townsArray = townsArray - [_objTown2];
		activeTowns = activeTowns + [_objTown2];
		_mname = format ["mt_%1",_x];
		_marker = createMarker [_mname, (getmarkerpos _objTown2) ];
		//_mname setMarkerText "T";
		_mname setMarkerShape "ICON";
		_mname setMarkerType "empty";
		_mname setMarkerColor "ColorOPFOR";
		_mname setMarkerSize [0.8,0.8];
		townMarkers = townMarkers + [_mname];
	};
	//_chanse = _chanse - 0.1;
	_maxDist = _maxDist + 200;
} foreach townsArray;
};*/
_maxDist = 2000;

_townsPlusCompounds = townsArray; //no longer include compounds
if (count _townsPlusCompounds > 1) then {
_maxDist = 2000;
for "_i" from 1 to 2 do { //remind taki
//while (count _extraTowns < 8) do {
	_extraTownNew = (_townsPlusCompounds call BIS_fnc_selectRandom);
	
	_tooClose = true;
	_startTime = time;
	while {_tooClose} do {
		_tooClose = false;
		{
			if (((getmarkerpos _x) distance (getmarkerpos _extraTownNew) < _minDist)||((getmarkerpos _extraTownNew) distance (getmarkerpos _objTown1) > _maxDist) ) exitWith { 
				_tooClose = true;
				_extraTownNew = (_townsPlusCompounds call BIS_fnc_selectRandom);
			};
		}forEach activeTowns;
		if (time > _startTime + 5) then {_maxDist = _maxDist + 500;};
		if (time > _startTime + 10) then {_tooClose = false;};
	};
	_maxDist = _maxDist + 200;
	_nearbyTowns pushBack _extraTownNew;
	activeTowns = activeTowns + [_extraTownNew];
	_townsPlusCompounds = _townsPlusCompounds - [_extraTownNew];
	_mname = format ["mto_%1",count _nearbyTowns];
	_marker = createMarker [_mname, (getmarkerpos _extraTownNew) ];
	//_mname setMarkerText "T";
	_mname setMarkerShape "ICON";
	_mname setMarkerType "EMPTY";
	_mname setMarkerColor "ColorOPFOR";
	_mname setMarkerSize [0.8,0.8];
	townMarkers = townMarkers + [_mname];
};};
{if ("empty" == getMarkerType _x) then {_x setmarkerType "o_inf";};}foreach townMarkers;

//_objTown2 = (_extraTowns call BIS_fnc_selectRandom);
//_extraTowns = _extraTowns - [_objTown2];
//townsArray = townsArray - [_objTown2];
//hint format ["%1,%2", _nearbyTowns, count _nearbyCompounds]; sleep 3;

//occupyAO
//[_wpTowns,_patrolAI,_vehicleAI,_tankAI,_truckAI] execVM "c\occupyAO.sqf";
_blaCT = [activeTowns,0,2,2,0] execVM "c\occupyAO.sqf";

//find center of towns
_centerX = 0;
_centerY = 0;
{
_centerX = _centerX + (getmarkerpos _x select 0);
_centerY = _centerY + (getmarkerpos _x select 1);
}foreach activeTowns;
_centerX = _centerX / (count activeTowns);
_centerY = _centerY / (count activeTowns);
_centerPos = [_centerX,_centerY,0];

_objTown2 = (activeTowns - [_objTown1]) call BIS_fnc_selectRandom;
if (_objTown2 in townsArray) then {
townsArray = townsArray - [_objTown2];
} else {
compoundsArray = compoundsArray - [_objTown2];
};

_townsPlusCompounds = compoundsArray + townsArray; //no longer include towns , remind taki

//sort by distance from base and obj
_townsPlusCompounds = [_townsPlusCompounds,[_centerPos],{
	_Ftownsdist = {
		private ["_pos1","_dist"];
		_pos1 = _this select 0;
		_dist = 1000000;  
		{
		_disttmp = ((getmarkerpos _x) distance _pos1);
		if (_disttmp < _dist)then{_dist = _disttmp};
		//_dist = _dist + ((getmarkerpos _x) distance _pos1)
		}foreach activetowns;
		_dist
	};

	_dist = [getmarkerpos _x] call _Ftownsdist;
	_dist = _dist + ((getmarkerpos "respawn_west") distance (getmarkerpos _x))*0.1; //remind taki 2.5
	_dist
},"ASCEND"] call BIS_fnc_sortBy; //(_input0 distance (getmarkerpos _x))

if (count _townsPlusCompounds > 4) then {
//_maxDist = 5000;
for "_i" from 1 to 5 do {
//while (count _extraTowns < 8) do {
	
	//sort compounds v2
	_extraTownNew = nil;
	_mindist = 350 + random(100);
	_j = 0;
	while {isnil "_extraTownNew"} do {
		if (random 1 > 0.6) then { //0.92
			_extraTownNew = _townsPlusCompounds select _j;
			{
				if ((getmarkerpos _x) distance (getmarkerpos _extraTownNew) < _mindist) exitWith {
					_townsPlusCompounds = _townsPlusCompounds - [_extraTownNew];
					_extraTownNew = nil;
				}
			}forEach activeTowns;
			
		} else {
			_j = _j + 1;
			if (_j > (count _townsPlusCompounds)) then {
			_j = 0; 
			_mindist = _mindist - 60;
			_townsPlusCompounds = compoundsArray + townsArray - activeTowns;
			};
		};
	};
	/*
	// v1
	_extraTownNew = (_townsPlusCompounds call BIS_fnc_selectRandom);
	_tooClose = true;
	_startTime = time;
	while {_tooClose} do {
			_tooClose = false;
		
		{
			if (((getmarkerpos _x) distance (getmarkerpos _extraTownNew) < 600)||((getmarkerpos _extraTownNew) distance (getmarkerpos "respawn_west") > _maxDist) ) then { 

				_tooClose = true;
				_extraTownNew = (_townsPlusCompounds call BIS_fnc_selectRandom);
			};
		}forEach activeTowns;
		if (time > _startTime + 5) then {_maxDist = _maxDist + 800;};
		if (time > _startTime + 10) then {_tooClose = false;};
	};
	_maxDist = _maxDist + 400;*/
	_extraTowns pushBack _extraTownNew;
	activeTowns = activeTowns + [_extraTownNew];
	_townsPlusCompounds = _townsPlusCompounds - [_extraTownNew];
	_mname = format ["marke_%1",count _extraTowns];
	_marker = createMarker [_mname, (getmarkerpos _extraTownNew) ];
	//_mname setMarkerText "T";
	_mname setMarkerShape "ICON";
	_mname setMarkerType "o_recon";
	_mname setMarkerColor "ColorOPFOR";
	_mname setMarkerSize [0.6,0.6];
	townMarkers = townMarkers + [_mname];
};};

publicvariable "activeTowns";

if (isServer) then {
	_blaCT = [_objTown1] execVM "c\spawnCACHEA_building.sqf";
	waitUntil { scriptDone _blaCT };
	_blaCT = [_objTown2] execVM "c\spawnCACHEA_building.sqf";
	waitUntil { scriptDone _blaCT };
} else {
	[[[_objTown1],"c\spawnCACHEA_building.sqf"],"BIS_fnc_execVM",false] call BIS_fnc_MP;
	sleep 5;
	[[[_objTown2],"c\spawnCACHEA_building.sqf"],"BIS_fnc_execVM",false] call BIS_fnc_MP;
};


//_blaCT=[_marker,_buildingAI,_buildingAImax,_radius,_staticAI,_staticAAAI,_patrolAI,_patrolTownAI,_suvehAI,_tankAI,_paraAI,_spawnCars] execVM "c\occupyTown.sqf";
//waitUntil { scriptDone _blaCT };
_blaCT = [_objTown1,0.14,25,nil,2,0,2,3,0,1,2,(3+(round random(2)))] execVM "c\occupyTown.sqf";//remind altis cant have static//waitUntil { scriptDone _blaCT };
//_blaCT = [_objTown2,0.10,40,nil,0,0,1,3,0,1,2,(2+(round random(2)))] execVM "c\occupyTown.sqf";
//waitUntil { scriptDone _blaCT };

//_nearbyTowns=_nearbyTowns - [_objTown1];
//_nearbyTowns=_nearbyTowns - [_objTown2];

_maxAIgroups = _maxAIgroups - 14;
_maxAIgroups = _maxAIgroups - (count activeTowns);//(count _nearbyTowns + count _nearbyCompounds + count _extraTowns);
//hint format ["maxai 1 %1",_maxAIgroups];

//hint "AI spawn - 1";
//_splitAI = _maxAIgroups / ((count _nearbyTowns)*3 + (count _nearbyCompounds)*2 + count _extraTowns*1.5);

//spawn _nearbyTowns AI
/*_splitAI = _splitAI*3;

{
	//_buildingCount=0;
	//_waypointCount=round (_splitAI*0.05);
	//{
	//	_buildingCount = _buildingCount + 1;
	//} foreach (nearestObjects [getmarkerpos _x, ["Building"], (getmarkersize _x select 0)*100]);
	//if (_splitAI*0.5>_buildingCount) then {
	//not enough buildings
	//rule: _splitAI = _buildingCount*2 + _waypointCount*5*2 
	//	hint format ["not enough buildings\n%1\n%2 - %3\n%4",_splitAI,_buildingCount,_waypointCount,_x];
	//	_waypointCount=_waypointCount+round ((_splitAI*0.5 - _buildingCount)*0.2); //compound: / 10
	//	sleep 1.5;
	//} else {
	//enough buildings
	//	hint format ["enough buildings\n%1\n%2 - %3\n%4",_splitAI,_buildingCount,_waypointCount,_x];
	//	_buildingCount = round(_splitAI*0.5);
	//	sleep 1.5;
	//};
	//67 11
	_availableWPs = round _splitAI - 1;
	_staticAI = 0;
	_AAAI = 0;
	_patrolAI = 0;
	_townAI = 0;
	_vehAI = 0;
	_paraAI = 0;
	//while {_availableWPs > 7} do {
	//	_staticAI = _staticAI + 1;
	//	_patrolAI = _patrolAI + 3;
	//	_townAI = _townAI + 3;
	//	_vehAI = _vehAI + 1;
	//	_availableWPs = _availableWPs - 8;
	//};
	while {_availableWPs > 0} do { //2 1 8 1
		if (random(14)>12 && (_patrolAI<(round _splitAI)*0.286)) then {_patrolAI=_patrolAI + 1;	_availableWPs=_availableWPs - 1; };
		if (_availableWPs< 1) exitwith{};
		if (random(14)>6 && (_townAI<(ceil _splitAI)*0.8)) then {_townAI=_townAI + 1;		_availableWPs=_availableWPs - 1; };
		if (_availableWPs< 1) exitwith{};
		//if (random(14)>12 && (_staticAI<(ceil _splitAI)*0.286)) then {_staticAI=_staticAI + 1;	_availableWPs=_availableWPs - 1; };
		//if (_availableWPs< 1) exitwith{};
		//if (random(14)>13 && (_AAAI<(ceil _splitAI)*0.143)) then {_AAAI=_AAAI + 1;	_availableWPs=_availableWPs - 1; };
		//if (_availableWPs< 1) exitwith{};
		if (random(14)>13 && (_vehAI<(ceil _splitAI)*0.143)) then {_vehAI=_vehAI + 1; _availableWPs=_availableWPs - 1; };
	};
	//hint format ["%1\n%2\n%3\n%4\n%5\n%6\n%7",_splitAI,_x,_staticAI,_AAAI,_patrolAI,_townAI,_vehAI]; sleep 1;
	_blaCT = [_x,0.06,40,nil,_staticAI,_AAAI,_patrolAI,_townAI,1,_vehAI,_paraAI] execVM "c\occupyTown.sqf";
	//waitUntil { scriptDone _blaCT };
} foreach _nearbyTowns;
//hint "AI spawn - 2";

//spawn _nearbyCompounds AI
_splitAI = _splitAI * (2 / 3);
{
	_availableWPs = round _splitAI - 1;
	_staticAI = 0;
	_AAAI = 0;
	_patrolAI = 0;
	_townAI = 0;
	_vehAI = 0;
	_paraAI = 0;
	while {_availableWPs > 0} do { //2 1 8 1
		if (random(10)>7.5 && (_patrolAI<(round _splitAI)*0.5)) then {_patrolAI=_patrolAI + 1;	_availableWPs=_availableWPs - 1; };
		if (_availableWPs< 1) exitwith{};
		if (random(14)>6 && (_townAI<(ceil _splitAI)*2)) then {_townAI=_townAI + 1;		_availableWPs=_availableWPs - 1; };
		if (_availableWPs< 1) exitwith{};
		//if (random(14)>12 && (_staticAI<(ceil _splitAI)*0.286)) then {_staticAI=_staticAI + 1;	_availableWPs=_availableWPs - 1; };
		//if (_availableWPs< 1) exitwith{};
		//if (random(14)>13 && (_AAAI<(ceil _splitAI)*0.143)) then {_AAAI=_AAAI + 1;	_availableWPs=_availableWPs - 1; };
		//if (_availableWPs< 1) exitwith{};
		if (random(10)>9.5 && (_vehAI<(ceil _splitAI)*0.2)) then {_vehAI=_vehAI + 1; _availableWPs=_availableWPs - 1; };
	};
	//hint format ["%1\n%2\n%3\n%4\n%5\n%6",_splitAI,_x,_staticAI,_patrolAI,_townAI,_vehAI]; sleep 3;
	_blaCT = [_x,0.06,20,nil,_staticAI,_AAAI,_patrolAI,_townAI,0,_vehAI,_paraAI] execVM "c\occupyTown.sqf";
	//waitUntil { scriptDone _blaCT };
} foreach _nearbyCompounds;*/

//_splitAI = floor (_splitAI * (1.5 / 2) * count _extraTowns);
_splitAI = _maxAIgroups / (count _extraTowns + count _nearbyTowns);
_availableWPs = floor (_maxAIgroups - (count _extraTowns + (count _nearbyTowns)*3)); 
_ranOccupyArray = [];

{_ranOccupyArray pushBack 0;}forEach _nearbyTowns;
{_ranOccupyArray pushBack 0;}forEach _extraTowns;

_maxWPs = round (_splitAI*2);//(_availableWPs / (count _extraTowns))*2;
while{_availableWPs>0} do {
	for "_i" from 0 to (count _ranOccupyArray - 1) do{
		if (_availableWPs>0) then {
		if (random(_maxWPs)>(_ranOccupyArray select _i)) then {
			_ranOccupyArray set [_i,((_ranOccupyArray select _i) + 1)];
			_availableWPs = _availableWPs - 1;
		};
		};
	};
};

for "_i" from 0 to (count _nearbyTowns - 1) do{
_ranOccupyArray set [_i,(_ranOccupyArray select _i)+3];
};
for "_i" from (count _nearbyTowns ) to ((count _nearbyTowns )+(count _extraTowns - 1)) do{
_ranOccupyArray set [_i,(_ranOccupyArray select _i)+1];
};
//hint format ["%1",_ranOccupyArray];
{
	//_availableWPs = round _splitAI - 1;
	//hint format ["%1",_availableWPs];
	_curTown = 0;
	_parkedcars = true;
	_radius = 0;
	_maxAI = 12;
	if (_x in _nearbyTowns) then {
	_curTown = _nearbyTowns find _x;
	_parkedcars = (2+(round random(2)));
	_maxAI = 18;
	} else {
	_curTown = (_extraTowns find _x) + count _nearbyTowns;
	_parkedcars = (1+(round random(1)));
	if (_x in townsArray) then {_radius = 150;}; //remind altis ... playerloop markers 150 mismatch
	//_radius = 150;
	};
	_maxWPs = ceil(_ranOccupyArray select _curTown);
	_staticAI = 0;
	_AAAI = 0;
	_patrolAI = 0;
	_townAI = 0;
	_tankAI = 0;
	_vehAI = 0;
	_paraAI = 0;
	//hint format ["%1\n%2",_x,(_ranOccupyArray select _curTown)]; sleep 1;
	while {(_ranOccupyArray select _curTown) > 0} do { //2 1 8 1
		if (random(10)>7 && (_patrolAI<_maxWPs*0.75)) then {
			_patrolAI=_patrolAI + 1; 
			_ranOccupyArray set [_curTown,((_ranOccupyArray select _curTown) - 1)];
		};
		if ((_ranOccupyArray select _curTown)< 1) exitwith{};
		if (random(10)>4 && (_townAI<_maxWPs*1)) then {
			_townAI=_townAI + 1; 
			_ranOccupyArray set [_curTown,((_ranOccupyArray select _curTown) - 1)]; 
		};
		if ((_ranOccupyArray select _curTown)< 1) exitwith{};
		//if (random(10)>9 && (_staticAI<_maxWPs*0.35)) then { //remind altis no static 
		//	_staticAI=_staticAI + 1; 
		//	_ranOccupyArray set [_curTown,((_ranOccupyArray select _curTown) - 1)];};
		//if ((_ranOccupyArray select _curTown)< 1) exitwith{};
		if (random(10)>9.8 && (_paraAI<1)) then { //remind fallu lower chacne
			_paraAI=_paraAI + 1; 
			_ranOccupyArray set [_curTown,((_ranOccupyArray select _curTown) - 1)];};
		if ((_ranOccupyArray select _curTown)< 1) exitwith{};
		//if (random(10)>9 && (_AAAI<ceil(_ranOccupyArray select _curTown)*1)) then {
		//	_AAAI=_AAAI + 1; 
		//	_availableWPs=_availableWPs - 1; 
		//};
		//if (_availableWPs< 1) exitwith{};
		if (random(10)>9.9 && ((_tankAI+_vehAI)<_maxWPs*0.25)) then { //remind fallu lower chacne
			_tankAI=_tankAI + 1; 
			_ranOccupyArray set [_curTown,((_ranOccupyArray select _curTown) - 1)];
		};
		if (random(10)>9.6 && ((_tankAI+_vehAI)<_maxWPs*0.25)) then { //remind fallu lower chacne
			_vehAI=_vehAI + 1; 
			_ranOccupyArray set [_curTown,((_ranOccupyArray select _curTown) - 1)];
		};
	};
	//hint format ["%1\n%2 %3 %4 %5",_x,_staticAI,_patrolAI,_townAI,_vehAI]; sleep 1;
	_blaCT = [_x,0.14,_maxAI,_radius,_staticAI,_AAAI,_patrolAI,_townAI,_tankAI,_vehAI,_paraAI,_parkedcars] execVM "c\occupyTown.sqf";
	//waitUntil { scriptDone _blaCT };
}forEach (_nearbyTowns + _extraTowns);

//hint "all AI spawned!";