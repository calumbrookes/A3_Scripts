/*
//player caching 
	_units = ["UnitNATO_CO_P1","UnitNATO_CO_P2","UnitNATO_CO_P3","UnitNATO_CO_PC","UnitNATO_CO","UnitNATO_CO_EN","UnitNATO_CO_FAC"] select {isNil _x};
	_sNeeds = (player in _units);
	[{[_this select 0] call cb_fnc_playerCaching;}, 5, _sNeeds] call CBA_fnc_addPerFrameHandler;
*/
private ["_checkDist","_cached"];

		//east: don't cache east players
		{
			if (_x distance2D player < 600)then{_x hideobject false; _x enablesimulation true;}else{if (_x != leader _x) then {_x hideobject true; _x enablesimulation false;};}; 
		}foreach  alldeadmen; //remind more opfor guys //playableunits - [OPFORguy1,OPFORguy2,OPFORguy3,OPFORguy4] +
		
		{
            _cached = _x getvariable ["c_cached", false];
			leader _x hideobject false; leader _x enablesimulation true; // always uncache leader in case the old leader died
			if (leader _x distance2D player < 600)then{
				if (_cached) then {
				_x setvariable ["c_cached", false];
				{
					_x hideobject false; _x enablesimulation true; //getobjectviewdistance2D?
				}foreach units _x - [leader _x];; 
				};
			} else {
				if (!_cached) then {
				_x setvariable ["c_cached", true];
				{
					_x hideobject true; _x enablesimulation false;
				}foreach units _x - [leader _x];; 
				};
			};
			
		}foreach allgroups - [GrpNATO_CO,GrpNATO_A1,GrpNATO_B1,GrpNATO_C1,GrpNATO_D1,GrpCSAT_A1]; 

		{
			if (_x isKindOf "LandVehicle") then {
				_checkDist = 1000;
			} else {
			if (_x isKindOf "air") then {
				_checkDist = 2000;
			}else {
				_checkDist = 250;
			};
			};
			if (_x distance2D player < _checkDist)then{_x hideobject false; _x enablesimulation true;}else{if ({alive _x} count crew _x == 0) then{_x hideobject true; _x enablesimulation false;}};
			
		}foreach alldead - alldeadmen; //vehicles + 