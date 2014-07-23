private ["_choppersAvailable"];

WaitUntil { !isNil 'HELIEVAC_limit'; };
_choppersAvailable = (HELIEVAC_limit > 0);
if (_choppersAvailable) then {
	"Heli Evac" hintC ["To select a destination, hold ALT and click a destination location with the mouse.", "If successful, markers will be placed on your map and green smoke will appear at the pickup location."];
	onMapSingleClick "[_pos, _alt] call HELIEVAC_call;";
	openMap true;
} else {
	cutText ["No choppers available at the moment...", "PLAIN DOWN"];
};
