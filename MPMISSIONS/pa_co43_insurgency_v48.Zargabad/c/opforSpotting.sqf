waituntil {sleep 2; !isnil "activeTowns"};

{
	if (!isnil _x) then {
	if (random(1)>0.5) then {
	_tooFar = true;
	_guy = _x;
	{
	if ((_guy distance (getmarkerpos _x)) < 400) exitWith {_tooFar = false;};
	}foreach activeTowns;
	if (_tooFar) then {
	//mark pos
	};
	};
	};
	sleep 180;
}foreach [OPFORguy1,OPFORguy2,OPFORguy3]