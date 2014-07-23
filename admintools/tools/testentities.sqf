_nearbyentities = player nearEntities [["CAManBase"],1000];

{
/* 	switch (side _x) do
	{
		case west    : {};
		case east    : {};
		case civilian    : {};
		case resistance    : {};
		case sidelogic    : {};
		case friendly    : {};
		case enemy    : {};
		case Unknown    : {};
	}; */
		
	diag_log ("Name: " + (name _x) + " - Type: " + (typeOf _x) + " - Side: " + (format["%1",side _x]) + " - Rating: " + (format["%1",rating _x]));
} foreach _nearbyentities;


{
	diag_log ("Name: " + (name _x) + " - Type: " + (typeOf _x) + " - Side: " + (format["%1",side _x]) + " - Rating: " + (format["%1",rating _x]));
} forEach allMissionObjects "zZombie_Base"; // attacks zombies yo