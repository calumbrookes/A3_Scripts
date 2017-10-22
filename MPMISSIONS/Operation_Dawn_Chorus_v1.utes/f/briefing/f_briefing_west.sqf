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
*** Supplies will be available via USS Khe Sahn and her helicopter complement. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Assault Island of Utes, destroy as many targets as opportunity allows, exfil back to Khe Sahn either by submarine or by helicopter. ***
<br/><br/>
MOVEMENT PLAN
<br/>
*** Submarines available off the bow of the Khe Sahn for Infil, helicopters or Submarines available for extraction ***
<br/><br/>
FIRE SUPPORT PLAN
<br/>
*** No fire support is available, this is a covert operation ***
<br/><br/>
SPECIAL TASKS
<br/>
*** All teams will destroy targets as designated by the Commanding Officer ***
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
*** This operation is to destroy targets available on the island of Utes. The infiltration by sea will take place via the SDVs at the bow of the ship. After destroying targets of opportunity, your team will extract via the SDVs they came in with, or by helicopter, after taking out the AA emplacements. ***
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
*** Preemptive Strike against a Russian airbase in the North Atlantic, known to be supporting ICBM launchers and ground-attack aircraft. ***
<br/><br/>
ENEMY FORCES
<br/>
*** 1st Russian VDV regiment airbase on Utes ***
<br/><br/>
FRIENDLY FORCES
<br/>
*** The USS Khe Sahn, her air complement, and the joint UK-US Delta Force/SAS strike team comprise the friendly forces available. ***
"]];

// ====================================================================================