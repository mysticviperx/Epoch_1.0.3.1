/*	
	FUNCTION COMPILES
*/
//Player only
if (!isDedicated) then {

	_config = 	configFile >> "CfgLoot";
	_config1 = 	configFile >> "CfgMagazines" >> "FoodEdible";
	_config2 = 	configFile >> "CfgWeapons" >> "Loot";
	"filmic" setToneMappingParams [0.07, 0.31, 0.23, 0.37, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

	BIS_Effects_Burn = 				compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf"; 
	player_zombieCheck = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";	//Run on a players computer, checks if the player is near a zombie
	player_zombieAttack = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieAttack.sqf";	//Run on a players computer, causes a nearby zombie to attack them
	fnc_usec_damageActions =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageActions.sqf";		//Checks which actions for nearby casualty
	fnc_inAngleSector =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inAngleSector.sqf";		//Checks which actions for nearby casualty
	fnc_usec_selfActions =		compile preprocessFileLineNumbers "admintools\fn_selfActions.sqf";		//Checks which actions for self
//	fnc_usec_selfActions =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_selfActions.sqf";		//Checks which actions for self
	fnc_usec_unconscious =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
	player_temp_calculation	=		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_temperatur.sqf";		//Temperatur System	//TeeChange
	player_weaponFiredNear =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_weaponFiredNear.sqf";
	player_animalCheck =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_animalCheck.sqf";
	player_spawnCheck = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnCheck.sqf";
	player_dumpBackpack = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_dumpBackpack.sqf";
	// player_spawnLootCheck =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnlootCheck.sqf";
	// player_spawnZedCheck =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnzedCheck.sqf";
	building_spawnLoot =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\building_spawnLoot.sqf";
	// player_taskHint =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_taskHint.sqf";
	building_spawnZombies =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\building_spawnZombies.sqf";
	dayz_spaceInterrupt =			compile preprocessFileLineNumbers "admintools\dayz_spaceInterrupt.sqf";
//	dayz_spaceInterrupt =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\dayz_spaceInterrupt.sqf";
	//animal_monitor =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\animal_monitor.sqf";
	// building_monitor =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\building_monitor.sqf";
	player_fired =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_fired.sqf";			//Runs when player fires. Alerts nearby Zeds depending on calibre and audial rating
	player_harvest =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_harvest.sqf";
	player_packTent =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_packTent.sqf";
	player_packVault =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_packVault.sqf";
	player_unlockVault =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_unlockVault.sqf";
	
	player_removeObject =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\remove.sqf";
	player_removeNet =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_removeNet.sqf";
	player_removeTankTrap =    		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_removeTankTrap.sqf";

	player_unlockDoor =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_unlockDoor.sqf";
	player_changeCombo =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_changeCombo.sqf";
	
	player_lockVault =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_lockVault.sqf";
	// control_zombieAgent = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\control_zombieAgent.sqf";
	player_updateGui =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_updateGui.sqf";
	player_crossbowBolt =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_crossbowBolt.sqf";
	//spawn_flies = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\spawn_flies.sqf";
	// stream_locationFill = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\stream_locationFill.sqf";
	// stream_locationDel = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\stream_locationDel.sqf";
	// stream_locationCheck = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\stream_locationCheck.sqf";
	player_music = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_music.sqf";			//Used to generate ambient music
	player_login = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_login.sqf";			//Used to generate ambient music
	player_death =				compile preprocessFileLineNumbers "fixes\player_death.sqf";
	player_switchModel =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_switchModel.sqf";
	player_checkStealth =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_checkStealth.sqf";
	world_sunRise =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_sunRise.sqf";
	world_surfaceNoise =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_surfaceNoise.sqf";
	player_humanityMorph =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_humanityMorph.sqf";
	player_throwObject = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_throwObject.sqf";
	player_alertZombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_alertZombies.sqf";
	player_fireMonitor = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\fire_monitor.sqf";
	fn_gearMenuChecks =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_gearMenuChecks.sqf";
	
	//Objects
	object_roadFlare = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_roadFlare.sqf";
	object_setpitchbank	=		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_setpitchbank.sqf";
	object_monitorGear =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_monitorGear.sqf";

	local_roadDebris =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_roadDebris.sqf";
	
	//Zombies
	zombie_findTargetAgent = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_findTargetAgent.sqf";
	zombie_loiter = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_loiter.sqf";			//Server compile, used for loiter behaviour
	zombie_generate = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_generate.sqf";			//Server compile, used for loiter behaviour
	wild_spawnZombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\wild_spawnZombies.sqf";			//Server compile, used for loiter behaviour
	
	pz_attack = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\pzombie\pz_attack.sqf";
	
	//
	dog_findTargetAgent = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\dog_findTargetAgent.sqf";
	
	// Vehicle damage fix
	vehicle_handleDamage    = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleDamage.sqf";
	vehicle_handleKilled    = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleKilled.sqf";

	//actions
	player_countmagazines =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_countmagazines.sqf";
	player_addToolbelt =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_addToolbelt.sqf";
	player_copyKey =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_copyKey.sqf";
	player_reloadMag =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_reloadMags.sqf";
	player_loadCrate =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_loadCrate.sqf";
	player_craftItem =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_craftItem.sqf";
	player_tentPitch =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\tent_pitch.sqf";
	player_vaultPitch =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\vault_pitch.sqf";
	player_drink =				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_drink.sqf";
	player_eat =				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_eat.sqf";
	player_useMeds =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_useMeds.sqf";
	player_fillWater = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\water_fill.sqf";
	player_makeFire =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_makefire.sqf";
	//player_chopWood =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_chopWood.sqf";
	player_harvestPlant =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_harvestPlant.sqf";
	player_goFishing =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_goFishing.sqf";

	// Snap & build stuff
	player_build 		= compile preprocessFileLineNumbers "Custom\Snapping\player_build.sqf";
	player_buildControls 	= compile preprocessFileLineNumbers "Custom\Snapping\player_buildControls.sqf";
	snap_object 		= compile preprocessFileLineNumbers "Custom\Snapping\snap_object.sqf";

	player_wearClothes =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_wearClothes.sqf";
	//player_dropWeapon =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_dropWeapon.sqf";
	//playerpip_setTrap =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_setTrap.sqf";
	object_pickup = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\object_pickup.sqf";
	player_flipvehicle = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_flipvehicle.sqf";
	player_sleep = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_sleep.sqf";
	//player_mineOre =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_mineOre.sqf";
	player_antiWall =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_antiWall.sqf";
	player_deathBoard =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\list_playerDeathsAlt.sqf";
	
	player_upgradeVehicle =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_upgradeVehicle.sqf";
	
	//ui
	player_selectSlot =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_selectSlot.sqf";
	player_gearSync	=			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_gearSync.sqf";
	player_gearSet	=			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_gearSet.sqf";
	ui_changeDisplay = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_changeDisplay.sqf";
	ui_gear_sound =             		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_gear_sound.sqf";
	
	//System
	player_monitor =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_monitor.sqf";
	player_spawn_1 =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_spawn_1.sqf";
	player_spawn_2 =			compile preprocessFileLineNumbers "admintools\player_spawn_2.sqf";
//	player_spawn_2 =			compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_spawn_2.sqf";
	onPreloadStarted 			"dayz_preloadFinished = false;";
	onPreloadFinished 			"dayz_preloadFinished = true;";
	

	 

	//
	RunTime = 0;
	TotalRuns = 0;
	
	fnc_dump = {
		private["_code","_benchmark","_averageRunTime"];
		_code = _this select 0;
		_benchmark = _this select 1;
		
		RunTime = RunTime + _benchmark;
		TotalRuns = TotalRuns + 1;
		_averageRunTime = RunTime/TotalRuns;

		diag_log format["%1 - %2 (%3 / %4)",_code,_benchmark,_averageRunTime,TotalRuns];
	};
	dayz_losChance = {
		private["_agent","_maxDis","_dis","_val","_maxExp","_myExp"];
		_agent = 	_this select 0;
		_dis =		_this select 1;
		_maxDis = 	_this select 2;
		// diag_log ("VAL:  " + str(_this));
		_val = 		(_maxDis - _dis) max 0;
		_maxExp = 	((exp 2) * _maxDis);
		_myExp = 	((exp 2) * (_val)) / _maxExp;
		_myExp = _myExp * 0.7;
		_myExp
	};
	
	ui_initDisplay = {
		private["_control","_ctrlBleed","_display","_ctrlFracture","_ctrlDogFood","_ctrlDogWater","_ctrlDogWaterBorder", "_ctrlDogFoodBorder"];
		disableSerialization;
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		_control = 	_display displayCtrl 1204;
		_control ctrlShow false;
		if (!r_player_injured) then {
			_ctrlBleed = 	_display displayCtrl 1303;
			_ctrlBleed ctrlShow false;
		};
		if (!r_fracture_legs and !r_fracture_arms) then {
			_ctrlFracture = 	_display displayCtrl 1203;
			_ctrlFracture ctrlShow false;
		};
		_ctrlDogFoodBorder = _display displayCtrl 1501;
		_ctrlDogFoodBorder ctrlShow false;
		_ctrlDogFood = _display displayCtrl 1701;
		_ctrlDogFood ctrlShow false;
		
		_ctrlDogWaterBorder = _display displayCtrl 1502;
		_ctrlDogWaterBorder ctrlShow false;
		_ctrlDogWater = _display displayCtrl 1702;
		_ctrlDogWater ctrlShow false
	};
	
	dayz_losCheck = {
		private["_target","_agent","_cantSee"];
		_target = _this select 0; // PUT THE PLAYER IN FIRST ARGUMENT!!!!
		_agent = _this select 1;
		_cantSee = true;
		if (!isNull _target) then {
			
			_tPos = visiblePositionASL _target;
			_zPos = visiblePositionASL _agent;
			
			_tPos set [2,(_tPos select 2)+1];
			_zPos set [2,(_zPos select 2)+1];

			if ((count _tPos > 0) and (count _zPos > 0)) then {
				_cantSee = terrainIntersectASL [_tPos, _zPos];
				if (!_cantSee) then {
					_cantSee = lineIntersects [_tPos, _zPos, _agent, vehicle _target];
				};
			};
		};
		_cantSee
	};
	
	eh_zombieInit = 	{
		private["_unit","_pos"];
		//_unit = 	_this select 0;
		//_pos =		getPosATL _unit;
		//_id = [_pos,_unit] execFSM "\z\AddOns\dayz_code\system\zombie_agent.fsm";
	};
	
	dayz_equipCheck = {
		private ["_empty", "_needed","_diff","_success"];
		_config = _this;
		_empty = [player] call BIS_fnc_invSlotsEmpty;
		_needed = [_config] call BIS_fnc_invSlotType;
		_diff = [_empty,_needed] call BIS_fnc_vectorDiff;
		
		_success = true;
		{
			if (_x > 0) then {_success = false};
		} forEach _diff;
		hint format["Config: %5\nEmpty: %1\nNeeded: %2\nDiff: %3\nSuccess: %4",_empty,_needed,_diff,_success,_config];
		_success
	};

	vehicle_gear_count = {
		private["_counter"];
		_counter = 0;
		{
			_counter = _counter + _x;
		} forEach _this;
		_counter
	};

	player_tagFriendlyMsg = {
		if(player == _this) then { 
			cutText[(localize "str_epoch_player_2"),"PLAIN DOWN"];
		}; 
	};

	player_serverModelChange = {
		private["_object","_model"];
		_object = _this select 0;
		_model = _this select 1;
		if (_object == player) then {
			_model call player_switchModel;
		};
	};
	
	player_guiControlFlash = 	{
		private["_control"];
		_control = _this;
		if (ctrlShown _control) then {
			_control ctrlShow false;
		} else {
			_control ctrlShow true;
		};
	};
	
	gear_ui_offMenu = {
		private["_control","_parent","_menu"];
		disableSerialization;
		_control = 	_this select 0;
		_parent = 	findDisplay 106;
		if (!(_this select 3)) then {
			for "_i" from 0 to 9 do {
				_menu = _parent displayCtrl (1600 + _i);
				_menu ctrlShow false;
			};
			_grpPos = ctrlPosition _control;
			_grpPos set [3,0];
			_control ctrlSetPosition _grpPos;
			_control ctrlShow false;
			_control ctrlCommit 0;
		};
	};
	
	dze_surrender_off = {
		player setVariable ["DZE_Surrendered", false, true];
		DZE_Surrender = false;	
	};

	gear_ui_init = {
		private["_control","_parent","_menu","_dspl","_grpPos"];
		disableSerialization;
		_parent = findDisplay 106;
		_control = 	_parent displayCtrl 6902;
		for "_i" from 0 to 9 do {
			_menu = _parent displayCtrl (1600 + _i);
			_menu ctrlShow false;
		};
		_grpPos = ctrlPosition _control;
		_grpPos set [3,0];
		_control ctrlSetPosition _grpPos;
		_control ctrlShow false;
		_control ctrlCommit 0;
	};
	
	dayz_eyeDir = {
		private["_vval","_vdir"];
		_vval = (eyeDirection _this);
		_vdir = (_vval select 0) atan2 (_vval select 1);
		if (_vdir < 0) then {_vdir = 360 + _vdir};
		_vdir
	};

	DZE_getModelName = {
		_objInfo = toArray(str(_this));
		_lenInfo = count _objInfo - 1;
		_objName = [];
		_i = 0;
		// determine where the object name starts
		{
			if (58 == _objInfo select _i) exitWith {};
			_i = _i + 1;
		} forEach _objInfo;
		_i = _i + 2; // skip the ": " part
		for "_k" from _i to _lenInfo do {
			_objName = _objName + [_objInfo select _k];
		};
		_objName = toLower(toString(_objName));
		_objName
	};

	dze_isnearest_player = {
		private ["_notClosest","_playerDistance","_nearPlayers","_obj","_playerNear"];
		if(!isNull _this) then {
			_nearPlayers = _this nearEntities ["CAManBase", 12];
			_playerNear = ({isPlayer _x} count _nearPlayers) > 1;
			_notClosest = false;
			if (_playerNear) then {
				// check if another player is closer
				_playerDistance = player distance _this;
				{
					if (_playerDistance > (_x distance _this)) exitWith { _notClosest = true; };
				} forEach _nearPlayers;
			};
		} else {
			_notClosest = false;
		};
		_notClosest
	};
		
	// trader menu code
	call compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderMenu.sqf";
	
	// recent murders menu code
	call compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_murderMenu.sqf";

	//This is still needed but the fsm should terminate if any errors pop up.
	[] spawn {
        private["_timeOut","_display","_control1","_control2"];
        disableSerialization;
        _timeOut = 0;
        dayz_loadScreenMsg = "";
        diag_log "DEBUG: loadscreen guard started.";
        _display = uiNameSpace getVariable "BIS_loadingScreen";
        if (!isNil "_display") then {
                _control1 = _display displayctrl 8400;
                _control2 = _display displayctrl 102;
        };
                
        waitUntil {!dayz_DisplayGenderSelect};
                
        // 120 sec timeout (12000 * 0.01)
        while { _timeOut < 12000 } do {
            if (dayz_clientPreload && dayz_authed) exitWith { diag_log "PLOGIN: Login loop completed!"; };
            if (!isNil "_display") then {
                if ( isNull _display ) then {                        
                        waitUntil { !dialog; };                                
                        startLoadingScreen ["","RscDisplayLoadCustom"];
                        _display = uiNameSpace getVariable "BIS_loadingScreen";
                        _control1 = _display displayctrl 8400;
                        _control2 = _display displayctrl 102;
                };

                if ( dayz_loadScreenMsg != "" ) then {
                        _control1 ctrlSetText dayz_loadScreenMsg;
                        dayz_loadScreenMsg = "";
                };

                _control2 ctrlSetText format["%1",round(_timeOut*0.01)];
            };

            _timeOut = _timeOut + 1;

            if (_timeOut >= 12000) then {
                1 cutText [localize "str_player_login_timeout", "PLAIN DOWN"];
                sleep 10;
                endLoadingScreen;
                endMission "END1";
            };

            sleep 0.01;
        };
	};

	// TODO: need move it in player_monitor.fsm
	// allow player disconnect from server, if loading hang, kicked by BE etc.
	[] spawn {
		private["_timeOut","_display","_control1","_control2"];
		disableSerialization;
		_timeOut = 0;
		dayz_loadScreenMsg = "";
		diag_log "DEBUG: loadscreen guard started.";
		_display = uiNameSpace getVariable "BIS_loadingScreen";
		_control1 = _display displayctrl 8400;
		_control2 = _display displayctrl 102;
		// 120 sec timeout
		while { _timeOut < 3000 && !dayz_clientPreload && !dayz_authed } do {

			if ( isNull _display ) then {
				waitUntil { !dialog; };
				startLoadingScreen ["","RscDisplayLoadCustom"];
				_display = uiNameSpace getVariable "BIS_loadingScreen";
				_control1 = _display displayctrl 8400;
				_control2 = _display displayctrl 102;
			};

			if ( dayz_loadScreenMsg != "" ) then {
				_control1 ctrlSetText dayz_loadScreenMsg;
				dayz_loadScreenMsg = "";
			};
			_control2 ctrlSetText format["%1",round(_timeOut*0.01)];
			_timeOut = _timeOut + 1;
			sleep 0.01;
		};
		endLoadingScreen;
	};

	dayz_meleeMagazineCheck = {
                private["_meleeNum","_magType"];
                _magType =         ([] + getArray (configFile >> "CfgWeapons" >> _wpnType >> "magazines")) select 0;
                _meleeNum = ({_x == _magType} count magazines player);
                if (_meleeNum < 1) then {
                        player addMagazine _magType;
                };
        };

	dayz_originalPlayer = player;
	
	progressLoadingScreen 0.8;
};

	//Both
	BIS_fnc_selectRandom =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_selectRandom.sqf";
	BIS_fnc_vectorAdd =         compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_vectorAdd.sqf";	
	BIS_fnc_halo =              compile preprocessFileLineNumbers "fixes\fn_halo.sqf";
	BIS_fnc_findNestedElement =	compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_findNestedElement.sqf";
	BIS_fnc_param = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_param.sqf";

	fnc_buildWeightedArray = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_buildWeightedArray.sqf";		//Checks which actions for nearby casualty
	fnc_usec_damageVehicle =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerVehicle.sqf";		//Event handler run on damage
	zombie_initialize = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\init\zombie_init.sqf";
	// object_vehicleKilled =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_vehicleKilled.sqf";		//Event handler run on damage
	object_setHitServer =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_setHitServer.sqf";	//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_setFixServer =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_setFixServer.sqf";	//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_getHit =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_getHit.sqf";			//gets the hit value for a HitPoint (i.e. HitLegs) against the selection (i.e. "legs"), returns the value
	object_setHit =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_setHit.sqf";			//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_processHit =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_processHit.sqf";		//process the hit in the REVO damage system (records and sets hit)
	object_delLocal =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_delLocal.sqf";
	// object_cargoCheck =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_cargoCheck.sqf";		//Run by the player or server to monitor changes in cargo contents
	fnc_usec_damageHandler =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";		//Event handler run on damage
	fnc_veh_ResetEH = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\init\veh_ResetEH.sqf";			//Initialize vehicle
	// Vehicle damage fix
	vehicle_handleDamage    = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleDamage.sqf";
	vehicle_handleKilled    = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleKilled.sqf";
	//fnc_vehicleEventHandler = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\init\vehicle_init.sqf";			//Initialize vehicle
	fnc_inString = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inString.sqf";	
	fnc_isInsideBuilding = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding;
	fnc_isInsideBuilding2 = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding2.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding;
	fnc_isInsideBuilding3 = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding3.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding;
	dayz_zombieSpeak = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_speak.sqf";			//Used to generate random speech for a unit
	vehicle_getHitpoints =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf";
	local_gutObject =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_gutObject.sqf";		//Generated on the server (or local to unit) when gutting an object
	local_lockUnlock =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_lockUnlock.sqf";		//When vehicle is local to unit perform locking vehicle
	local_gutObjectZ =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_gutObjectZ.sqf";		//Generated on the server (or local to unit) when gutting an object
	local_zombieDamage = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerZ.sqf";		//Generated by the client who created a zombie to track damage
	local_setFuel =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_setFuel.sqf";			//Generated when someone refuels a vehicle
	local_eventKill = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_eventKill.sqf";		//Generated when something is killed
	//player_weaponCheck =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_weaponCheck.sqf";	//Run by the player or server to monitor whether they have picked up a new weapon
	curTimeStr =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_curTimeStr.sqf";
	player_medBandage =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
	player_medInject =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medInject.sqf";
	player_medEpi =				compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medEpi.sqf";
	player_medTransfuse =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medTransfuse.sqf";
	player_medMorphine =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medMorphine.sqf";
	player_breaklegs =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medBreakLegs.sqf";
	player_medPainkiller =			compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medPainkiller.sqf";
	world_isDay = 				{if ((daytime < (24 - dayz_sunRise)) and (daytime > dayz_sunRise)) then {true} else {false}};
	player_humanityChange =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_humanityChange.sqf";
	spawn_loot =				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\spawn_loot.sqf";
	spawn_loot_small =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\spawn_loot_small.sqf";
	// player_projectileNear = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_projectileNear.sqf";
	
	dayz_HungerThirst = {
		dayz_hunger = dayz_hunger + (_this select 0);
		dayz_thirst = dayz_thirst + (_this select 1);
	};

	dayz_EjectPlayer = {
		// check if player in vehicle
        private ["_noDriver","_vehicle","_inVehicle"];
        _vehicle = vehicle player;
		_inVehicle = (_vehicle != player);
		if(_inVehicle) then {
			_noDriver = ((_vehicle emptyPositions "driver") > 0);
			if (_noDriver and (speed _vehicle) != 0) then {
				player action [ "eject", _vehicle];
			};
		};
	};

	player_sumMedical = {
		private["_character","_wounds","_legs","_arms","_medical"];
		_character = 	_this;
		_wounds =		[];
		if (_character getVariable["USEC_injured",false]) then {
			{
				if (_character getVariable[_x,false]) then {
					_wounds set [count _wounds,_x];
				};
			} forEach USEC_typeOfWounds;
		};
		_legs = _character getVariable ["hit_legs",0];
		_arms = _character getVariable ["hit_arms",0];
		_medical = [
			_character getVariable["USEC_isDead",false],
			_character getVariable["NORRN_unconscious", false],
			_character getVariable["USEC_infected",false],
			_character getVariable["USEC_injured",false],
			_character getVariable["USEC_inPain",false],
			_character getVariable["USEC_isCardiac",false],
			_character getVariable["USEC_lowBlood",false],
			_character getVariable["USEC_BloodQty",12000],
			_wounds,
			[_legs,_arms],
			_character getVariable["unconsciousTime",0],
			_character getVariable["messing",[0,0]]
		];
		_medical
	};
	
	//Server Only
	if (isServer) then {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\init\server_functions.sqf";
	} else {
		eh_localCleanup = {};
	};

initialized = true;
