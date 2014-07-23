/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//=BTC= Towing
_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
_logistic = execVM "=BTC=_LogisticTow\=BTC=_Logistic_Init.sqf";

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxHeliCrashes= 25; // Default = 5
MaxVehicleLimit = 750; // Default = 50
MaxDynamicDebris = 500; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 
DZE_BuildingLimit = 1000;

//Halo Spawn
/*if (freshSpawn == 0) then { 
	dayz_paraSpawn = true; 
	} else { 
	dayz_paraSpawn = false;
	};
*/

dayz_paraSpawn = true; 


dayz_minpos = -1; 
dayz_maxpos = 16000;

dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

DZE_teleport = [10000,200,500,10000,800];    //anti-teleport work around

DZE_ForceNameTags = true;
//DZE_HumanityTargetDistance = 5;

dayz_maxAnimals = 8; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
dayz_fullMoonNights = true;

//Load in compiled functions
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "admintools\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
call compile preprocessFileLineNumbers "admintools\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
//	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_nil = [] execVM "mission.sqf";

	//Add Bridge @0k
	_nil = [] execVM "MapAddons\bridge.sqf";
	
	//Add Carrier @3k w/9
	_nil = [] execVM "MapAddons\carrier.sqf";

	// Add Lopanino Base @3050k w/61
//	_nil = [] execVM "MapAddons\lopatino.sqf";

	// Add NWAF @3250k w/129
	_nil = [] execVM "MapAddons\nwaf.sqf";

	// Add skalisky @3500k w/88
	_nil = [] execVM "MapAddons\skalisky.sqf";

	//Add Three Valleys @3600k w/41
	_nil = [] execVM "MapAddons\threev.sqf";

	// Add Who Base @3700k w/73
	_nil = [] execVM "MapAddons\who.sqf";

	// Add Elektro @5000k w/212
	_nil = [] execVM "MapAddons\elektro.sqf";

	// Add Cherno @5500k w/86
	_nil = [] execVM "MapAddons\cherno.sqf";

	// Add Pustoshka @3800k w/12
	_nil = [] execVM "MapAddons\pustoshka.sqf";

	// Add NEAF @3050 w/48
	_nil = [] execVM "MapAddons\neaf.sqf";
	
	// Add Cutter
	_nil = [] execVM "MapAddons\Cutter.sqf";
	
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
	
};

if (!isDedicated) then {
	//Refuel 
	[] execVM "Scripts\kh_actions.sqf";
	
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Custom Loadouts
	[] ExecVM "admintools\loadout.sqf";
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
//	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	_playerMonitor = 	[] execFSM "admintools\player_monitor.fsm";	
	
	// Air Vehicle fix
	_nil = [] execVM "Custom\specials.sqf";
	
	//Starting Air Vehicles action check
	_nil = [] execVM "custom\airvehiclefunctions.sqf";

	
	_Armored_SUV_PMC_DZE_turret = [] execVM "Custom\VehicleActions\suvpmc_init.sqf";
	
	//Intro Music and Text
	_nul = [] execVM "admintools\playerspawn.sqf";
	
	//anti Hack
//	[] execVM "\z\addons\dayz_code\system\antihack.sqf";

	//safezones
	[] execVM "Scripts\safezone.sqf";
	
	//Safe Zone Anti Theft
//	[] execVM "Scripts\antitheft.sqf";

	[] execvm "admintools\custom_monitor.sqf";	

	[] execvm "admintools\custom_messages.sqf";	
	
	execVM "service_point\service_point.sqf";
	
	//Lights
	[0,0,true,true,false,58,280,600,[0.698, 0.556, 0.419],"Generator_DZ",0.1] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	
};

#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "fixes\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

//Mission Libraries  
[] execVM "faction.sqf";

// AI mission markers
[] execVM "debug\addmarkers.sqf";
[] execVM "debug\addmarkers75.sqf";

// Heli Evac
_nil = [] execVM "helievac\functions.sqf";

// [] execVM "raceday.sqf"; //Coastal Race Day - By Bungle