//Written by beta
//Ideas from Sandiford
//Does not allow a player to leave the AO


private ["_sleep", "_pos", "_aoPos", "_player"];

sleep 25;  //wait until mission starts

_pos = [0,0,0];
_aoPos = [(getpos mobileHQ) select 0, (getpos mobileHQ) select 1, 0]; 
//_aoPos_wrn = [(getmarkerpos"mkr_nogo3_wrn") select 0, (getmarkerpos"mkr_nogo3_wrn") select 1, 0]; 
_sleep = 5.0;

while {true} do
{
	_player = vehicle player;
	
	if (mobileHQ getvariable "deployed" == 1) then
	{
		if ((getPosATL _player) distance (GetposATL mobileHQ) < 100) then
		{
			hintSilent "You are not allowed to get near NATO MHQ";
			_dist = 100 - (player distance _aoPos) + 25;
			_pos = [getPos _player, _dist, ([_aoPos,_player] call BIS_fnc_dirTo)] call BIS_fnc_relPos;
			_player setPos _pos;
			_sleep = 0.05;
		}
		else
		{
			_sleep = 5.0;
		};
	};
	
	sleep _sleep;
};
