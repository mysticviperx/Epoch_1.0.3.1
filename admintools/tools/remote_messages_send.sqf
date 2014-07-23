private ["_userlist"];

while {true} do {
/*
	_userlist = playableUnits;
	{
		if (isPlayer _x) then {
			customRemoteMessage = ["commandChat", format["Say something in commandChat to %1.", (name _x)], _x];
			publicVariable "customRemoteMessage";
		};
	} forEach _userlist;
	sleep 5;

	_userlist = playableUnits;
	{
		if (isPlayer _x) then {
			customRemoteMessage = ["titleCut", format["Say something in titleCut to %1.", (name _x)], _x];		
			publicVariable "customRemoteMessage";
		};
	} forEach _userlist;
	sleep 5;

	_userlist = playableUnits;
	{
		if (isPlayer _x) then {
			customRemoteMessage = ["titleText", format["Say something in titleText to %1.", (name _x)], _x];				
			publicVariable "customRemoteMessage";	
		};
	} forEach _userlist;
	sleep 5;
*/

	customRemoteMessage = ["cutText", "Reminder: When the server is within 5 minutes of restart you should abort out of the game to ensure you do not lose equipment."];
	publicVariable "customRemoteMessage";
	sleep 10;
	
	customRemoteMessage = ["cutText", "Reminder: When the server is within 5 minutes of restart you should abort out of the game to ensure you do not lose equipment."];
	publicVariable "customRemoteMessage";
	sleep 10;	
	
	
	sleep 30;
};
 
/*
		{
          "message": "Reminder: When the server is within 5 minutes of restart you should abort out of the game to ensure you do not lose equipment.",
          "periodicMinutes": 15
        },
        {
          "message": "Donations can be made to help pay for server hosting fees here: http://insidious-dominance-clan.shivtr.com (Click on the PAYPAL Donate button on the lower left side of the page.)",
          "periodicMinutes": 63
        },
        {
          "message": "Please bookmark one of these URLs in your browser in case our IP changes in the future: http://insidious-dominance-clan.shivtr.com or http://goo.gl/xBCwyN",
          "periodicMinutes": 45
        }
*/