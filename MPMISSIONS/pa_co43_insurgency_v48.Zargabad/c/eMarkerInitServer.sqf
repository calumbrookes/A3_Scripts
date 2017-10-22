private ["_grpName"];

//grp or unit name
_grpName = _this select 0;


_mname = format ["imkr_%1",_grpName];

if (!(_mname in allmapmarkers)) then{
	_mkr = createMarker [_mname,[0,0]];
	_mname setMarkerShape "ICON";
	_mname setMarkerType "KIA";
	_mname setMarkerColor "ColorGreen";
	//_mname setMarkerSizeLocal [0.5, 0.5];

	[_grpName] spawn cb_fnc_eMarkerSend;

};