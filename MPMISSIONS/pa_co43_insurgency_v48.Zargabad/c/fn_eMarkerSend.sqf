private ["_grpName","_grp","_eUnits","_unit","_sleep","_eSide","_pos"];


call compile format ["
if(!isnil '%1') then
{
	_grp = %1;
};
",_this select 0];
//nick says replace with _grp = missionNamespace getVariable [_this select 0,grpNull];

_grpName = _this select 0;

// ====================================================================================

// WAIT FOR GROUP TO EXIST IN-MISSION
// We wait for the group to have members before creating the marker.

if (isNil "_grp") then
{
	call compile format ["
		waitUntil {
		sleep 3;
		if(!isnil '%1') then
		{
			count units %1 > 0
		};
		};
		_grp = %1;

	",_grpName];

};

// ====================================================================================

// EXIT FOR EMPTY GROUPS (PART I)
// If the group is empty, this script exits.

if (isnull _grp) exitWith {
//hint format ["LN 40\n%1 does not exist",_this]; //debug
sleep 30; //debug 30
[_grpName] spawn cb_fnc_eMarkerSend;
};

if (typename _grp == "GROUP") then {
	_unit = selectRandom units _grp;
} else {
	_unit = _grp;
};

if (getposatl _unit select 2 < 35) then {

	_eSide = if(side group _unit == west)then{east} else {west};
	_eUnits = [];
	{
		if (side group _x == _eSide) then {_eUnits pushback _x;};
	}foreach playableunits;

	if (_eSide == west) then {
	_sleep = 360; //debug 420 and //remind zarga
	} else {
	_sleep = 520; //debug 600
	};

	{
		if (_x distance _unit < 400) exitWith {_sleep = _sleep - 120}; //debug 120
	}foreach _eUnits;


	_mname = format ["imkr_%1",_grpName];
	
	_pos = [getpos _unit select 0,getpos _unit select 1];
	uisleep _sleep;
	[_mname,_pos,_sleep] remoteExecCall ["cb_fnc_eMarkerWrite", 0]; 
	
	//write new didn't work :(
	/*_mname setmarkerpos _pos;
	
	_hrs = date select 3;
	_mins = floor((date select 4) - _sleep / 60);
	if (_mins<0) then {
		_mins = floor (60 - _mins);
		_hrs = _hrs - 1;
	};
	if (_hrs < 10) then {
	_hrs = format ["0%1",_hrs];
	};
	if (_mins < 10) then {
	_mins = format ["0%1",_mins];
	};
	_mname setMarkerText format ["%1:%2",_hrs, _mins];
	*/
};
	
[_grpName] spawn cb_fnc_eMarkerSend;
	