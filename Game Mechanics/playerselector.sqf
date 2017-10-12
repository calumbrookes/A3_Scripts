// -----------------------------------------
// ---------- "Where Eagles Dare" ----------
// ---------- By Calum C. Brookes ----------
// ----------   Player Selector   ----------
// -----------------------------------------
// -------- www.combinedarms.co.uk ---------
// -----  ts3.combinedarms.co.uk:9999 ------
// -----------------------------------------
//
//
// -----------------------------------------
// INIT.SQF CALL:
// -----------------------------------------
// Place this .sqf script into the root folder of your mission, and add the following uncommented line to init.sqf:
// [] execVM "playerselector.sqf";
//
//
// Step 1: discover which players there are - look at 1TAC quarry
// Step 2: assign them to an array
// Step 3: randomly select first player
// Step 4: randomly select second player
// Step 5: reselect second player if second player is the first
// Step 6: Issue double agent briefing to doubles
// Step 7: Issue "pop up"  notification of player type

// Variable Declarations
_players = []; // array of all players
_double1 = nil; // stores double agent one
_double2 = nil; // stores double agent two

// -----------------------------------------
// STEP 1 & 2: Discover Players
// -----------------------------------------


{
	if((side _x) == east) then
	{
		_players.append(_x);
	};
} forEach allUnits;


// -----------------------------------------
// STEPS 3-5: Choose Double Agents
// -----------------------------------------


_double1 = selectRandom[_players];
_double2 = selectRandom[_players];
while {_double1 == _double2} do {
	_double2 = selectRandom[_players];
};


// -----------------------------------------
// STEP 6: ISSUE BRIEFING
// -----------------------------------------


// 


// -----------------------------------------
// STEP 7: POP UP NOTIFICATION
// -----------------------------------------


// More complicated - must be executed after game start. Probably needs a trigger to call it a few seconds into the game.