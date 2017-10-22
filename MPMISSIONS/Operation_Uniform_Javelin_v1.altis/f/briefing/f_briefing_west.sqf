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
*** Developed by Volc Industries ***
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
The Task Force is split into two groups - Parachute Regiment detachment, and the SAS detachment. Each of these have a commander. The Task Force itself then has an overall commander too.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
A new style stealh helicopter has been shot down whilst conducting technically illegal operations on the Russian-Held side of Altis. Our mission is to destroy the wreckage at the crash site, and to recover the pilot. An SAS team as part of the detachment will cause a distraction by destroying the enemy communications network and providing support. 
<br/><br/>
MOVEMENT PLAN
<br/>
The Parachute Regiment team will insert over DZ BURGUNDY by parachute and move north to secure the crash site. Depending on numbers, an SAS Strike Team might be able to take this objective. Once the crash site is secure, the Parachute Regiment detachment should seek to move West to secure the pilot at the POW camp and bring him to LZ TAN for extraction.
<br/>
The remaining SAS Strike Teams will insert by paracute into LZ TAN and move south to eliminate the communications towers. These towers are quite sturdy and may require several demolition charges to render inoperable. Once they have destroyed the comms stations they should secure LZ TAN for the entire force's extraction by helicopter.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
No Fire Support is available for this covert mission. Air Extraction for smaller teams is avaiable by a Royal Navy Lynx Wildcat Squadron nearby, and larger groups have access to an RAF Merlin Squadron in the AO.
<br/><br/>
SPECIAL TASKS
<br/>
North of the AO is a suspicious enemy command center built into an old mine shaft. Destroying their support & communications vans should render the site inoperable long enough to allow you to extract from the AO easier in the resulting confusion.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
The task force mission is to prevent the pilot from being interrogated by any means, and to destroy the experimental helicopter's wreck to prevent technical analysis. Destruction of the enemy command and control facilties, as well as their communications arrays are considered to be secondary objectives to be taken if the opportunity arises.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Experimental strike helicopter, Callsign 'BERLIN', has been downed in the AO, and must not be allowed to fall into the hands of the enemy. Your mission is to destroy the wreck, and to rescue the pilot to prevent him from being interrogated about the helicopter's capabilities.
ENEMY FORCES
<br/>
Enemy Forces in the area consist of the 21st Guards Regiment, a detachment of the Soviet Army sent to secure the Russian-Held part of Altis.
<br/><br/>
FRIENDLY FORCES
<br/>
Friendly Forces consist of three Strike Teams of the 22nd SAS Regiment, a platoon of the 2nd Brigade, Royal Parachute Regiment, and their associated command units, as well as a Royal Navy Lynx Wildcat squadron, and an RAF Merlin HC1 squadron for extract.
"]];

// ====================================================================================