//_mantobemoved = _this select 1;

if (isnil "activeTowns") exitWith {hint "Mission is still being initialized..."};

if (lastSquadTP+180>diag_tickTime) exitWith {
hintsilent format ["Teleport will be available in %1 seconds",ceil(lastSquadTP+180 - diag_tickTime)];
};

if (!click) exitWith {openMap true;};

click = false;
{
if (side group _x == west) then {
		if (player distance _x < 320) exitWith {click = true;};
	};
}foreach playableunits - [player];
if (click) exitWith {hint "BLUFOR neaby!\n\nCan't teleport now"};


tpMarkers = [];
{
	_mname = format ["tp%1",_x];
	_markertemp = createMarkerLocal [_mname,getmarkerpos _x];
	_markertemp setMarkerShapeLocal "ELLIPSE";
	_markertemp setMarkerColorLocal "ColorBlack";
	_markertemp setMarkerBrushLocal "DiagGrid"; 
	_markertemp setMarkerSizeLocal [250,250]; 
	tpMarkers pushback _markertemp;
}foreach activeTowns;

//if(isDedicated) exitWith{};
hint parsetext format [
"<t size=2 align=left>
Teleport (FAQ)
</t>
<t align=left>
<br/>
<br/>
- Open your map
<br/>
<br/>
- Click on the location you wish to go to 
<br/>
- Must be within black markers
<br/>
- Can not teleport when enemies are within 320m of player
<br/>
- Can not teleport when enemies are within 175m of target
<br/>
- When friendlies nearby, reduced to 70m
<br/>
<br/>
- Your map will be closed
<br/>
<br/>
- Voila! You should now be in the location you clicked.
"];

openMap true;
click = false; 
_starttime = diag_tickTime;

onMapSingleClick "
	_poscheck = _pos;
{
if (_poscheck distance getmarkerpos _x < 250) exitWith {
	click = true;
	_bludist = 175;
	{
	if (side group _x == east) then {
		if (_poscheck distance _x < 50) exitWith {_bludist = 70; _poscheck = getposatl _x;};
	};
	}foreach allunits - [player];
	{
	if (side group _x == west) then {
		if (_poscheck distance _x < _bludist) exitWith {click = false;};
		if (player distance _x < 320) exitWith {click = false;};
	};
	}foreach playableunits - [player];
};
}foreach activeTowns;

if (!click) exitWith {hint 'Teleport failed!\n\n There may be enemies nearby, \n\n Try again!'};

player setPosatl _poscheck; 

lastSquadTP = diag_tickTime - 195;
onMapSingleClick '';

hint parsetext format [
'<t size=2 align=left>
Teleported!
'];
true;
";

waitUntil {click || (_starttime + 30 < diag_tickTime)};
if (!click) then {
	click = true;
	onMapSingleClick "";
	hint parsetext format [
	"<t size=2 align=left>
Teleport aborted
	</t>
	<t align=left>
	<br/>
	<br/>
	You've waited too long to click.
	<br/>
	Try again.
	"];
} else {
sleep .6;
openMap false;
};


{
deletemarker _x;
}foreach tpMarkers;
tpMarkers = [];