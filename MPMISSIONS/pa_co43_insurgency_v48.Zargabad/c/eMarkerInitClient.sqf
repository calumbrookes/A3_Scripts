private ["_grpName"];

/*	
	//intel marker deletion
	if (side player == west) then {
		["GrpNATO_A1"] execVM "c\eMarkerInitClient.sqf";
		["GrpNATO_B1"] execVM "c\eMarkerInitClient.sqf";
		["GrpNATO_C1"] execVM "c\eMarkerInitClient.sqf";
		["GrpNATO_D1"] execVM "c\eMarkerInitClient.sqf";
	} else {
		["OPFORguy1"] execVM "c\eMarkerInitClient.sqf";	
		["OPFORguy2"] execVM "c\eMarkerInitClient.sqf";
		["OPFORguy3"] execVM "c\eMarkerInitClient.sqf";
		["OPFORguy4"] execVM "c\eMarkerInitClient.sqf";
	};	
*/

//grp or unit name
_grpName = _this select 0;

_mname = format ["imkr_%1",_grpName];

waituntil {sleep 2;(_mname in allmapmarkers)};

deletemarkerlocal _mname;