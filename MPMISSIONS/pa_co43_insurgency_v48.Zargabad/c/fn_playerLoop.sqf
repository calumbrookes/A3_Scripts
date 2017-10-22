private ["_dist","_curMarker","_marker","_objmarker"];
//waituntil {sleep 2; !isnil"activeTowns"};
//sleep 15;

_dist = 100000;

if (!("mkr_nearTown" in allmapmarkers)) then{
_marker = createMarkerLocal ["mkr_nearTown",[0,0]];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerBrushLocal "Border"; 
_marker setMarkerSizeLocal [0,0]; 
_marker setMarkerAlphaLocal 0.5;
} else {
_marker = "mkr_nearTown";
};
_curMarker = _marker;

//while {true} do {
	{
		if (getmarkerpos _x distance player < _dist) then {
		_curMarker = _x;
		_dist = getmarkerpos _x distance player;
		};
	}foreach activeTowns;
	
	
	_marker setMarkerPosLocal getmarkerpos _curMarker;
	
	//find marker on map
	_unit = getmarkerpos _marker;
	_objmarker = false;
	{
		if ( _x find "mto_" == 1) then {
		_range = ((getMarkerPos _x) distance (_unit));
		if (_range < 10) exitWith {_objmarker = true;};
		};
		//sleep 0.1;
	} foreach allmapmarkers;
	
	
	if ( _objmarker) then {
		_marker setMarkerSizeLocal [150,150]; //remind radius size issue
	
	} else {
		_marker setMarkerSizeLocal [(getmarkersize _curMarker select 0) * 100,(getmarkersize _curMarker select 0) * 100]; 
	};
	_dist = 100000;
	
//	sleep 50;
//};