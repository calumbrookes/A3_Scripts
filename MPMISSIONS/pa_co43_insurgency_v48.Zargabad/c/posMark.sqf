//nul = this execVM "c\posMark.sqf";

_mname = format ["mrk_%1",_this];
_marker = createMarkerlocal [_mname,( (_this select 0))];
_marker setMarkerShapelocal "ICON";
_mname setMarkerTypelocal "mil_dot";
_mname setMarkercolorlocal "ColorWHITE";
/*
while {alive _this} do {
sleep 5;
_mname setmarkerpos ( (_this));
};
deletemarker _mname;