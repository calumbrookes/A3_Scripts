// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction
if(count _this == 0) then
{
	_unitfaction = toLower (faction player);

	// If the unitfaction is different from the 	group leader's faction, the latters faction is used
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
}
else
{
	_unitfaction = (_this select 0);
};
// ====================================================================================
switch (_unitfaction) do
{
// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO slots.

	case "blu_f":
	{
		["GrpNATO_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_ASL", 0, "KSGT", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A1", 1, "K1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A2", 1, "K2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A3", 1, "K3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_BSL", 0, "HQSGT", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "HQ1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "HQ2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "HQ3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "PSGT", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "P1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "P2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "P3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_SWL", 0, "SWAT", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SW1", 1, "SWAT1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SW2", 1, "SWAT2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SW3", 1, "SWAT3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_SN1",  4, "SN1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SN2",  4, "SN2", "ColorRed"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitNATO_CO_M", 0, "EMT", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "EMT", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "EMT", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "EMT", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "EMT", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_SWL_M", 0, "EMT", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

		["VehNATO_TH1", 0, "CAS1", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["VehNATO_TH2", 0, "CAS2", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["VehNATO_TH3", 0, "CAS3", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["VehNATO_TH4", 0, "TH1", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["VehNATO_TH5", 0, "TH2", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

		["GCAR1", 0, "X", "ColorRed"] spawn f_fnc_localSpecialistMarker;
		["GCAR2", 0, "X", "ColorRed"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > CSAT
// Markers seen by players in CSAT slots.

	case "opf_f":
	{
		["GrpCSAT_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_CO_M", 0, "MED", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_SAFE", 0, "SAFE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_WEAP", 0, "WEAP", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_TECH", 0, "TECH", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_RIF", 0, "RIF", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

		["CACHE1", 0, "CACHE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["CACHE2", 0, "CACHE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["CACHE3", 0, "CACHE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["CACHE4", 0, "CACHE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["CACHE5", 0, "CACHE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["CACHE6", 0, "CACHE", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

		["GCAR1", 0, "X", "ColorRed"] spawn f_fnc_localSpecialistMarker;
		["GCAR2", 0, "X", "ColorRed"] spawn f_fnc_localSpecialistMarker;


	};


// ====================================================================================

// MARKERS: INDEPEDENT > AAF
// Markers seen by players in AAF slots.

	case "ind_f":
	{
	};
// ====================================================================================

// MARKERS: BLUFOR > FIA
// Markers seen by players in BLUFOR-FIA slots.

	case "blu_g_f":
	{
	};

// ====================================================================================

// MARKERS: OPFOR > FIA
// Markers seen by players in OPFOR-FIA slots.

	case "opf_g_f":
	{
	};

// ====================================================================================

// MARKERS: INDEPENDENT > FIA
// Markers seen by players in INDEPENDENT-FIA slots.

	case "ind_g_f":
	{
	};

};

// ====================================================================================


