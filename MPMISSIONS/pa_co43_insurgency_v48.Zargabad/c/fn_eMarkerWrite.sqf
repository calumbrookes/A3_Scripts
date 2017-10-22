private ["_Eside","_sleep","_mname","_hrs","_mins","_dist"];

//if doesn't exist, exit
//if (count (_this select 1)<2) exitWith{hintsilent format ["%1 does not exist",_this];}; //debug

_sleep = _this select 2;
_eSide = if(_sleep > 450)then{east} else {west};

if (side group player == _Eside) then{// debug disabled line

_mname = _this select 0;
_pos = _this select 1;
//_mname = format ["imkr_%1%2",_pos select 0,_pos select 1];

if (!(_mname in allmapmarkers)) then{
	_mkr = createMarkerLocal [_mname,_pos];
	_mname setMarkerShapeLocal "ICON";
	_mname setMarkerTypeLocal "KIA";
	_mname setMarkerColorLocal "ColorGreen";
	//_mname setMarkerSizeLocal [0.5, 0.5];
};

_mname setMarkerPosLocal _pos;

_hrs = date select 3;
_mins = ((date select 4) - round(_sleep / 60));
if (_mins<0) then {
	_mins = floor (60 + _mins);
	_hrs = _hrs - 1;
};
if (_hrs < 10) then {
_hrs = format ["0%1",_hrs];
};
if (_mins < 10) then {
_mins = format ["0%1",_mins];
};
_mname setMarkerTextLocal format ["%1:%2",_hrs, _mins];

 _dist = ROUND (player distance _pos);
if (_dist < 401) then {
	private ["_ang","_compass","_num","_strSide","_distmod"];
	
		_distmod = _dist % 50;
		_distmod = if(_distmod < 25)then{-1*_distmod} else {_distmod};
		_dist = _dist + _distmod;
		_ang = player getdir _pos;
		_ang = _ang + 11.25; 
		if (_ang > 360) then {_ang = _ang - 360};
		_points = ["N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE", "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW"];
		_num = floor (_ang / 22.5);
		_compass = _points select _num;
		_strSide = if(side group player  == west)then{"NATO HQ: INSURGENT DETECTED"} else {"INC. CALL: ENEMIES SPOTTED"};
		
	systemChat format ["%1 at T=%2:%3 ... %4m %5",_strSide, _hrs, _mins,_dist, _compass];
};
/*
[
	[
		["REC. RADIO: HQ","align = 'center' size = '0.7' font='PuristaBold'","#aaaaaa"],
		["","<br/>"],
		["MSG: INSURGENT ACTIVITY","align = 'center' size = '0.8'"],
		["","<br/>"],
		[_distdir,"align = 'center' size = '0.7'"]
	]
]
spawn BIS_fnc_typeText2;*/

}; //debug disabled line