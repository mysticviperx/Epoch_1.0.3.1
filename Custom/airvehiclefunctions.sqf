private ["_vehicleActionsRemoved","_startLogged","_evacCallerID","_evacCallerUID","_evacFields","_evacFieldID","_ownerKeyId","_itemsPlayer","_temp_keys","_key_colors","_hasKey","_cTarget","_vehicleKey","_evacChopperConfigArray","_hasRadio"];
waitUntil {!isNil "dayz_animalCheck"};
_startLogged = false;

/////////////////////////////////////////////////
/////////////////////////////////////////////////
// Edit these settings to fit your needs/likes //
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/// Amount of Briefcases a Evac-Chopper costs ///
/////////// Any amount between 1-12 /////////////
evac_chopperPrice = 3;
/////////////////////////////////////////////////
////// Need a Radio to call Evac-Chopper? ///////
////// 1 = Need Radio | 0 = No need Radio ///////
evac_needRadio = 0;
/////////////////////////////////////////////////
// Evac-Zone marker type Smoke or Landingpad? ///
////////// 0 = Landingpad | 1 = Smoke ///////////
evac_zoneMarker = 0;
/////////////////////////////////////////////////
/////////////// DONT EDIT BELOW ! ///////////////
/////////////////////////////////////////////////


//Checking if player has a Evac-Chopper to decide if we show the Call-Evac action menu
_evacCallerID = (player getVariable ["CharacterID","0"]);
_evacCallerUID = (getPlayerUID player);
playerHasEvacField = false;
_evacFields = nearestObjects [player, ["HeliHRescue"], 20000];
if ((count _evacFields) > 0) then
{
	{
		_evacFieldID = _x getVariable ["CharacterID", "0"];
		if (_evacCallerID == _evacFieldID || _evacCallerUID == _evacFieldID) then {
			playerHasEvacField = true;
		};
	} forEach _evacFields;
};

