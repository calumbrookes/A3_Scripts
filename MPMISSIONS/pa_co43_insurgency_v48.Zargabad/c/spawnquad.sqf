private ["_pos1","_pos","_vehicle","_closetoTown"];

if (isnil "townMarkers") exitWith {hint "Mission is still being initialized..."};

_closetoTown = false;
{
if (player distance getmarkerpos _x < 250) then {
_closetoTown = true;
};
}foreach townMarkers;
if (!_closetoTown) exitWith {hintSilent "Must be near an insurgent controlled compound to spawn Quad"};

_pos = getpos player;
_pos1 = [_pos,1,8,1,0,2,0] call BIS_fnc_findSafePos;
_pos = [_pos1 select 0, _pos1 select 1, 0];

if (_pos1 distance player > 15) exitwith {
hintSilent "Area not clear, try again"
};
player removeAction (_this select 2);

sleep 0.5;

_vehicle = createVehicle ["O_G_Quadbike_01_F", _pos, [], 0, "NONE"];
//_vehicle setPos _pos;
clearItemCargoGlobal _vehicle;

//[[[_vehicle],{(_this select 0) allowDamage false;}],"BIS_fnc_spawn",true,true] spawn BIS_fnc_MP;
sleep 2;
if(((vectorUp _vehicle) select 2) != 0)then{ _vehicle setvectorup [0,0,0]; };


