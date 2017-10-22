// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SIDE: WEST

// ====================================================================================

// TASKS
// The code below creates tasks. Two (commented-out) sample tasks are included.
// Note: tasks should be entered into this file in reverse order.

// _task2 = player createSimpleTask ["OBJ_2"];
// _task2 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task2 setSimpleTaskDestination WAYPOINTLOCATION;
// _task2 setTaskState "Created";

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Mission Maker - Volc
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Regional Command is based out of Task Force Altis HQ.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Intent is to destroy as many of the strategic targets in the area. Enemy solar towers, communications arrays, aircraft on runways, dock facilties are all to be destroyed or rendered inoperable. The enemy military base to the east of the Runway is suspicious. Domed facilities are not often equated with barracks. Your team must search the facility and report findings to command.
<br/><br/>
MOVEMENT PLAN
<br/>
Infiltration is by SDV across the water. Once on land, movement will be on foot, carefully avoiding enemy patrols unless takedown is necessary. Once the explosions go off and the enemy knows you're there, suitable helicopter extraction may be attempted. Airborne insertion before the SEAL teams hit the beach is not to be attempted under any circumstances.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
Fire Support in the area consists entirely of other commando sections and what the extraction helicopters can provide.
<br/><br/>
SPECIAL TASKS
The military facility to the East of the runway is to be infiltrated and searched. Report to command with your findings.
<br/>

"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
GROUND: Soviet-held Western Altis

SITUATION: NATO forces are preparing for an assault on Soviet-controlled Western Altis in the next few hours. Several strategic targets need to be destroyed before the raid.

MISSION: Raid a Soviet controlled airbase and support facilities in preparation for a NATO assault on West Altis. Search a suspicious nearby military facility.

EQUIPMENT: 10x Command SDV for insertion, 4x SOCOM Prototype Ghost Hawk Helicopters for extraction.

SIGNALS: Dive Radio Frequency 40 (Set using Shift-P and use CTRL+` (the button above tab) to talk).

Command Long-range on 44. Squads on 31,32,33,34.

COMMAND: Platoon commander has operational release for this mission. Platoon Commander controls all air and ground elements, reports directly to Supreme Allied Commander, Task Force Altis.

SUPPORT: 4x Ghost Hawk stealth helicopters for extraction. May also be used to deliver supply crates to troops for extra explosives prior to extract.


"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
NATO forces are preparing for an assault on Soviet-controlled Western Altis in the next few hours. Several strategic targets need to be destroyed before the raid.
<br/><br/>
ENEMY FORCES
<br/>
Enemy Forces are the 33rd Russian VDV airborne regiment who have seized the former republic of West Altis in an armed coup de etat.
<br/><br/>
FRIENDLY FORCES
<br/>
Four Ghost Hawk Helicopters and their pilots have been assigned from SOCOM to support your operation.
"]];

// ====================================================================================