while{true} do {
	sleep 3;
	if (vehicle player != player && vehicle player isKindOf "Air") then {
		if (vehicle player isKindOf "MV22_DZ") then {
			_vehicleActionsRemoved = 0;
			themv22 = vehicle player;
			if ((((getPosATL themv22) select 2) >= 25 || speed themv22 > 5)&& ((themv22 animationPhase "turn_wing") == 1)) then {
				themv22 animate["engine_prop_1_1_turn",0];  
				themv22 animate["engine_prop_1_2_turn",0];  
				themv22 animate["engine_prop_1_3_turn",0];  
				themv22 animate["engine_prop_2_1_turn",0];  
				themv22 animate["engine_prop_2_2_turn",0];
				themv22 animate["engine_prop_2_3_turn",0];  
				themv22 animate["engine_prop_1_1_close",0];
				themv22 animate["engine_prop_1_3_close",0];  
				themv22 animate["engine_prop_2_1_close",0];  
				themv22 animate["engine_prop_2_2_close",0];
				themv22 animate["pack_engine_1",0];
				themv22 animate["pack_engine_2",0];    
				themv22 animate["turn_wing",0];			
				//_xtype = [themv22,0] execvm "\ca\air2\mv22\scripts\pack.sqf"
			};
			if (mv22_gotosidegunner <0) then {
				mv22_gotosidegunner = themv22 addAction ["Get in Sidegunner Position","custom\mv22\movetosidegunner.sqf",themv22,6,false,false,"","(player in (crew themv22)) && (player != driver themv22) && (alive themv22) && (themv22 getVariable [""sidegundeployed"", 0] == 0)"];
			};
			if (mv22_gotoreargunner <0) then {
				mv22_gotoreargunner = themv22 addAction ["Get in Reargunner Position","custom\mv22\movetoreargunner.sqf",themv22,6,false,false,"","(player in (crew themv22)) && (player != driver themv22) && (alive themv22) && (themv22 getVariable [""reargundeployed"", 0] == 0)"];
			};
			if (mv22_fold <0) then {
				mv22_fold = themv22 addAction ["Fold Wings and Rotor","custom\mv22\fold.sqf",themv22,5,false,false,"","(speed themv22 <= 5) && (player==driver themv22) && (themv22 animationphase ""turn_wing"" == 0) && (((getPosATL themv22) select 2) < 25)"];
			};
			if (mv22_unfold <0) then {
				mv22_unfold = themv22 addAction ["UnFold Wings and Rotor","custom\mv22\unfold.sqf",themv22,5,false,false,"","(speed themv22 <= 5) && (player==driver themv22) && (themv22 animationphase ""turn_wing"" == 1) && (((getPosATL themv22) select 2) < 25)"];
			};
			if (mv22_openramp <0) then {
				mv22_openramp = themv22 addAction ["Open Rear Gunner Ramp","custom\mv22\openramp.sqf",themv22,5,false,false,"","(player==driver themv22) && (themv22 animationphase ""ramp_bottom"" == 0)"];
			};
			if (mv22_closeramp <0) then {
				mv22_closeramp = themv22 addAction ["Close Rear Gunner Ramp","custom\mv22\closeramp.sqf",themv22,5,false,false,"","(player==driver themv22) && (themv22 animationphase ""ramp_bottom"" == 1)"];
			};
			if (mv22_opendoor <0) then {
				mv22_opendoor = themv22 addAction ["Open Gunner Door","custom\mv22\opendoor.sqf",themv22,5,false,false,"","(player==driver themv22) && (themv22 animationphase ""door1_bottom"" == 0)"];
			};
			if (mv22_closedoor <0) then {
				mv22_closedoor = themv22 addAction ["Close Gunner Door","custom\mv22\closedoor.sqf",themv22,5,false,false,"","(player==driver themv22) && (themv22 animationphase ""door1_bottom"" == 1)"];
			};
		};
		if (vehicle player isKindOf "C130J_US_EP1") then {
			_vehicleActionsRemoved = 0;
			thec130 = vehicle player;
			if (c130_openramp <0) then {
				c130_openramp = thec130 addAction ["Open Cargo Ramp","custom\c130\openramp.sqf",thec130,5,false,false,"","(player==driver thec130) && (thec130 animationphase ""ramp_bottom"" == 0)"];
			};
			if (c130_closeramp <0) then {
				c130_closeramp = thec130 addAction ["Close Cargo Ramp","custom\c130\closeramp.sqf",thec130,5,false,false,"","(player==driver thec130) && (thec130 animationphase ""ramp_bottom"" == 1)"];
			};
			if (c130_openrdoor <0) then {
				c130_openrdoor = thec130 addAction ["Open Doors","custom\c130\openrdoor.sqf",thec130,5,false,false,"","(player==driver thec130) && (thec130 animationphase ""door_2_2"" == 0)"];
			};
			if (c130_closerdoor <0) then {
				c130_closerdoor = thec130 addAction ["Close Doors","custom\c130\closerdoor.sqf",thec130,5,false,false,"","(player==driver thec130) && (thec130 animationphase ""door_2_2"" == 1)"];
			};
		};
		if (vehicle player isKindOf "UH1Y_DZ") then {
			_vehicleActionsRemoved = 0;
			theuh1y = vehicle player;
			if ((((getPosATL theuh1y) select 2) > 10 || speed theuh1y > 2) && ((theuh1y animationPhase "mainrotor_unfolded") == 1)) then {
				theuh1y animate ["mainrotor_folded",1];
				theuh1y animate ["mainrotor_unfolded",0];
				//_uh1yrotor = [theuh1y,0] execvm "\ca\air2\uh1y\scripts\unfold.sqf";
			};
			if (uh1y_fold <0) then {
				uh1y_fold = theuh1y addAction ["Fold Rotor","custom\uh1y\fold.sqf",theuh1y,5,false,false,"","(speed theuh1y <= 2) && (player==driver theuh1y) && (theuh1y animationphase ""mainrotor_unfolded"" == 0) && (((getPosATL theuh1y) select 2) <= 10)"];
			};
			if (uh1y_unfold <0) then {
				uh1y_unfold = theuh1y addAction ["UnFold Rotor","custom\uh1y\unfold.sqf",theuh1y,5,false,false,"","(speed theuh1y <= 2) && (player==driver theuh1y) && (theuh1y animationphase ""mainrotor_unfolded"" == 1) && (((getPosATL theuh1y) select 2) <= 10)"];
			};
		};
		//Cessna Smoke
		if (vehicle player != player && vehicle player isKindOf "GNT_C185" && !(vehicle player isKindOf "GNT_C185U") && !(vehicle player isKindOf "GNT_C185R") && !(vehicle player isKindOf "GNT_C185C")) then {
			thecessna = vehicle player;
			_vehicleActionsRemoved = 0;
			if (speed thecessna >= 20) then {
				if (cessna_smokeon <0) then {
					cessna_smokeon = thecessna addAction  ["Smoke ON", "custom\smokeon.sqf",thecessna, 99, true, true, "",""];
				};
			} else {
				thecessna removeAction cessna_smokeon;
				thecessna removeAction cessna_smokeoff;
				cessna_smokeon = -1;
				cessna_smokeoff = -1;
			};
		};
	} else {
		if (_vehicleActionsRemoved == 0) then {
			themv22 removeAction mv22_fold;
			themv22 removeAction mv22_unfold;
			themv22 removeAction mv22_openramp;
			themv22 removeAction mv22_closeramp;
			themv22 removeAction mv22_opendoor;
			themv22 removeAction mv22_closedoor;
			themv22 removeAction mv22_gotosidegunner;
			themv22 removeAction mv22_gotoreargunner;
			mv22_fold = -1;
			mv22_unfold = -1;
			mv22_openramp = -1;
			mv22_closeramp = -1;
			mv22_opendoor = -1;
			mv22_closedoor = -1;
			mv22_gotosidegunner = -1;
			mv22_gotoreargunner = -1;
			thec130 removeAction c130_openramp;
			thec130 removeAction c130_closeramp;
			thec130 removeAction c130_openrdoor;
			thec130 removeAction c130_closerdoor;
			c130_openramp = -1;
			c130_closeramp = -1;
			c130_openrdoor = -1;
			c130_closerdoor = -1;
			theuh1y removeAction uh1y_fold;
			theuh1y removeAction uh1y_unfold;
			uh1y_fold = -1;
			uh1y_unfold = -1;
			thecessna removeAction cessna_smokeon;
			thecessna removeAction cessna_smokeoff;
			cessna_smokeon = -1;
			cessna_smokeoff = -1;
			_vehicleActionsRemoved = 1;
		};
	};
	
	if (!(_startLogged)) then {
		_startLogged = true;
		diag_log "#################### Airvehicle functions loading complete!";
	};
};