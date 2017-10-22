// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SIDE: WEST

// ====================================================================================

//Creating simple tasks.
//Previous examples for task creation were needlessly complicated, they don't need to be. Whilst the completion of one is handled by 
//triggers in game, it can sometimes be enough to just have them be present on a players journal, it directs them, and keeps players on task.

//It is good practice to create them in the sides briefing file, as this means it seperates them neatly, without the creation of further files.

//Tasks follow this style:

//[civilian,["task1"],["Do this and you get a cookie","Earn Cookie","cookiemarker"],[0,0,0],1,2,true] call BIS_fnc_taskCreate
//[west,["task2"],["Good luck finding this cookie","Find Cookie","cookiemarker2"],objNull,1,3,true] call BIS_fnc_taskCreate //Task without a map location

//However, we don't use the civilian or west terms, as this is the western briefing file, instead, we can do something like this:

//[group player, "AANorth", ["Destroy the AA present in Northern Aliabad", "Destroy the AA", "AANorth"], "AANorth", true] call BIS_fnc_taskCreate;
//[group player, "AASouth", ["Destroy the AA present in Southern Aliabad", "Destroy the AA", "AASouth"], "AASouth", true] call BIS_fnc_taskCreate;

//The two above would create two tasks for the Blufor team, it would create tasks for any player who also has this file directed at them, this is why 
//it is better to handle tasks in the side's relevant briefing file. For the completion of tasks, refer to the trigger present on the framework's mission.sqm 
//in game.
// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Volc - http://combinedarms.co.uk
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Friendly units in AO:<br/>
<br/>
<br/>
ROYAL NAVY<br/>
<br/>
42 (pronounced Four-Two) Commando:<br/>
1 BATALLION: Naval Assault between Airport and Harcourt Bridge, designed to block access to the Airport from the East and act as a QRF for the airfield attack<br/>
2 BATALLION: Naval Assault positions west of Kotomo and secure town of Kotomo <br/>
3 BATALLION: Naval Assault west of Oumiere and move to secure Oumiere<br/>
4 BATALLION: Naval Assault AA positions south of Georgetown and secure central Georgetown.<br/>
<br/>
Special Boat Service:<br/>
1 COMPANY: Special Forces operation to knock out Tanoa Airport before the main assault begins the landings.<br/>
<br/>
Fleet Air Arm:<br/>
847 SQUADRON: Provide fire support and helicopter transport for ground forces in support of 4 BTN RM<br/>
<br/>
<br/>
ROYAL AIR FORCE:<br/>
<br/>
54 (UAV) SQUADRON RAF: Provide fire support and reconaissance for ground forces assaulting Georgetown<br/>
17 SQUADRON RAF: Provide air superiority for the operation once the Airport and AA batteries on the west of the island have been neutralised.<br/>
<br/>
<br/>
BRITISH ARMY:<br/>
<br/>
Royal Corps of Signals:<br/>
4 COMPANY: Commence radio jamming operations at 0600HRS in advance of the invasion of Tanoa<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Mission","
<br/>
COMMANDER'S INTENT
<br/>
REGIMENTAL COMMAND intends for a naval invasion of Tanoa to take place, with the emphasis on capturing the rich economical and populated areas of the south in a single coordinated action.<br/>
4 BATALLION COMMAND intends for 4 BTN to invade the area south of Georgetown, neutralised the AA, and capture and clear the town itself. 1 COY 2 PLT will support this operation as part of a larger offensive.<br/>
<br/>
GROUND: Southwestern corner of the island of Tanoa, which in order of progression, contains a railroad yard, a thick patch of jungle, and the city of Georgetown.<br/>
SITUATION: Russian VDV units in the region, have coup'ed the military junta of Tanoa and taken control. British forces have been sent to retake Tanoa.<br/>
MISSION: Objective for 4 BTN RM is to clear the AA net over Tanoa and retake Georgetown.<br/>
EXECUTION: Beach landing against southern Tanoa. see Execution section for detailed instructions.<br/>
SUPPORT: Support in the area can be requested from 847 SQN Fleet Air Arm, or by 57 (UAV) Squadron Royal Air Force.<br/>
COMMAND: Platoon Command is the overall commander for this operation, with his Platoon Sergeant acting as the commander for the ground support elements.<br/>
SIGNALS: Each section has a mid-range radio and intra-squad short-range radios. Channel information is provided in the Radios section.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Execution","
<br/>
The plan execution comes in distinct parts.
<br/><br/>
1 - The preparation for the attack. Once ready, the platoon CO can get the boats loaded and underway from the harbour.<br/>
2 - Neutralisation of enemy AA assets. Assault the beach, and when ready, clear the AA position on the island out.<br/>
3 - FOB creation. Command + Mortar can set up camp at the AA post and coordinate from there. The Fleet Air Arm can bring supplies in here.<br/>
4 - Advance on Georgetown - if the assault goes to plan, there shouldn't be much between the AA post and the city as the Russians will pull back to defend it.<br/>
5 - Capture Georgetown - this will be a no-holds barred cityfight.<br/>
6 - Destroy the enemy CP north of the city.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Radios","
<br/>
SHORT RANGE FREQUENCIES (BLOCK/CHANNEL):<br/>
A SECTION: 1/1<br/>
B SECTION: 1/2<br/>
C SECTION: 1/3<br/>
AT SECTION: 1/4<br/>
PLT MORTAR: 1/5<br/>
PLT CO: 1/6<br/>
PLT XO: 1/7<br/>
<br/>
<br/>
LONG RANGE FREQUENCIES (CHANNEL NUMBER):<br/>
GROUND COMMAND 1 - CO/INF: CH1<br/>
GROUND COMMAND 2 - XO/AT/MTR: CH2<br/>
FORWARD AIR CONTROL - INF/FAC: CH3<br/>
FIRE SUPPORT - INF/MTR: CH4<br/>
FLEET AIR ARM - FAC/AIR: CH5<br/>
"]];

// ====================================================================================