#include "suvpmc_functions.sqf"
{
    _vcl = _this select 0; //set the vehicle to _vcl
    _vcl setVariable ["suvpmc_cover", 0, true]; //create a variable for the cover
	_closeCover = _x addaction ["Close Cover","Custom\VehicleActions\suvpmc_addAction.sqf",[[],suvpmc_closecover],7,true,false,"","player == gunner _target && format [""%1"",_target getVariable ""suvpmc_cover""] != ""1"""]; //add action to close cover, details to come
    _openCover = _x addaction ["Open Cover","Custom\VehicleActions\suvpmc_addAction.sqf",[[],suvpmc_opencover],7,true,false,"","player == gunner _target && format [""%1"",_target getVariable ""suvpmc_cover""] == ""1"""]; //add action to open cover
	
	} foreach (nearestObjects [[3000,3000,0], ["ArmoredSUV_PMC_DZE"], 50000]); //Get all Armored SUV vehicles in map
