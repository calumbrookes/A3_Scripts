if (isnil "chMarkers") then {chMarkers = [[]];};
waituntil {sleep 5; (!isnil "allCaches")};
waituntil {sleep 5; (count allCaches > 0)};
private ["_radius","_mpos","_mname","_marker","_selectedC","_liveCaches"];

if (count chMarkers < count allCaches) then {chMarkers pushBack [];};
_radius = 400;
_liveCaches = [];
_selectedC = nil;
{
if (alive _x) then {
_liveCaches pushback (allCaches find _x);
};
}foreach allCaches;
_liveCaches = _liveCaches call BIS_fnc_arrayShuffle;

{
	if (count (chMarkers select _x) < 5) exitWith {_selectedC = _x};
}foreach _liveCaches;

// all intel found
if (isnil "_selectedC") exitWith {};

_mpos = getPos (allCaches select _selectedC);
if (count (chMarkers select _selectedC) > 0) then {_radius = _radius - 100};
if (count (chMarkers select _selectedC) > 1) then {_radius = _radius - 100};
if (count (chMarkers select _selectedC) > 2) then {_radius = _radius - 100};
if (count (chMarkers select _selectedC) > 3) then {_radius = _radius - 50};
if (count (chMarkers select _selectedC) > 4) exitWith{};//then {_radius = _radius - 50};

_randomX = ((_radius*0.2) + (random (_radius*0.8))) * (sin (random 360));
_randomY = ((_radius*0.2) + (random (_radius*0.8))) * (cos (random 360));
_mpos = [((_mpos select 0) + _randomX),((_mpos select 1) + _randomY), (_mpos select 2)];

_mname = format ["mkr_c_%1-%2",_selectedC,(count (chMarkers select _selectedC))];
_marker = createMarker [_mname,_mpos];
_marker setMarkerShape "ICON";
_marker setMarkerType "mil_Dot";
_marker setMarkerColor "ColorRed";
_marker setMarkerText format ["%1m",_radius];

(chMarkers select _selectedC) pushBack _marker;