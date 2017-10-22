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
Credit to Enzo for his assistance in creating the mission, thanks to the rest of the Mod team for help building the EPIC HYPE TRAIN that this mission necessitated.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
RADIO FREQUENCIES
<br/><br/>
LONG RANGE
<br/>
CO COMMAND NET - 44<br/>
XO COMMAND NET - 45<br/>
FAC/JTAC NET - 46<br/>
AIR CONTROL NET - 45<br/>
<br/><br/>
SHORT RANGE
<br/>
COMMAND SR - 30<br/>
<br/>
ALPHA SL - 31<br/>
ALPHA 1 - 31.1<br/>
ALPHA 2 - 31.2<br/>
ALPHA 3 - 31.3<br/>
<br/>
BRAVO SL - 32<br/>
BRAVO 1 - 32.1<br/>
BRAVO 2 - 32.2<br/>
BRAVO 3 - 32.3<br/>
<br/>
CHARLIE SL - 33<br/>
CHARLIE 1 - 33.1<br/>
CHARLIE 2 - 33.2<br/>
CHARLIE 3 - 33.3<br/>
<br/>
MURRAY 1-1 - 34.1<br/>
MURRAY 1-2 - 34.2<br/>
MURRAY 1-3 - 34.3<br/>
MURRAY 1-4 - 34.4<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
OBJECTIVES
<br/><br/>
* Destroy Donde Cartel processing plants. Destroy or airlift barrel crates of cocaine out of the AO to seize as much of the cartel's financial assets as possible.
<br/><br/>
* Cripple the Donde Cartel air operations to prevent further product being smuggled out.
<br/><br/>
* Destroy other Cartel facilities as appropriate.
<br/><br/>
* Cartel forces on the Island will be asleep when the operation commences. Extract within one hour of first target engagements before they can organise against you. Taking out Cartel communications towers will buy you more time to complete the operation.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
GROUND
<br/><br/>
The Pacific Ocean islands of the Tanoa island chain.
<br/><br/>
SITUATION
<br/><br/>
A recent increase in organised crime undertakings in the Tanoa islands have resulted in massive gains in control for the Donde Cartel, who have experienced an explosive increase in market share in the United States, and their new-found wealth has brought Tanoa's government to it's knees through a systematic program of corruption, bribery and extortion. Tanoan officians are currently turning a blind eye to the Cartel's massive operations, storing, processing and exporting massive amounts of cocaine through the Island haven, before smuggling it from here into the continental United States of America.
<br/><br/>
MISSION
<br/><br/>
UN approval has been given for the US Drugs Enforcement Agency to deploy a FAST (Foreign-Deployed Advisory and Support Team) group to Tanoa to conduct anti-drugs operations against the Donde Cartel, and to cripple their operations on Tanoa sufficiently that the Cartel will be unable to operate in the area.
<br/><br/>
EQUIPMENT
<br/><br/>
The US Government has generously supplied the DEA with several cutting-edge pieces of equipment to aid the decisive strike against the Dondes. VTOL strike aircraft, SOCOM strike boats and UAV recon elements are all on station to round out the force's capabilities.
<br/><br/>
SIGNALS
<br/><br/>
Each DEA FAST team will employ a dedicated JTAC (Joint Terminal Attack Controller) within the team to coordinate Air assets and to relay strike requests to the CAS units. In addition to this, each FAST team's Squad Leader will be in communications with the command group. Radio frequencies are under the Administration section.
<br/><br/>
COMMAND
<br/><br/>
The Special-Agent-In-Charge of the DEA Operation will be supported by an Executive Officer to assist him in managing the ground force movements, and a Forward Air Controller to coordinate the Air assets and communicate with the JTACs in the field.
<br/><br/>
SUPPORT
<br/><br/>
The air assets deployed as part of the DEA FAST group will be the only support available on station. Extra assets may be released by the US DoD depending upon operational circumstances, the *Harry S. Truman* Carrier Group is in the area and can provide support on request.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Terrain: Tanoa
<br/><br/>
IN-GAME TIME: Mid-day, clear.
<br/><br/>
BASIC ACE MEDICAL
<br/><br/>
* Resupply is available via sling-loadable crates.
<br/><br/>
* V-44 crew can insert vehicles as necessary.
<br/><br/>
* Air crews may change vehicle but must respawn as infantrymen, all crews will need to be rescued or risk losing your air capacity.
<br/><br/>
ENEMY FORCES
<br/><br/>
* Donde Cartel militia
<br/><br/>
* Light IFV presence in the form of technicals
<br/><br/>
* Light to no air threat expected in the area. Expect there to be a light black-market-acquired AA threat present in the AO.
<br/><br/>
FRIENDLY FORCES
<br/>
* 6x DEA FAST teams
<br/>
* 3x Ghost Hawk helicopters
<br/>
* 1x V-44 VTOL support unit
"]];

// ====================================================================================