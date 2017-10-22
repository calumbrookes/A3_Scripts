// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SIDE: EAST

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
Created by Volc for Combined Arms (http://www.reddit.com/r/combinedarms)
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
4x Allied Infiltration Teams to be inserted.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Commander intends for the team to infiltrate Schloss Adler and retrieve both the Enigma codebook and the Abwehr Agents list before escaping the area.
<br/><br/>
MOVEMENT PLAN
<br/>
Infantry will be inserted by parachute in the valley north of the Schloss Adler. They will be in enemy territory from the very beginning.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
There is no fire support available for this mission.
<br/><br/>
SPECIAL TASKS
<br/>
The units should ensure that as much of the Anti-Aircraft facilities of the Schloss are destroyed as possible, although this is not a priority. The priority remains the retrieval of the Enigma Codebook and the Agents List.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
The mission, is to retrieve the Abwehr Agents List and the Enigma Codebook from the Schloss Adler. The infantry should seek to find a way to access the Schloss before their position is revealed. 
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The year is 1943. The German Reich occupies most of Europe.
<br/><br/>
ENEMY FORCES
<br/>
The Schloss Adler is occupied by a guard force consisting of Wehrmacht infantry seconded to the Abwehr, and a detachment of Elite Waffen SS soldiers.
<br/><br/>
FRIENDLY FORCES
<br/>
The nearest Allied position is Kent, some distace away from you here in Bavaria.
"]];

// ====================================================================================
