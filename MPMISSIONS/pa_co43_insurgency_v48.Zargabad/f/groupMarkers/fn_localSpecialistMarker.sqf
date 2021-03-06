// F3 - Folk Unit Markers for Specialists
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE PRIVATE VARIABLES

private ["_unt","_mkrType","_mkrText","_mkrColor","_mkrName","_mkr","_untName","_vehDelay"];

// ====================================================================================

// SET KEY VARIABLES
// Using variables passed to the script instance, we will create some local variables:

call compile format ["
if(!isnil '%1') then
{
	_unt = %1;
};
",_this select 0];

_untName = _this select 0;
_mkrType = _this select 1;
_mkrText = _this select 2;
_mkrColor = _this select 3;
_mkrName = format ["mkr_%1",_untName];
_vehDelay = 0;
// ====================================================================================

// WAIT FOR UNIT TO EXIST IN-MISSION
// We wait for the unit to exist before creating the marker.

if (isNil "_unt") then
{
	call compile format ["
		waitUntil {
		sleep 3;
		!isnil '%1'
		};
		_unt = %1;

	",_untName];
};

// ====================================================================================

// EXIT FOR DEAD UNITS (PART I)
// If the unit is dead, this script exits.

if (!alive _unt) exitWith {};

// ====================================================================================

// CREATE MARKER
// Depending on the value of _mkrType a different type of marker is created.

switch (_mkrType) do
{

// Medics
	case 0:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_med";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.5, 0.5];
		_mkrName setMarkerTextLocal _mkrText;
	};
// UAV Operator
	case 1:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_uav";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.5, 0.5];
		_mkrName setMarkerTextLocal _mkrText;
	};
// tank
	case 2:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_armor";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.75, 0.75];
		_mkrName setMarkerTextLocal _mkrText;
		_vehDelay = 600 - (getNumber (missionconfigfile >> "RespawnDelay"));
	}; 
// heli
	case 3:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_air";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.75, 0.75];
		_mkrName setMarkerTextLocal _mkrText;
		_vehDelay = 900 - (getNumber (missionconfigfile >> "RespawnDelay"));
	}; 
// MHQ
	case 4:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_hq";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [1, 1];
		_mkrName setMarkerTextLocal _mkrText;
		_vehDelay = 3 - (getNumber (missionconfigfile >> "RespawnDelay"));
	}; 
// heli SMALL
	case 5:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_air";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.6, 0.6];
		_mkrName setMarkerTextLocal _mkrText;
		_vehDelay = 180 - (getNumber (missionconfigfile >> "RespawnDelay"));
	}; 
// heli
	case 6:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos _unt select 0),(getPos _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_plane";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.75, 0.75];
		_mkrName setMarkerTextLocal _mkrText;
		_vehDelay = 900 - (getNumber (missionconfigfile >> "RespawnDelay"));
	}; 
};

// ====================================================================================

// UPDATE MARKER POSITION
// As long as certain conditions are met (the unit is alive) the marker
// position is updated periodically. This only happens locally - so as not to burden
// the server.

while {alive _unt} do
{
	_mkrName setMarkerPosLocal [(getPos _unt select 0),(getPos  _unt select 1)];
	//if (isObjectHidden _unt) then {_mkrName setMarkerAlphaLocal 0.4;} else {_mkrName setMarkerAlphaLocal 1;}; //needed for insurgency clientside caching
	sleep 6;
};
	_mkrName setMarkerPosLocal [0,0];
// ====================================================================================

// RESET MARKER FOR RESPAWNING UNITS
// If respawn is enabled we need to reset the marker should the unit die

// Sleep for the set respawn delay plus a small grace period
sleep ((getNumber (missionconfigfile >> "RespawnDelay")) + 10 + _vehDelay);

// Re-compile the unit variable using the initially passed string
call compile format ["
		waitUntil {
		sleep 0.1;
		!isnil '%1'
		};
		_unt = %1;

	",_untName];

// Check again if the unit is alive, if yes restart the marker function
if (alive _unt) exitWith {
	[_untName, _mkrType, _mkrText, _mkrColor] spawn f_fnc_localSpecialistMarker;
};

_mkrName setMarkerPosLocal [0,0];
call compile format ["
		waitUntil {
		sleep 60;
		!isnil '%1'
		};
		_untName = %1;

	",_unt];

[_untName, _mkrType, _mkrText, _mkrColor] spawn f_fnc_localSpecialistMarker;

