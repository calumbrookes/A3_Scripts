_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_gen removeAction _id;

[cmdtruck,nil,["mast_handler",1]] call BIS_fnc_initVehicle;

_genAct = cmdtruck addAction ["Retract Mast", "mretract.sqf"];