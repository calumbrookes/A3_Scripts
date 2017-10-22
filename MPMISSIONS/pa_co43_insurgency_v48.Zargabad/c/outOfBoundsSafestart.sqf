//Written by beta
//Ideas from Sandiford
//Does not allow a player to leave the AO


//add to init.sqf:
//    if (!isdedicated) then { [] execVM "outOfBoundsSafestart.sqf";};


private ["_sleep", "_pos", "_aoPos", "_player","_marker"];

sleep 5;  //wait until mission starts

waituntil {!isnil "pv_mission_timer"};

_marker = "aolimit1"; //change this variable to the marker of your desire. Make sure it has a size
_pos = [0,0,0];
_aoPos = [(getmarkerpos _marker) select 0, (getmarkerpos _marker) select 1, 0]; 
_sleep = 15.0;

while {pv_mission_timer > 0} do
{
	_player = vehicle player;

		if (!([getPos _player, _marker] call CBA_fnc_inArea)) then
		{
			hintSilent "You are not allowed to leave safestart zone";
			_dist = ((getmarkersize _marker) select 0) - (player distance _aoPos) - 25;
			_pos = [getPos _player, _dist, ([_aoPos,_player] call BIS_fnc_dirTo)] call BIS_fnc_relPos;
			_player setPos _pos;
			_sleep = 0.05;
		}
		else
		{
			_sleep = 15.0;
		};
	
	sleep _sleep;
};

deletemarker _marker;