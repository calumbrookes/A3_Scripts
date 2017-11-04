

// in the init of the object (Land_DataTerminal_01_F):
[[this,["Open","DataTerminal\OpenTerminal.sqf"]],"addAction",true] call BIS_fnc_MP; [this,"purple","red","purple"] call BIS_fnc_DataTerminalColor;
// Make a folder named: DataTerminal
 
//inside the folder named DataTerminal put these 2 files:
 

//
// OpenTerminal.sqf
//


_object = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_object removeaction _id;
[_object,3] call BIS_fnc_dataTerminalAnimate;
sleep 2;
with uiNamespace do {
     disableserialization; //thank you so much tankbuster
    _object setObjectTexture [0,"\A3\Missions_F_EPA\video\A_in_intro.ogv"]; 
    1100 cutRsc ["RscMissionScreen","PLAIN"];
    _scr = BIS_RscMissionScreen displayCtrl 1100;
    _scr ctrlSetPosition [-10,-10,0,0];
    _scr ctrlSetText "\A3\Missions_F_EPA\video\A_in_intro.ogv";
    _scr ctrlAddEventHandler ["VideoStopped", {
        (uiNamespace getVariable "BIS_RscMissionScreen") closeDisplay 1;
    }];
    _scr ctrlCommit 0;
};
sleep 10;
_closeaction = [[_object,["Close","DataTerminal\CloseTerminal.sqf"]],"addAction",true] call BIS_fnc_MP;


//
// CloseTerminal.sqf
//


_object = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_object removeaction _id;
[_object,0] call BIS_fnc_dataTerminalAnimate;
sleep 10;
_openaction = [[_object,["Open","DataTerminal\OpenTerminal.sqf"]],"addAction",true] call BIS_fnc_MP;
OpenTerminal.sqf (alternative version)
_object = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_object removeaction _id;
[_object,3] call BIS_fnc_dataTerminalAnimate;
sleep 2;
with uiNamespace do {
     disableserialization; //thank you so much tankbuster
    _object setObjectTexture [0,"\A3\Missions_F_EPA\video\A_in_intro.ogv"];
    _object setObjectTexture [1,"\A3\Missions_F_EPA\video\A_in_intro.ogv"]; ////added this texture selection to make both monitors showing the video
    1100 cutRsc ["RscMissionScreen","PLAIN"];
    _scr = BIS_RscMissionScreen displayCtrl 1100;
    _scr ctrlSetPosition [-10,-10,0,0];
    _scr ctrlSetText "\A3\Missions_F_EPA\video\A_in_intro.ogv";
    _scr ctrlAddEventHandler ["VideoStopped", {
        (uiNamespace getVariable "BIS_RscMissionScreen") closeDisplay 1;
    }];
    _scr ctrlCommit 0;
};
sleep 10;
_closeaction = [[_object,["Close","DataTerminal\CloseTerminal.sqf"]],"addAction",true] call BIS_fnc_MP;