// Thanks to SilverShot for starting this script.
// Anti-Theft (Backpack) by Hayward

_fix = false;
while { !canbuild } do
{
	sleep 0.2;
	
// Check if target is player and alive
 if (alive cursorTarget && (cursorTarget isKindOf "Man")) then { 
                         
        if( !isNull (FindDisplay 106) ) then
	{
		if( !_fix ) then
		{
			player action ["GEAR", ""];
			titleText["\n\nYou can only access your own gear!", "PLAIN DOWN",0];
			_fix = true;
		};
	} else {
		if( _fix ) then
		{
			_fix = false;
		};
	};


     // If target is not a player then do nothing
     } else {
                }; 

}; 