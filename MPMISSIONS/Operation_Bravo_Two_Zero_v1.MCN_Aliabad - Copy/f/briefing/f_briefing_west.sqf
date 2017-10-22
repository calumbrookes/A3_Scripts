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
Idea and design by Volc (Project Awesome)
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
*** Support is available via the 3rd Royal Artillery fire support battallion, located to the north of the AO. ***
<br/><br/>
*** Extraction is by boat from the insertion point due to heavy enemy AA presence in the area. ***

"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Infiltrate AO, sabotaging enemy positions as they are encountered, cripping the enemy ability to launch SCUD missiles at coalition targets in Saudi Arabia. ***
<br/><br/>
MOVEMENT PLAN
<br/>
*** Infiltration will be by vehicle and on foot, due to the nature of the operation, the vehicles should not be used in combat. ***
<br/><br/>
FIRE SUPPORT PLAN
<br/>
*** Fire support is available from the 3rd Artillery Regiment. ***
<br/><br/>
SPECIAL TASKS
<br/>
*** Demolitions Teams are available within your detachment to help destroy enemy SCUDs without calling fire support as required. ***
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
*** Your mission, should you choose to accept it, is to infiltrate this area of Iraq, destroying the SCUD positions that Intelligence has located via aerial reconnaisance. ***
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
*** Situation is not yet FUBAR. Infiltraiting enemy territory as an SAS patrol to locate and mark SCUDs for destruction.***
<br/><br/>
ENEMY FORCES
<br/>
*** Enemy Forces are the Iraqi Republican Guard. ***
<br/><br/>
FRIENDLY FORCES
<br/>
*** Friendly Forces are comprised of the 22nd SAS Regiment Patrols in the AO, along with the 3rd Royal Artillery Fire Support Battallion. ***
"]];

// ====================================================================================