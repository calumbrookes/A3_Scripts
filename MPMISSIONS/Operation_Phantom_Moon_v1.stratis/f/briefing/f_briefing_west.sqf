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
Created by Volc Industries for Project Awesome (Teamspeak: projectawesome.net)
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
All equipment available to the strike force has been deposited onshore by the commando group.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Command has tasked us with a strike operation to assassinate the Commander of RFS Kharkov, and to disrupt enemy AA operations in the area in preparation for an assault.
<br/><br/>
MOVEMENT PLAN
<br/>
Movement will be by SDV, inserting at points chosen by command in the field, to strike against as many of the enemy targets as possible before withdrawing from the area.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
To preserve the element of surprise, fire support is unavailable for this operation.
<br/><br/>
SPECIAL TASKS
<br/>
Destroying the comms towers on the island will facilitate easier extraction from the area and disrupt the enemy AA net, control structures, and airbase operations.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Your mission is to assassinate the commander of RFS Kharkov, the commanding officer of the russian forces based on Stratis in order to facilitate an allied assault on the island.
<br/>
<br/>
In order to support an allied attack, the secondary targets on the island are arranged as follows;
<br/><br/>
PRIORITY TARGETS: Naval RADAR facility, AA Control Centre, Enemy Command Centre, Enemy SCUD missile batteries.
<br/><br/>
SECONDARY TARGETS: Any single one of the Comms Towers, plus the destruction of Artillery facilties and Airbase supporting facilties. Destruction of the AA RADAR sites.
<br/><br/>
TERTIARY TARGETS: Complete Destruction of the Comms Arrays as well as the Naval Spotting Array Pair on islands to the north of Stratis. Elimination of all Enemy AA Sites in the area.
<br/><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
*** Insert general information about the situation here.***
<br/><br/>
ENEMY FORCES
<br/>
1st Russian VDV Rgt is guarding the airbase and surrounding area.
33rd Russian Gds Rgt is patrolling the island.
No. 84 Squadron VVS maintains a large fighter presence at the airbase.
No. 66 Squadron VVS has a few helicopter units at the airbase.
No. 27 Squadron VVS comprises of a handful of ground and naval strike airframes at the airbase.
The crew of the RFS Kharkov are also present within the naval area of the airbase..
<br/><br/>
FRIENDLY FORCES
<br/>
Friendly forces for this operation are a commando force comprised of US Navy Seals, Delta Force operators, members of the Special Air Service regiment, as well as Royal Marine Commandos and a detachment of the Special Boat Service.
"]];

// ====================================================================================