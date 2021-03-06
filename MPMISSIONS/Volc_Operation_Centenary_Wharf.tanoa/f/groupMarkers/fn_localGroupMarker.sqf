// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE PRIVATE VARIABLES

// ====================================================================================

// SET KEY VARIABLES
// Using variables passed to the script instance, we will create some local variables:

params["_grpName",["_mkrType","b_hq"],"_mkrText",["_mkrColor","ColorBlack"]];

private _grp = missionNamespace getVariable [_grpName,grpNull];
private _mkrName = format ["mkr_%1",_grpName];

// ====================================================================================

// WAIT FOR GROUP TO EXIST IN-MISSION
// We wait for the group to have members before creating the marker.

if (isNull _grp) then
{
	waitUntil { sleep 3; _grp = missionNamespace getVariable [_grpName,grpNull]; count (units _grp) > 0 };
};

// ====================================================================================

// EXIT FOR EMPTY GROUPS (PART I)
// If the group is empty, this script exits.

if (isnil "_grp") exitWith {};

// ====================================================================================
// Create groupID
// Allows for defining it based on mapmarkers, which is a shorthand identifier anyways.
// Deprecated! Now GroupIDs(and marker text!) are set in eden instead! To use the old system just uncomment the line below.  
//_grp setGroupId [format ["%1",_mkrText],"GroupColor0"];
_newmkrText = groupId _grp;
// ====================================================================================
// CREATE MARKER
// Depending on the value of _mkrType a different type of marker is created.

_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
_mkr setMarkerShapeLocal "ICON";
_mkrName setMarkerTypeLocal  _mkrType;
_mkrName setMarkerColorLocal _mkrColor;
_mkrName setMarkerSizeLocal [0.8, 0.8];
_mkrName setMarkerTextLocal _newmkrText;

// ====================================================================================

// UPDATE MARKER POSITION
// As long as certain conditions are met (the group exists) the marker
// position is updated periodically. This only happens locally - so as not to burden
// the server.

while {true} do
{
    if ({!isNull _x} count units _grp <= 0) then {
        _mkrName setMarkerAlphaLocal 0;
    } else
    {
        _mkrName setMarkerAlphaLocal 1;
    };

	_mkrName setMarkerPosLocal [(getPos leader _grp select 0),(getPos leader _grp select 1)];
    _newmkrText = groupId _grp;
    _mkrName setMarkerTextLocal _newmkrText;
	sleep 2;
};

// ====================================================================================
