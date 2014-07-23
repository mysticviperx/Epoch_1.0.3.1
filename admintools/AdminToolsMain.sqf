_pathtotools = "admintools\tools\";
_pathtoskins = "admintools\skins\";
_pathtoweapon = "admintools\weaponkits\";
_pathtoshields = "admintools\shields\";
_pathtovehicles = "admintools\vehicles\";
_pathtovehicles2 = "admintools\vehicles\others";
_pathtobuildings = "admintools\buildings\";
_pathtowaypoints = "admintools\waypoints\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoskins+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoshields+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtowaypoints+'%1"';
_EXECscript7 = 'player execVM "'+_pathtovehicles2+'%1"';
_EXECscript8 = 'player execVM "'+_pathtobuildings+'%1"';
_EXECscriptBG1 = '[player, "normal"] execVM "'+_pathtotools+'%1"';
_EXECscriptBG2 = '[player, "silent"] execVM "'+_pathtotools+'%1"';
//customise these menus to fit your server

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#include "AdminTools-AccessList.sqf"
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

if ((getPlayerUID player) in _members || (getPlayerUID player) in _mods || (getPlayerUID player) in _special || (getPlayerUID player) in _admins || (getPlayerUID player) in _donors) then { //all admins
	if ((getPlayerUID player) in _mods) then {
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Skins Menu", [3], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
				["Flip Vehicle", [4],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],				
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
				
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];
	} else {
		if ((getPlayerUID player) in _admins) then {
			adminmenu =
			[
				["",true],
					["ESP / Tele", [2],  "", -5, [["expression", format[_EXECscript1,"dayzesp.sqf"]]], "1", "1"],
					["God Mode", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],	
					["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
					["Heal Player(s)", [5], "", -5, [["expression", format[_EXECscript1, "healp.sqf"]]], "1", "1"],					
					["Spawn Items", [6], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
					["Spawn Vehicle", [7], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
					["Spawn Buildings", [8], "#USER:BuildingsMenu", -5, [["expression", ""]], "1", "1"],					
					["Teleport", [9], "#USER:TeleportMenu", -5, [["expression", ""]], "1", "1"],
					["Spectate Player (Press F3 to Exit)", [10],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],					

					["", [-1], "", -5, [["expression", ""]], "1", "0"],					

					["Other Tools", [11], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],			
				
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
			];
		} else {
			if ((getPlayerUID player) in _special) then {
				adminmenu =
				[
					["",true],
						["ESP / Tele", [2],  "", -5, [["expression", format[_EXECscript1,"dayzesp.sqf"]]], "1", "1"],
						["God Mode", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],	
						["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
						["Heal Player(s)", [5], "", -5, [["expression", format[_EXECscript1, "healp.sqf"]]], "1", "1"],					
						["Skins Menu", [5], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
						["Spawn Kit (TEMPORY FOR TESTING)", [6],  "", -5, [["expression", format[_EXECscript3,"item15.sqf"]]], "1", "1"],
						["", [-1], "", -5, [["expression", ""]], "1", "0"],
				
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
				];
			} else {
					adminmenu =
					[
						["",true],
							["Skins Menu", [3], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
							["Flip Vehicle", [4],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
							["", [-1], "", -5, [["expression", ""]], "1", "0"],
					
							["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
					];
				};
			};
		};
	};
//customise to fit


//TOOLS MENU
ModToolsMenu =
[
	["",true],
		["Heal Player(s)", [2],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Spectate Player (Press F3 to Exit)", [3],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
//		["Zombie Shield !!BROKEN!!", [4],  "", -5, [["expression", format[_EXECscript4,"zombieshield.sqf"]]], "1", "1"],		
		["Flip Vehicle", [4],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
//		["Spawn Kit (TEMPORY FOR TESTING)", [4],  "", -5, [["expression", format[_EXECscript3,"item15.sqf"]]], "1", "1"],
//		["Gunbag and Building Supplies", [5],  "", -5, [["expression", format[_EXECscript3,"bp7.sqf"]]], "1", "1"],		
		["Create Gyro", [5],  "", -5, [["expression", format[_EXECscript5,"Gyro.sqf"]]], "1", "1"],
		["Create Mozzy", [6],  "", -5, [["expression", format[_EXECscript5,"Mozzy.sqf"]]], "1", "1"],
//		["Create Merlin", [7],  "", -5, [["expression", format[_EXECscript5,"Merlin.sqf"]]], "1", "1"],
		["Create M1030", [7],  "", -5, [["expression", format[_EXECscript5,"M1030.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["Look-N-Repair", [2],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Skins Menu", [3], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],					
		["Turn Invisible", [4],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],
		["Zombie Shield !!BROKEN!!", [5],  "", -5, [["expression", format[_EXECscript4,"zombieshield.sqf"]]], "1", "1"],
		["Take Captive", [6],  "", -5, [["expression", format[_EXECscript1,"Attach.sqf"]]], "1", "1"],
		["Release Captive", [7],  "", -5, [["expression", format[_EXECscript1,"TPtoME.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Log Entities(debug stuff)", [8],  "", -5, [["expression", format[_EXECscript1,"testentities.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],					
		
		["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu2 = 
[
["",true],
		["Repair Buildings(1000m)", [2],  "", -5, [["expression", format[_EXECscript1,"fixbuildings-1000.sqf"]]], "1", "1"],
		["Repair All Buildings", [3],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["Fly Mode", [4],  "", -5, [["expression", format[_EXECscript1,"fly.sqf"]]], "1", "1"],
		["Make Me a Hero", [5], "", -5, [["expression", format[_EXECscript1, "makemeahero.sqf"]]], "1", "1"],		
		["Make Me Neutral", [6], "", -5, [["expression", format[_EXECscript1, "makemeneutral.sqf"]]], "1", "1"],		
		["Make Me a Bandit", [7], "", -5, [["expression", format[_EXECscript1, "makemeabandit.sqf"]]], "1", "1"],		
		["Flip Vehicle", [7],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

TeleportMenu =
[
	["",true],
		["Teleport To Waypoints", [2], "#USER:TeleportWaypointMenu", -5, [["expression", ""]], "1", "1"],
		["Teleport(Me To Them)", [3], "", -5, [["expression", format[_EXECscript1, "TPto.sqf"]]], "1", "1"],
		["Teleport(Them To Me)", [4], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],		
		["Teleport(Them To Death)", [5], "", -5, [["expression", format[_EXECscript1, "TPtoARENA-top.sqf"]]], "1", "1"],
		["Teleport(Them To IDC Arena-Inside)", [6], "", -5, [["expression", format[_EXECscript1, "TPtoARENA-inside.sqf"]]], "1", "1"],
		["Teleport(Them To IDC Arena-Bottom)", [7], "", -5, [["expression", format[_EXECscript1, "TPtoARENA-bottom.sqf"]]], "1", "1"],		
		["Teleport(Them To Penalty Box)", [8], "", -5, [["expression", format[_EXECscript1, "TPtoPB.sqf"]]], "1", "1"],	
//		["Teleport(WTF!) !DO NOT USE!", [9],  "", -5, [["expression", format[_EXECscript1,"TPthemTO.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

TeleportWaypointMenu =
[
	["",true],
		["Kamenka Docks", [2],  "", -5, [["expression", format[_EXECscript6,"Kamenka.sqf"]]], "1", "1"], 
		["Balota Airfield", [3],  "", -5, [["expression", format[_EXECscript6,"Balota.sqf"]]], "1", "1"],
		["Cherno Sniper", [4],  "", -5, [["expression", format[_EXECscript6,"ChernoSniper.sqf"]]], "1", "1"],
		["Elektro Sniper", [5],  "", -5, [["expression", format[_EXECscript6,"EletroSniper.sqf"]]], "1", "1"],
		["Skalisty Light House", [6],  "", -5, [["expression", format[_EXECscript6,"Skalisty.sqf"]]], "1", "1"],
		["Solnichniy Quarry", [7],  "", -5, [["expression", format[_EXECscript6,"Solnichniy.sqf"]]], "1", "1"],
		["Berezino Lumber Mill", [8],  "", -5, [["expression", format[_EXECscript6,"Berezino.sqf"]]], "1", "1"],			
		["Gvozdno Tavern", [9],  "", -5, [["expression", format[_EXECscript6,"Gvozdno.sqf"]]], "1", "1"],
		["Pustoshka Church", [10],  "", -5, [["expression", format[_EXECscript6,"Pustoshka.sqf"]]], "1", "1"],
		["Zelenogorsk Industrial", [11],  "", -5, [["expression", format[_EXECscript6,"Zelenogorsk.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Next Page", [12], "#USER:TeleportWaypointMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
TeleportWaypointMenu2 =
[
	["",true],
		["Northwest Airfield", [2],  "", -5, [["expression", format[_EXECscript6,"NWAF.sqf"]]], "1", "1"],
		["Northeast Airfield", [3],  "", -5, [["expression", format[_EXECscript6,"NEAF.sqf"]]], "1", "1"],
		["Hero Camp", [4],  "", -5, [["expression", format[_EXECscript6,"Hero.sqf"]]], "1", "1"],
		["Castle Klen", [5],  "", -5, [["expression", format[_EXECscript6,"Klen.sqf"]]], "1", "1"],
		["W.H.O. Crash Site", [6],  "", -5, [["expression", format[_EXECscript6,"WHO.sqf"]]], "1", "1"],
		["Stary Sobor", [7],  "", -5, [["expression", format[_EXECscript6,"Stary.sqf"]]], "1", "1"],
		["Bash Outpost", [8],  "", -5, [["expression", format[_EXECscript6,"Bash.sqf"]]], "1", "1"],
		["Bandit Den", [9],  "", -5, [["expression", format[_EXECscript6,"Bandit.sqf"]]], "1", "1"],
		["Carrier !!!ADMIN/MOD ONLY!!!", [10],  "", -5, [["expression", format[_EXECscript6,"Home.sqf"]]], "1", "1"],			
		["Suicide", [11],  "", -5, [["expression", format[_EXECscript6,"Fall.sqf"]]], "1", "1"],			
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


//SKIN MENUS
SkinsMenu =
[
	["",true],
		["Hero", [2],  "", -5, [["expression", format[_EXECscript2,"Hero.sqf"]]], "1", "1"],
		["Camo", [3],  "", -5, [["expression", format[_EXECscript2,"Camo.sqf"]]], "1", "1"],
		["Bandit Camo", [4],  "", -5, [["expression", format[_EXECscript2,"BCamo.sqf"]]], "1", "1"],
		["Ghillie", [5],  "", -5, [["expression", format[_EXECscript2,"Ghille.sqf"]]], "1", "1"],
		["Suvivor", [6],  "", -5, [["expression", format[_EXECscript2,"Male.sqf"]]], "1", "1"],
		["Soldier", [7],  "", -5, [["expression", format[_EXECscript2,"Soldier.sqf"]]], "1", "1"],
		["Business Suit", [8],  "", -5, [["expression", format[_EXECscript2,"Suit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Skin change will remove backpack!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:SkinsMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu2 =
[
	["",true],
		["Policeman", [2],  "", -5, [["expression", format[_EXECscript2,"Policeman.sqf"]]], "1", "1"],
		["Priest", [3],  "", -5, [["expression", format[_EXECscript2,"Priest.sqf"]]], "1", "1"],
		["Press", [4],  "", -5, [["expression", format[_EXECscript2,"Press.sqf"]]], "1", "1"],
		["Civilian Pilot", [5],  "", -5, [["expression", format[_EXECscript2,"CivilianPilot.sqf"]]], "1", "1"],
		["Rocker", [6],  "", -5, [["expression", format[_EXECscript2,"Rocker.sqf"]]], "1", "1"],
		["Rocker (black)", [7],  "", -5, [["expression", format[_EXECscript2,"RockerBLACK.sqf"]]], "1", "1"],
		["Rocker (green)", [8],  "", -5, [["expression", format[_EXECscript2,"RockerGreen.sqf"]]], "1", "1"],
		["Rocker (brown)", [9],  "", -5, [["expression", format[_EXECscript2,"RockerBrown.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Skin change will remove backpack!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:SkinsMenu3", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu3 =
[
	["",true],
		["Officer", [2],  "", -5, [["expression", format[_EXECscript2,"Officer.sqf"]]], "1", "1"],
		["Soldier", [3],  "", -5, [["expression", format[_EXECscript2,"Soldier.sqf"]]], "1", "1"],
		["Desert Sniper", [4],  "", -5, [["expression", format[_EXECscript2,"DesertSniper.sqf"]]], "1", "1"],
		["Jungle Camo", [5],  "", -5, [["expression", format[_EXECscript2,"JungleCamo.sqf"]]], "1", "1"],
		["Gunner Outfit", [6],  "", -5, [["expression", format[_EXECscript2,"GunnerOutfit.sqf"]]], "1", "1"],
		["Urban Camo", [7],  "", -5, [["expression", format[_EXECscript2,"UrbanCamo.sqf"]]], "1", "1"],
		["Special Forces", [8],  "", -5, [["expression", format[_EXECscript2,"SpecialForces.sqf"]]], "1", "1"],
		["BodyGaurd", [9],  "", -5, [["expression", format[_EXECscript2,"BodyGaurd.sqf"]]], "1", "1"],
		["Marksman", [10],  "", -5, [["expression", format[_EXECscript2,"Marksman.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Skin change will remove backpack!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:SkinsMenu4", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu4 =
[
	["",true],
		["Bandit", [2],  "", -5, [["expression", format[_EXECscript2,"Bandit.sqf"]]], "1", "1"],
		["Bandit Camo", [3],  "", -5, [["expression", format[_EXECscript2,"BanditCamo.sqf"]]], "1", "1"],
		["Bandit Gunner", [4],  "", -5, [["expression", format[_EXECscript2,"BanditGunner.sqf"]]], "1", "1"],
		["Bandit Sniper", [5],  "", -5, [["expression", format[_EXECscript2,"BanditSniper.sqf"]]], "1", "1"],
		["Bandit Baklava", [6],  "", -5, [["expression", format[_EXECscript2,"BanditBaklava.sqf"]]], "1", "1"],
		["Bandit Mask", [7],  "", -5, [["expression", format[_EXECscript2,"BanditMask.sqf"]]], "1", "1"],
		["Bandit Hat", [8],  "", -5, [["expression", format[_EXECscript2,"BanditHat.sqf"]]], "1", "1"],
		["Rebel Uniform", [9],  "", -5, [["expression", format[_EXECscript2,"BanditUniform.sqf"]]], "1", "1"],
		["Terrorist", [10],  "", -5, [["expression", format[_EXECscript2,"Terrorist.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Skin change will remove backpack!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:SkinsMenu5", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu5 =
[
	["",true],
		["Takistan Soldier", [2],  "", -5, [["expression", format[_EXECscript2,"TakistanSoldierVersion1.sqf"]]], "1", "1"],
		["Takistan Warlord", [3],  "", -5, [["expression", format[_EXECscript2,"TakistanWarlordVersion1.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Skin change will remove backpack!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:SkinsMenu6", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu6 =
[
	["",true],
		["Jane", [2],  "", -5, [["expression", format[_EXECscript2,"Jane.sqf"]]], "1", "1"],
		["Bandit (female)", [3],  "", -5, [["expression", format[_EXECscript2,"BanditFemale.sqf"]]], "1", "1"],
		["Bandit Camo(female)", [4],  "", -5, [["expression", format[_EXECscript2,"BanditCamoFemale.sqf"]]], "1", "1"],
		["Cammy", [5],  "", -5, [["expression", format[_EXECscript2,"Cammy.sqf"]]], "1", "1"],
		["Savannah", [6],  "", -5, [["expression", format[_EXECscript2,"Savannah.sqf"]]], "1", "1"],
		["Sophia", [7],  "", -5, [["expression", format[_EXECscript2,"Sophia.sqf"]]], "1", "1"],
		["Melly", [8],  "", -5, [["expression", format[_EXECscript2,"Melly.sqf"]]], "1", "1"],
		["Maria", [9],  "", -5, [["expression", format[_EXECscript2,"Maria.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Skin change will remove backpack!", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["First Page", [12], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


//WEAPON MENUS
WeaponMenu =
[
	["",true],
		["Assault Rifles", [2], "#USER:WeaponMenuAssault", -5, [["expression", ""]], "1", "1"],
		["Sniper Rifles", [3], "#USER:WeaponMenuSniper", -5, [["expression", ""]], "1", "1"],
		["Heavy Weapons", [4], "#USER:WeaponMenuHeavy", -5, [["expression", ""]], "1", "1"],
		["Rocket Launchers", [5], "#USER:WeaponMenuLauncher", -5, [["expression", ""]], "1", "1"],
		["Explosives", [6], "#USER:WeaponMenuExplosives", -5, [["expression", ""]], "1", "1"],
		["Ammo", [7], "#USER:WeaponMenuAmmo", -5, [["expression", ""]], "1", "1"],		
		["Secondarys and Backpacks", [8], "#USER:WeaponMenuSecondary", -5, [["expression", ""]], "1", "1"],
		["Kits", [9], "#USER:WeaponMenuKits", -5, [["expression", ""]], "1", "1"],
		["Delete gear", [10],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 =
[
	["",true],
		["Medical Supplies", [2], "#USER:WeaponMenuMeds", -5, [["expression", ""]], "1", "1"],
		["Food Stuffs", [3], "#USER:WeaponMenuFood", -5, [["expression", ""]], "1", "1"],
		["Metals", [4], "#USER:WeaponMenuMetals", -5, [["expression", ""]], "1", "1"],
		["Building Supplies", [5], "#USER:WeaponMenuBuild", -5, [["expression", ""]], "1", "1"],
		["Tools", [6], "#USER:WeaponMenuTools", -5, [["expression", ""]], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuAssault =
[
	["",true],
		["M4 Holo", [2],  "", -5, [["expression", format[_EXECscript3,"itemz.sqf"]]], "1", "1"],
		["M4A1 HWS GL SD Camo", [3],  "", -5, [["expression", format[_EXECscript3,"item12.sqf"]]], "1", "1"],
		["M8 Holo SD", [4],  "", -5, [["expression", format[_EXECscript3,"item35.sqf"]]], "1", "1"],
		["M8 Carbine GL", [5],  "", -5, [["expression", format[_EXECscript3,"item48.sqf"]]], "1", "1"],
		["Gold AK", [6],  "", -5, [["expression", format[_EXECscript3,"item8.sqf"]]], "1", "1"],
		["Mk16 EGLM TWS", [7],  "", -5, [["expression", format[_EXECscript3,"item53.sqf"]]], "1", "1"],
		["L85A2 AWS", [7],  "", -5, [["expression", format[_EXECscript3,"item89.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next page", [12], "#USER:WeaponMenuAssault2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuAssault2 =
[
	["",true],
		["Mk17 All", [2],  "", -5, [["expression", format[_EXECscript3,"mk17s.sqf"]]], "1", "1"],
		["MK16 All", [3],  "", -5, [["expression", format[_EXECscript3,"mk16s.sqf"]]], "1", "1"],
		["AA-12", [4],  "", -5, [["expression", format[_EXECscript3,"aa12.sqf"]]], "1", "1"],
		["M8 All", [5],  "", -5, [["expression", format[_EXECscript3,"m8.sqf"]]], "1", "1"],
		["L85 ALL", [6],  "", -5, [["expression", format[_EXECscript3,"l85.sqf"]]], "1", "1"],
		["Light Machine Guns", [7],  "", -5, [["expression", format[_EXECscript3,"lmg.sqf"]]], "1", "1"],
		["L85A2 AWS", [7],  "", -5, [["expression", format[_EXECscript3,"item89.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuSniper =
[
	["",true],
		["DMR", [2],  "", -5, [["expression", format[_EXECscript3,"item11.sqf"]]], "1", "1"],
		["M107", [3],  "", -5, [["expression", format[_EXECscript3,"item34.sqf"]]], "1", "1"],
		["M107_DZ", [4],  "", -5, [["expression", format[_EXECscript3,"item34b.sqf"]]], "1", "1"],
		["AS50 TWS", [5],  "", -5, [["expression", format[_EXECscript3,"item33.sqf"]]], "1", "1"],
		["FN FAL", [6],  "", -5, [["expression", format[_EXECscript3,"itemz4.sqf"]]], "1", "1"],
		["M14 Aim", [7],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
		["Mk17 TWS SD", [8],  "", -5, [["expression", format[_EXECscript3,"item52.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next page", [12], "#USER:WeaponMenuSniper2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuSniper2 =
[
	["",true],
		["Lapuas?", [2],  "", -5, [["expression", format[_EXECscript3,"lapua.sqf"]]], "1", "1"],
		["M110 NVG", [3],  "", -5, [["expression", format[_EXECscript3,"m110nvg.sqf"]]], "1", "1"],
		["AS50", [4],  "", -5, [["expression", format[_EXECscript3,"itemz3.sqf"]]], "1", "1"],
		["AS50 TWS", [5],  "", -5, [["expression", format[_EXECscript3,"item33.sqf"]]], "1", "1"],
		["FN FAL", [6],  "", -5, [["expression", format[_EXECscript3,"itemz4.sqf"]]], "1", "1"],
		["M14 Aim", [7],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
		["Mk17 TWS SD", [8],  "", -5, [["expression", format[_EXECscript3,"item52.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next page", [12], "#USER:WeaponMenuSniper2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuHeavy =
[
	["",true],
		["Pecheneg 50 cal", [2],  "", -5, [["expression", format[_EXECscript3,"itemz6.sqf"]]], "1", "1"],
		["Mk 48", [3],  "", -5, [["expression", format[_EXECscript3,"item7.sqf"]]], "1", "1"],
		["2A42", [4],  "", -5, [["expression", format[_EXECscript3,"item84.sqf"]]], "1", "1"],
		["GSh302", [5],  "", -5, [["expression", format[_EXECscript3,"item85.sqf"]]], "1", "1"],
		["YakB", [6],  "", -5, [["expression", format[_EXECscript3,"item86.sqf"]]], "1", "1"],
		["KSVK", [7],  "", -5, [["expression", format[_EXECscript3,"KSVK.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuLauncher =
[
	["",true],
		["Igla", [2],  "", -5, [["expression", format[_EXECscript3,"item73.sqf"]]], "1", "1"],
		["Javelin", [3],  "", -5, [["expression", format[_EXECscript3,"item74.sqf"]]], "1", "1"],
		["M136", [4],  "", -5, [["expression", format[_EXECscript3,"item75.sqf"]]], "1", "1"],
		["Metis", [5],  "", -5, [["expression", format[_EXECscript3,"item76.sqf"]]], "1", "1"],
		["RPG", [6],  "", -5, [["expression", format[_EXECscript3,"item77.sqf"]]], "1", "1"],
		["RPG 2", [7],  "", -5, [["expression", format[_EXECscript3,"item78.sqf"]]], "1", "1"],
		["Stinger", [8],  "", -5, [["expression", format[_EXECscript3,"item79.sqf"]]], "1", "1"],
		["Strela", [9],  "", -5, [["expression", format[_EXECscript3,"item80.sqf"]]], "1", "1"],
		["SMAW", [10],  "", -5, [["expression", format[_EXECscript3,"item81.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Next page", [12], "#USER:WeaponMenuLauncher2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuLauncher2 =
[
	["",true],
		["M32", [2],  "", -5, [["expression", format[_EXECscript3,"item82.sqf"]]], "1", "1"],
		["Mk13", [3],  "", -5, [["expression", format[_EXECscript3,"item83.sqf"]]], "1", "1"],
		["MLRS", [4],  "", -5, [["expression", format[_EXECscript3,"item87.sqf"]]], "1", "1"],
		["SideWinder", [5],  "", -5, [["expression", format[_EXECscript3,"item88.sqf"]]], "1", "1"],
		["NLAW", [6],  "", -5, [["expression", format[_EXECscript3,"nlaw.sqf"]]], "1", "1"],
		["MAAWS", [7],  "", -5, [["expression", format[_EXECscript3,"maaws.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenuExplosives =
[
	["",true],
		["Satchel", [2],  "", -5, [["expression", format[_EXECscript3,"item92.sqf"]]], "1", "1"],
		["Gunbag and 25xSatchels", [3],  "", -5, [["expression", format[_EXECscript3,"bp6.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenuAmmo =
[
	["",true],
		//["Fill Ammo Box", [2],  "", -5, [["expression", format[_EXECscript3,"FillAmmoBox-OnDemand.sqf"]]], "1", "1"],
		["M2 Ammo", [2],  "", -5, [["expression", format[_EXECscript3,"m2.sqf"]]], "1", "1"],
		["PK Ammo", [2],  "", -5, [["expression", format[_EXECscript3,"pk.sqf"]]], "1", "1"],
		["M134 Ammo", [2],  "", -5, [["expression", format[_EXECscript3,"m134.sqf"]]], "1", "1"],
		["AGS30 Ammo", [2],  "", -5, [["expression", format[_EXECscript3,"ags30.sqf"]]], "1", "1"],
		["Mk19 Ammo", [2],  "", -5, [["expression", format[_EXECscript3,"mk19.sqf"]]], "1", "1"],
		["DSHKM Ammo", [2],  "", -5, [["expression", format[_EXECscript3,"dshkm.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenuSecondary =
[
	["",true],
		["M9SD", [2],  "", -5, [["expression", format[_EXECscript3,"item36.sqf"]]], "1", "1"],
		["G17", [3],  "", -5, [["expression", format[_EXECscript3,"item37.sqf"]]], "1", "1"],
		["PDW", [4],  "", -5, [["expression", format[_EXECscript3,"item39.sqf"]]], "1", "1"],
		["Gunbag", [5],  "", -5, [["expression", format[_EXECscript3,"bp1.sqf"]]], "1", "1"],
		["Gunbag and 60x10oz Gold", [6],  "", -5, [["expression", format[_EXECscript3,"bp3.sqf"]]], "1", "1"],
		["Gunbag and 60xBriefcase", [7],  "", -5, [["expression", format[_EXECscript3,"bp4.sqf"]]], "1", "1"],
		["Gunbag and Base Kit", [8],  "", -5, [["expression", format[_EXECscript3,"bp7.sqf"]]], "1", "1"],		
		["Gunbag and Base Kit(cinder)", [9],  "", -5, [["expression", format[_EXECscript3,"bp8.sqf"]]], "1", "1"],
		["Gunbag and Base Kit(kits)", [10],  "", -5, [["expression", format[_EXECscript3,"bp9.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuKits =
[
	["",true],
		["Mystic's Kit", [2],  "", -5, [["expression", format[_EXECscript3,"item15.sqf"]]], "1", "1"],
		["Hunyt's Kit", [3],  "", -5, [["expression", format[_EXECscript3,"item14.sqf"]]], "1", "1"],
		["Karhan's Kit", [4],  "", -5, [["expression", format[_EXECscript3,"item49.sqf"]]], "1", "1"],
		["Tools Kit", [5],  "", -5, [["expression", format[_EXECscript3,"item90.sqf"]]], "1", "1"],
		["Gunbag and Building Supplies", [6],  "", -5, [["expression", format[_EXECscript3,"bp5.sqf"]]], "1", "1"],		
		//["Crate of Building Supplies", [7],  "", -5, [["expression", format[_EXECscript8,"Building_Crate.sqf"]]], "1", "1"],		
		["Zombie Emitter Parts", [8],  "", -5, [["expression", format[_EXECscript3,"zombieemitterparts.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Next page", [12], "#USER:WeaponMenu4", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuMeds =
[
	["",true],
		["Morphine", [2],  "", -5, [["expression", format[_EXECscript3,"item16.sqf"]]], "1", "1"],
		["Blood Bag", [3],  "", -5, [["expression", format[_EXECscript3,"item17.sqf"]]], "1", "1"],
		["Pain Killers", [4],  "", -5, [["expression", format[_EXECscript3,"item18.sqf"]]], "1", "1"],
		["Epinepherine", [5],  "", -5, [["expression", format[_EXECscript3,"item19.sqf"]]], "1", "1"],
		["Bandage", [6],  "", -5, [["expression", format[_EXECscript3,"item20.sqf"]]], "1", "1"],
		["Antibiotics", [7],  "", -5, [["expression", format[_EXECscript3,"item40.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuTools =
[
	["",true],
		["Crowbar", [2],  "", -5, [["expression", format[_EXECscript3,"item41.sqf"]]], "1", "1"],
		["Map", [3],  "", -5, [["expression", format[_EXECscript3,"item42.sqf"]]], "1", "1"],
		["GPS", [4],  "", -5, [["expression", format[_EXECscript3,"item43.sqf"]]], "1", "1"],
		["Matches", [5],  "", -5, [["expression", format[_EXECscript3,"item44.sqf"]]], "1", "1"],
		["Hatchet", [6],  "", -5, [["expression", format[_EXECscript3,"item45.sqf"]]], "1", "1"],
		["NV Goggles", [7],  "", -5, [["expression", format[_EXECscript3,"item46.sqf"]]], "1", "1"],
		["Toolbox", [8],  "", -5, [["expression", format[_EXECscript3,"item47.sqf"]]], "1", "1"],
		["Knife", [9],  "", -5, [["expression", format[_EXECscript3,"item50.sqf"]]], "1", "1"],
		["Key Maker's Kit", [10],  "", -5, [["expression", format[_EXECscript3,"item51.sqf"]]], "1", "1"],
		["Radio", [11],  "", -5, [["expression", format[_EXECscript3,"item93.sqf"]]], "1", "1"],
		["Entrenching Tool", [12],  "", -5, [["expression", format[_EXECscript3,"item94.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuFood =
[
	["",true],
		["Soda", [2],  "", -5, [["expression", format[_EXECscript3,"item21.sqf"]]], "1", "1"],
		["Steak", [3],  "", -5, [["expression", format[_EXECscript3,"item22.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuBuild =
[
	["",true],
		["Safe", [2],  "", -5, [["expression", format[_EXECscript3,"item57.sqf"]]], "1", "1"],	
		["Corrugated Fence", [3],  "", -5, [["expression", format[_EXECscript3,"item95.sqf"]]], "1", "1"],	
		["Metal Panel", [4],  "", -5, [["expression", format[_EXECscript3,"item96.sqf"]]], "1", "1"],	
		["H-Barrier", [5],  "", -5, [["expression", format[_EXECscript3,"item60.sqf"]]], "1", "1"],	
		["Sandbag", [6],  "", -5, [["expression", format[_EXECscript3,"item59.sqf"]]], "1", "1"],
		["Sandbag Nest", [7],  "", -5, [["expression", format[_EXECscript3,"item64.sqf"]]], "1", "1"],	
		["Plot Pole", [8],  "", -5, [["expression", format[_EXECscript3,"item54.sqf"]]], "1", "1"],
		["Nice Shed", [9],  "", -5, [["expression", format[_EXECscript3,"item61.sqf"]]], "1", "1"],
		["Storage Shed", [10],  "", -5, [["expression", format[_EXECscript3,"item62.sqf"]]], "1", "1"],
		["Wooden Shack", [11],  "", -5, [["expression", format[_EXECscript3,"item63.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Next Page", [12], "#USER:WeaponMenuBuild2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuBuild2 =
[
	["",true],
		["Desert Netting", [2],  "", -5, [["expression", format[_EXECscript3,"item65.sqf"]]], "1", "1"],
		["Large Desert Netting", [3],  "", -5, [["expression", format[_EXECscript3,"item66.sqf"]]], "1", "1"],
		["Forest Netting", [4],  "", -5, [["expression", format[_EXECscript3,"item67.sqf"]]], "1", "1"],
		["Large Forest Netting", [5],  "", -5, [["expression", format[_EXECscript3,"item68.sqf"]]], "1", "1"],
		["Gate", [6],  "", -5, [["expression", format[_EXECscript3,"item69.sqf"]]], "1", "1"],
		["Camping Tent", [7],  "", -5, [["expression", format[_EXECscript3,"item70.sqf"]]], "1", "1"],
		["Domed Desert Tent", [8],  "", -5, [["expression", format[_EXECscript3,"item71.sqf"]]], "1", "1"],
		["Green Dome Tent", [9],  "", -5, [["expression", format[_EXECscript3,"item72.sqf"]]], "1", "1"],
		["Tank Trap Kit", [10],  "", -5, [["expression", format[_EXECscript3,"item58.sqf"]]], "1", "1"],	
		["Wire Fencing", [11],  "", -5, [["expression", format[_EXECscript3,"item56.sqf"]]], "1", "1"],	
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenuMetals =
[
	["",true],
		["12xSafe", [2],  "", -5, [["expression", format[_EXECscript3,"item59.sqf"]]], "1", "1"],
		["12x10oz Gold", [3],  "", -5, [["expression", format[_EXECscript3,"item38.sqf"]]], "1", "1"],
		["Briefcase", [4],  "", -5, [["expression", format[_EXECscript3,"item91.sqf"]]], "1", "1"],
		["10oz Gold", [5],  "", -5, [["expression", format[_EXECscript3,"item23.sqf"]]], "1", "1"],
		["10oz Silver", [6],  "", -5, [["expression", format[_EXECscript3,"item25.sqf"]]], "1", "1"],
		["10oz Copper", [7],  "", -5, [["expression", format[_EXECscript3,"item27.sqf"]]], "1", "1"],
		["10oz Tin", [8],  "", -5, [["expression", format[_EXECscript3,"item31.sqf"]]], "1", "1"],
		["10oz Aluminium", [9],  "", -5, [["expression", format[_EXECscript3,"item29.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

//VEHICLE MENUS
VehicleMenu = 
[
	["",true],
		["Planes", [2], "#USER:VehiclePlane", -5, [["expression", ""]], "1", "1"],
		["Helicopters", [3], "#USER:VehicleHeli", -5, [["expression", ""]], "1", "1"],
//		["UAVs/Missiles", [4], "#USER:VehicleUAV", -5, [["expression", ""]], "1", "1"],		
		["Tanks, APC's, and Military", [4], "#USER:VehicleTank", -5, [["expression", ""]], "1", "1"],		
		["Cars", [5], "#USER:VehicleCar", -5, [["expression", ""]], "1", "1"],
		["Armed Vehicles", [6], "#USER:VehicleArmed", -5, [["expression", ""]], "1", "1"],
		["HMMWVs", [7], "#USER:VehicleHMMWV", -5, [["expression", ""]], "1", "1"],
		["Static", [8], "#USER:VehicleStatic", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehiclePlane =
[
["",true],
		["C130-J", [2],  "", -5, [["expression", format[_EXECscript5,"C130.sqf"]]], "1", "1"],
		["F35 Volt", [3],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["MV22", [4],  "", -5, [["expression", format[_EXECscript5,"MV22.sqf"]]], "1", "1"],
		["L39", [5],  "", -5, [["expression", format[_EXECscript5,"L39.sqf"]]], "1", "1"],
		["Warthog", [6],  "", -5, [["expression", format[_EXECscript5,"A10.sqf"]]], "1", "1"],
		["Gyro", [7],  "", -5, [["expression", format[_EXECscript5,"Gyro.sqf"]]], "1", "1"],
		["Su34", [8],  "", -5, [["expression", format[_EXECscript5,"SU34.sqf"]]], "1", "1"],
		["Cessna", [9],  "", -5, [["expression", format[_EXECscript5,"Plane.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next Page", [12], "#USER:VehiclePlane2", -5, [["expression", ""]], "1", "1"],				
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehiclePlane2 =
[
["",true],
		["AV8B", [2],  "", -5, [["expression", format[_EXECscript5,"AV8B.sqf"]]], "1", "1"],
		["AV8B2", [3],  "", -5, [["expression", format[_EXECscript5,"AV8B2.sqf"]]], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Helicopter Menu
VehicleHeli =
[
["",true],
		["Civilian Helicopters", [2], "#USER:VehicleHeli2", -5, [["expression", ""]], "1", "1"],				
		["Black Market Helicopters", [3], "#USER:VehicleHeli3", -5, [["expression", ""]], "1", "1"],				
		["Hero Helicopters", [4], "#USER:VehicleHeli4", -5, [["expression", ""]], "1", "1"],				
		["Bandit Helicopters", [5], "#USER:VehicleHeli5", -5, [["expression", ""]], "1", "1"],				
		["Bell-47 Helicopters", [6], "#USER:VehicleHeliB1", -5, [["expression", ""]], "1", "1"],				

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Civilian Helicopters
VehicleHeli2 =
[
["",true],
		["Ka-134", [2],  "", -5, [["expression", '[player, "Ka137_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Mozzy", [3],  "", -5, [["expression", '[player, "CSJ_GyroC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Little Bird (Grey)", [4],  "", -5, [["expression", '[player, "AH6X_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Little Bird (Black)", [5],  "", -5, [["expression", '[player, "MH6J_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Mi17", [6],  "", -5, [["expression", '[player, "Mi17_Civilian_DZ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Merlin", [7],  "", -5, [["expression", '[player, "BAF_Merlin_HC3_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["UH-60M MEV", [8],  "", -5, [["expression", '[player, "UH60M_MEV_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Black Market Helicopters
VehicleHeli3 =
[
["",true],
		["Nothing Here...", [-1], "", -5, [["expression", ""]], "1", "0"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Hero Helicopters
VehicleHeli4 =
[
["",true],
		["Ka-134", [2],  "", -5, [["expression", '[player, "Ka137_MG_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Little Bird (Armed)", [3],  "", -5, [["expression", '[player, "AH6J_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["AH-11 Wildcat", [4],  "", -5, [["expression", '[player, "AW159_Lynx_BAF"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Super Huey", [5],  "", -5, [["expression", '[player, "UH1Y_DZ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Sea Hawk", [6],  "", -5, [["expression", '[player, "MH60S"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Chinook", [7],  "", -5, [["expression", '[player, "CH_47F_EP1_DZ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["AH-1Z Cobra", [8],  "", -5, [["expression", '[player, "AH1Z"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["AH-64D Apache", [9],  "", -5, [["expression", '[player, "AH64D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["AH-64D Sidewinders", [9],  "", -5, [["expression", '[player, "AH64D_Sidewinders"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["AH-64D BAF", [10],  "", -5, [["expression", '[player, "BAF_Apache_AH1_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Bandit Helicopters
VehicleHeli5 =
[
["",true],
		["Ka-134", [2],  "", -5, [["expression", '[player, "Ka137_MG_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Little Bird (Armed)", [3],  "", -5, [["expression", '[player, "AH6J_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Ka-60", [4],  "", -5, [["expression", '[player, "Ka60_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Ka-60 (GL)", [5],  "", -5, [["expression", '[player, "Ka60_GL_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Huey", [6],  "", -5, [["expression", '[player, "UH1H_DZ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Black Hawk", [7],  "", -5, [["expression", '[player, "UH60M_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Mi17", [8],  "", -5, [["expression", '[player, "Mi17_DZ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Ka-52", [9],  "", -5, [["expression", '[player, "Ka52"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Ka-52 Black", [10],  "", -5, [["expression", '[player, "Ka52Black"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Mi-24 D", [11],  "", -5, [["expression", '[player, "Mi24_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Mi-24 P", [-1],  "", -5, [["expression", '[player, "Mi24_P"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Mi-24 V", [-1],  "", -5, [["expression", '[player, "Mi24_V"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Bell-47/H-13 Action Menu
VehicleHeliB1 =
[
["",true],
		["MH-13E Medevac (unarmed, ambulance)", [2], "#USER:VehicleHeliB2", -5, [["expression", ""]], "1", "1"],				
		["OH-13E Amphibious Rescue (unarmed, ambulance, smokescreen)", [3], "#USER:VehicleHeliB3", -5, [["expression", ""]], "1", "1"],				
		["UH-13H Gunship (gun pods+grenades)", [4], "#USER:VehicleHeliB4", -5, [["expression", ""]], "1", "1"],				
		["UH-13B Transport (door gunner+grenades)", [5], "#USER:VehicleHeliB5", -5, [["expression", ""]], "1", "1"],				
		["Bell 47 Civ - Chernarussian", [6], "#USER:VehicleHeliB6", -5, [["expression", ""]], "1", "1"],				
		["Bell 47 Civ - Russian", [7], "#USER:VehicleHeliB7", -5, [["expression", ""]], "1", "1"],				
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// MH-13E Medevac (unarmed, ambulance)
VehicleHeliB2 =
[
["",true],
		["MH-13E Medevac (unarmed, ambulance)", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["USMC", [2],  "", -5, [["expression", '[player, "pook_H13_medevac"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CDF", [3],  "", -5, [["expression", '[player, "pook_H13_medevac_CDF"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["TAK", [4],  "", -5, [["expression", '[player, "pook_H13_medevac_TAK"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["ChDKZ", [5],  "", -5, [["expression", '[player, "pook_H13_medevac_INS"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["UNO", [6],  "", -5, [["expression", '[player, "pook_H13_medevac_UNO"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["PMC", [7],  "", -5, [["expression", '[player, "pook_H13_medevac_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["GUE", [8],  "", -5, [["expression", '[player, "pook_H13_medevac_GUE"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CSAR Orange", [9],  "", -5, [["expression", '[player, "pook_H13_medevac_CIV"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CSAR Orange (RU)", [10],  "", -5, [["expression", '[player, "pook_H13_medevac_CIV_RU"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// OH-13E Amphibious Rescue (unarmed, ambulance, smokescreen)
VehicleHeliB3 =
[
["",true],
		["OH-13E Amphibious Rescue (unarmed, ambulance, smokescreen)", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["USMC", [2],  "", -5, [["expression", '[player, "pook_H13_amphib"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CDF", [3],  "", -5, [["expression", '[player, "pook_H13_amphib_CDF"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["TAK", [4],  "", -5, [["expression", '[player, "pook_H13_amphib_TAK"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["ChDKZ", [5],  "", -5, [["expression", '[player, "pook_H13_amphib_INS"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["UNO", [6],  "", -5, [["expression", '[player, "pook_H13_amphib_UNO"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["PMC", [7],  "", -5, [["expression", '[player, "pook_H13_amphib_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["GUE", [8],  "", -5, [["expression", '[player, "pook_H13_amphib_GUE"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CSAR Orange", [9],  "", -5, [["expression", '[player, "pook_H13_amphib_CIV"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CSAR Orange (RU)", [10],  "", -5, [["expression", '[player, "pook_H13_amphib_CIV_RU"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// UH-13H Gunship (gun pods+grenades)
VehicleHeliB4 =
[
["",true],
		["UH-13H Gunship (gun pods+grenades)", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["USMC", [2],  "", -5, [["expression", '[player, "pook_H13_gunship"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CDF", [3],  "", -5, [["expression", '[player, "pook_H13_gunship_CDF"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["TAK", [4],  "", -5, [["expression", '[player, "pook_H13_gunship_TAK"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["ChDKZ", [5],  "", -5, [["expression", '[player, "pook_H13_gunship_INS"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["UNO", [6],  "", -5, [["expression", '[player, "pook_H13_gunship_UNO"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["PMC", [7],  "", -5, [["expression", '[player, "pook_H13_gunship_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["GUE", [8],  "", -5, [["expression", '[player, "pook_H13_gunship_GUE"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// UH-13B Transport (door gunner+grenades)
VehicleHeliB5 =
[
["",true],
		["UH-13B Transport (door gunner+grenades)", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["USMC", [2],  "", -5, [["expression", '[player, "pook_H13_transport"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["CDF", [3],  "", -5, [["expression", '[player, "pook_H13_transport_CDF"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["TAK", [4],  "", -5, [["expression", '[player, "pook_H13_transport_TAK"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["ChDKZ", [5],  "", -5, [["expression", '[player, "pook_H13_transport_INS"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["UNO", [6],  "", -5, [["expression", '[player, "pook_H13_transport_UNO"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["PMC", [7],  "", -5, [["expression", '[player, "pook_H13_transport_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["GUE", [8],  "", -5, [["expression", '[player, "pook_H13_transport_GUE"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Bell 47 Civ - Chernarussian
VehicleHeliB6 =
[
["",true],
		["Bell 47 Civ - Chernarussian", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Blue\White", [2],  "", -5, [["expression", '[player, "pook_H13_civ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["White", [3],  "", -5, [["expression", '[player, "pook_H13_civ_white"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Slate Blue", [4],  "", -5, [["expression", '[player, "pook_H13_civ_slate"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Black", [5],  "", -5, [["expression", '[player, "pook_H13_civ_black"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Yellow", [6],  "", -5, [["expression", '[player, "pook_H13_civ_yellow"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


// Bell 47 Civ - Russian
VehicleHeliB7 =
[
["",true],
		["Bell 47 Civ - Russian", [-1], "", -5, [["expression", ""]], "1", "0"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Blue\White", [2],  "", -5, [["expression", '[player, "pook_H13_civ_ru"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["White", [3],  "", -5, [["expression", '[player, "pook_H13_civ_ru_white"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Slate Blue", [4],  "", -5, [["expression", '[player, "pook_H13_civ_ru_slate"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Black", [5],  "", -5, [["expression", '[player, "pook_H13_civ_ru_black"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Yellow", [6],  "", -5, [["expression", '[player, "pook_H13_civ_ru_yellow"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Tanks Action Menu
VehicleTank =
[
["",true],
		["US Tanks", [2], "#USER:VehicleTankUS", -5, [["expression", ""]], "1", "1"],				
		["US APC's", [3], "#USER:VehicleTankUS2", -5, [["expression", ""]], "1", "1"],				
		["US Military", [4], "#USER:VehicleTankUS3", -5, [["expression", ""]], "1", "1"],				
		["Russan Tanks", [5], "#USER:VehicleTankRU", -5, [["expression", ""]], "1", "1"],				
		["Russan APC's", [6], "#USER:VehicleTankRU2", -5, [["expression", ""]], "1", "1"],				
		["Bell-47 Helicopters", [7], "#USER:VehicleHeliB1", -5, [["expression", ""]], "1", "1"],				

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US Tanks
VehicleTankUS =
[
["",true],
		["US Tanks", [-1], "", -5, [["expression", ""]], "1", "0"],
		["M1A1 Abrams (Forest)", [2],  "", -5, [["expression", '[player, "M1A1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M1A2 TUSK (Forest)", [3],  "", -5, [["expression", '[player, "M1A2_TUSK_MG"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M1A1 Abrams (Desert)", [4],  "", -5, [["expression", '[player, "M1A1_US_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M1A2 TUSK (Desert)", [5],  "", -5, [["expression", '[player, "M1A2_US_TUSK_MG_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["AAV", [6],  "", -5, [["expression", '[player, "AAV"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M270 MLRS (Forest)", [7],  "", -5, [["expression", '[player, "MLRS"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M270 MLRS (Desert)", [8],  "", -5, [["expression", '[player, "MLRS_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M2A2 Bradley IFV", [9],  "", -5, [["expression", '[player, "M2A2_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M2A3 ERA Bradley IFV", [10],  "", -5, [["expression", '[player, "M2A3_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["M6 Linebacker (AA)", [11],  "", -5, [["expression", '[player, "M6_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["FV510 Warrior (Forest)", [-1],  "", -5, [["expression", '[player, "BAF_FV510_W"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["FV510 Warrior (Desert)", [-1],  "", -5, [["expression", '[player, "BAF_FV510_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US APC's
VehicleTankUS2 =
[
["",true],
		["US APC's", [-1], "", -5, [["expression", ""]], "1", "0"],
		["LAV-25", [2],  "", -5, [["expression", '[player, "LAV25"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["LAV-25 (HQ)", [3],  "", -5, [["expression", '[player, "LAV25_HQ"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker ICV (M2)", [4],  "", -5, [["expression", '[player, "M1126_ICV_M2_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker ICV (MK19)", [5],  "", -5, [["expression", '[player, "M1126_ICV_MK19_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker MGS", [6],  "", -5, [["expression", '[player, "M1128_MGS_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker MC", [7],  "", -5, [["expression", '[player, "M1129_MC_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker CV", [8],  "", -5, [["expression", '[player, "M1130_CV_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker (TOW)", [9],  "", -5, [["expression", '[player, "M1135_ATGMV_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Stryker MEV", [10],  "", -5, [["expression", '[player, "M1133_MEV_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US Military Action Menu
VehicleTankUS3 =
[
["",true],
		["Forest HMMWV's", [2], "#USER:VehicleTankUS4", -5, [["expression", ""]], "1", "1"],				
		["Desert HMMWV's", [3], "#USER:VehicleTankUS5", -5, [["expression", ""]], "1", "1"],				
		["MTVRs", [4], "#USER:VehicleTankUS7", -5, [["expression", ""]], "1", "1"],				
		["Kamaz", [5], "#USER:VehicleTankUS8", -5, [["expression", ""]], "1", "1"],				
		["Land Rovers", [6], "#USER:VehicleTankUS9", -5, [["expression", ""]], "1", "1"],				
		["Others", [6], "#USER:VehicleTankUS10", -5, [["expression", ""]], "1", "1"],				

		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US HMMWV (Forest)
VehicleTankUS4 =
[
["",true],
		["US HMMWV", [-1], "", -5, [["expression", ""]], "1", "0"],
		["HMMWV", [2],  "", -5, [["expression", '[player, "HMMWV"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Ambulance", [3],  "", -5, [["expression", '[player, "HMMWV_Ambulance"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV TOW", [4],  "", -5, [["expression", '[player, "HMMWV_TOW"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV MK19", [5],  "", -5, [["expression", '[player, "HMMWV_MK19"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV M240", [6],  "", -5, [["expression", '[player, "HMMWV_Armored"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Avenger", [7],  "", -5, [["expression", '[player, "HMMWV_Avenger"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV M2", [8],  "", -5, [["expression", '[player, "HMMWV_M2"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US HMMWV (Desert)
VehicleTankUS5 =
[
["",true],
		["US HMMWV (Desert) Page 1", [-1], "", -5, [["expression", ""]], "1", "0"],
		["HMMWV", [2],  "", -5, [["expression", '[player, "HMMWV_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Ambulance", [3],  "", -5, [["expression", '[player, "HMMWV_Ambulance_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Ambulance [CZ]", [4],  "", -5, [["expression", '[player, "HMMWV_Ambulance_CZ_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV TOW", [5],  "", -5, [["expression", '[player, "HMMWV_TOW_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV MK19", [6],  "", -5, [["expression", '[player, "HMMWV_MK19_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Terminal ", [7],  "", -5, [["expression", '[player, "HMMWV_Terminal_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Avenger", [8],  "", -5, [["expression", '[player, "HMMWV_Avenger_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV CROWS M2", [9],  "", -5, [["expression", '[player, "HMMWV_M998_crows_M2_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV CROWS MK19", [10],  "", -5, [["expression", '[player, "HMMWV_M998_crows_MK19_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV Utility", [11],  "", -5, [["expression", '[player, "HMMWV_M1035_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next Page", [12], "#USER:VehicleTankUS5", -5, [["expression", ""]], "1", "1"],				
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US HMMWV (Desert) Page 2
VehicleTankUS6 =
[
["",true],
		["US HMMWV (Desert) Page 2", [-1], "", -5, [["expression", ""]], "1", "0"],
		["HMMWV SOV", [2],  "", -5, [["expression", '[player, "HMMWV_M998A2_SOV_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV GPK [US]", [3],  "", -5, [["expression", '[player, "HMMWV_M1151_M2_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["HMMWV GPK [ACR] ", [4],  "", -5, [["expression", '[player, "HMMWV_M1151_M2_CZ_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next Page", [12], "#USER:VehicleTankUS5", -5, [["expression", ""]], "1", "1"],				
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US MTVR's
VehicleTankUS7 =
[
["",true],
		["US MTVR's", [-1], "", -5, [["expression", ""]], "1", "0"],
		["MTVR (Forest)", [2],  "", -5, [["expression", '[player, "MTVR"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR (Desert)", [3],  "", -5, [["expression", '[player, "MTVR_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Ammo (Forest)", [4],  "", -5, [["expression", '[player, "MTVR_Reammo"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Ammo (Desert)", [5],  "", -5, [["expression", '[player, "MTVR_Reammo_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Repair (Forest)", [6],  "", -5, [["expression", '[player, "MTVR_Repair"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Repair (Desert)", [7],  "", -5, [["expression", '[player, "MTVR_Repair_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Refuel (Forest)", [8],  "", -5, [["expression", '[player, "MTVR_Refuel"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Refuel (Desert)", [9],  "", -5, [["expression", '[player, "MTVR_Refuel_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Salvage (Desert)", [10],  "", -5, [["expression", '[player, "MtvrSupply_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["MTVR Supply (Desert)", [11],  "", -5, [["expression", '[player, "MtvrSalvage_DES_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US Kamaz
VehicleTankUS8 =
[
["",true],
		["US Kamaz's", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Utility Truck", [2],  "", -5, [["expression", '[player, "Kamaz"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Utility Truck (Open)", [3],  "", -5, [["expression", '[player, "KamazOpen"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Utility Truck (Repair)", [4],  "", -5, [["expression", '[player, "KamazRepair"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Utility Truck (Fuel)", [5],  "", -5, [["expression", '[player, "KamazRefuel"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US Land Rover
VehicleTankUS9 =
[
["",true],
		["US Land Rover", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Military Offroad", [2],  "", -5, [["expression", '[player, "LandRover_TK_CIV_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad [ACR]", [3],  "", -5, [["expression", '[player, "LandRover_CZ_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad [BAF] (Forest)", [4],  "", -5, [["expression", '[player, "BAF_Offroad_W"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad [BAF] (Desert)", [5],  "", -5, [["expression", '[player, "BAF_Offroad_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad (M2) [Takistan Army]", [6],  "", -5, [["expression", '[player, "LandRover_MG_TK_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad (M2) [Takistan Militia]", [7],  "", -5, [["expression", '[player, "LandRover_MG_TK_INS_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad (SPG9) [Takistan Army]", [8],  "", -5, [["expression", '[player, "LandRover_SPG9_TK_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad (SPG9) [Takistan Militia]", [9],  "", -5, [["expression", '[player, "LandRover_SPG9_TK_INS_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Military Offroad Special [ACR]", [10],  "", -5, [["expression", '[player, "LandRover_Special_CZ_EP1"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// US Jackal
VehicleTankUS10 =
[
["",true],
		["US Military Other", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Jackal M2 (Forest)", [2],  "", -5, [["expression", '[player, "BAF_Jackal2_L2A1_w"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Jackal M2 (Desert)", [3],  "", -5, [["expression", '[player, "BAF_Jackal2_L2A1_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Jackal Mk19 (Forest)", [4],  "", -5, [["expression", '[player, "BAF_Jackal2_GMG_w"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["Jackal Mk19 (Desert)", [5],  "", -5, [["expression", '[player, "BAF_Jackal2_GMG_D"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["SUV Armored", [6],  "", -5, [["expression", '[player, "ArmoredSUV_PMC"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		["SUV Armored (DZE)", [7],  "", -5, [["expression", '[player, "ArmoredSUV_PMC_DZE"] execVM "admintools\Vehicles\spawnVeh.sqf"']], "1", "1"],
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleUAV =
[
["",true],
//		["CruiseMissile1", [2],  "", -5, [["expression", format[_EXECscript5,"CruiseMissile1.sqf"]]], "1", "1"],
//		["CruiseMissile2", [3],  "", -5, [["expression", format[_EXECscript5,"CruiseMissile2.sqf"]]], "1", "1"],
		["MQ9PredatorB", [3],  "", -5, [["expression", format[_EXECscript5,"MQ9PredatorB.sqf"]]], "1", "1"],		
		["MQ9PredatorB EP1", [4],  "", -5, [["expression", format[_EXECscript5,"MQ9PredatorB_ep1.sqf"]]], "1", "1"],		
		["Pchela1T", [2],  "", -5, [["expression", format[_EXECscript5,"Pchela1T.sqf"]]], "1", "1"],		
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleCar =
[
["",true],
		["VW Golf", [2],  "", -5, [["expression", format[_EXECscript5,"miniHB.sqf"]]], "1", "1"],
		["Moto", [3],  "", -5, [["expression", format[_EXECscript5,"Moto.sqf"]]], "1", "1"],
		["Hello Kitty", [4],  "", -5, [["expression", format[_EXECscript5,"Mini.sqf"]]], "1", "1"],
		["Kitty x 4", [5],  "", -5, [["expression", format[_EXECscript5,"Mini4.sqf"]]], "1", "1"],
		["Hatchback", [6],  "", -5, [["expression", format[_EXECscript5,"Hatchback.sqf"]]], "1", "1"],
		["Bus", [7],  "", -5, [["expression", format[_EXECscript5,"bus.sqf"]]], "1", "1"],
		["MTVR fors", [8],  "", -5, [["expression", format[_EXECscript5,"MTVRf.sqf"]]], "1", "1"],
		["ATV", [9],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Bike", [10],  "", -5, [["expression", format[_EXECscript5,"Bike.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleArmed =
[
["",true],
		["Tank", [2],  "", -5, [["expression", format[_EXECscript5,"tank.sqf"]]], "1", "1"],
		["Tank Fallu", [3],  "", -5, [["expression", format[_EXECscript5,"TANKfall.sqf"]]], "1", "1"],
		["Tank Namal", [4],  "", -5, [["expression", format[_EXECscript5,"TANKnam.sqf"]]], "1", "1"],
		["Tank Tusk", [4],  "", -5, [["expression", format[_EXECscript5,"TANKtusk.sqf"]]], "1", "1"],
		["MLRS", [5],  "", -5, [["expression", format[_EXECscript5,"mlrs.sqf"]]], "1", "1"],
		["Tunguska", [6],  "", -5, [["expression", format[_EXECscript5,"tunguska.sqf"]]], "1", "1"],
		["Armored SUV", [7],  "", -5, [["expression", format[_EXECscript5,"ArmedSUV.sqf"]]], "1", "1"],
		["Vodnik 2xPK", [8],  "", -5, [["expression", format[_EXECscript5,"Vodnik.sqf"]]], "1", "1"],
		["Vodnik HMG", [9],  "", -5, [["expression", format[_EXECscript5,"VodnikHMG.sqf"]]], "1", "1"],
		["GRAD", [10],  "", -5, [["expression", format[_EXECscript5,"grad.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next Page", [12], "#USER:VehicleArmed2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleArmed2 =
[
["",true],
		["V3 Look a like", [2],  "", -5, [["expression", format[_EXECscript5,"V3.sqf"]]], "1", "1"],
		["MTVR Repair", [3],  "", -5, [["expression", format[_EXECscript5,"MtvrR.sqf"]]], "1", "1"],
		["M1128 MGS", [4],  "", -5, [["expression", format[_EXECscript5,"M1128.sqf"]]], "1", "1"],
		["Bradley", [4],  "", -5, [["expression", format[_EXECscript5,"M2A3.sqf"]]], "1", "1"],
		["APC", [5],  "", -5, [["expression", format[_EXECscript5,"APC.sqf"]]], "1", "1"],
		["BMP-2 Ambulance", [6],  "", -5, [["expression", format[_EXECscript5,"bmp2A.sqf"]]], "1", "1"],
		["BTR-60", [7],  "", -5, [["expression", format[_EXECscript5,"btr60.sqf"]]], "1", "1"],
		["M1133 MEV", [8],  "", -5, [["expression", format[_EXECscript5,"m1133mev.sqf"]]], "1", "1"],
		["LAV25", [9],  "", -5, [["expression", format[_EXECscript5,"lav25.sqf"]]], "1", "1"],
		//["GRAD", [10],  "", -5, [["expression", format[_EXECscript7,"grad.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleHMMWV =
[
["",true],
		["Unarmed", [2],  "", -5, [["expression", format[_EXECscript5,"hmmwv.sqf"]]], "1", "1"],
		["SOV", [3],  "", -5, [["expression", format[_EXECscript5,"hmmwv_sov.sqf"]]], "1", "1"],
		["GPK M2", [4],  "", -5, [["expression", format[_EXECscript5,"hmmwv_gpk.sqf"]]], "1", "1"],
		["Avenger", [5],  "", -5, [["expression", format[_EXECscript5,"hmmwv_avenger.sqf"]]], "1", "1"],
		["Mk19", [6],  "", -5, [["expression", format[_EXECscript5,"hmmwv_mk19.sqf"]]], "1", "1"],
		["Crows", [7],  "", -5, [["expression", format[_EXECscript5,"hmmwv_crows.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleStatic =
[
["",true],
		["Search Light", [2],  "", -5, [["expression", format[_EXECscript5,"StaticSEARCHLIGHT.sqf"]]], "1", "1"],
		["Kord", [3],  "", -5, [["expression", format[_EXECscript5,"StaticKord.sqf"]]], "1", "1"],
		["M2(Perm)", [4],  "", -5, [["expression", format[_EXECscript5,"StaticM2.sqf"]]], "1", "1"],
		["Fire Barrel", [4],  "", -5, [["expression", format[_EXECscript5,"StaticFireBarrel.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


BuildingsMenu =
[
	["",true],
		["TP Shitter(Perm)", [2],  "", -5, [["expression", format[_EXECscript8,"Shitter.sqf"]]], "1", "1"],		
		["H-Bar 10x (Perm)", [3],  "", -5, [["expression", format[_EXECscript8,"HBarrier1.sqf"]]], "1", "1"],
		["H-Bar 10x Tall(Perm)", [4],  "", -5, [["expression", format[_EXECscript8,"HBarrier2.sqf"]]], "1", "1"],
		["Fort Watchtower(Perm)", [5],  "", -5, [["expression", format[_EXECscript8,"watchtower.sqf"]]], "1", "1"],		
		["Barracks(Perm)", [6],  "", -5, [["expression", format[_EXECscript8,"Barrack.sqf"]]], "1", "1"],		
		["Fort Barracks(Perm)", [7],  "", -5, [["expression", format[_EXECscript8,"Fort_Barracks.sqf"]]], "1", "1"],				
		["Fort Nest M240(Perm)", [8],  "", -5, [["expression", format[_EXECscript8,"Fort_Nest.sqf"]]], "1", "1"],				
		["Land Nest(Perm)", [9],  "", -5, [["expression", format[_EXECscript8,"Land_Nest.sqf"]]], "1", "1"],				
		["Depot(Perm)", [10],  "", -5, [["expression", format[_EXECscript8,"Depot.sqf"]]], "1", "1"],				
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Next Page", [12], "#USER:BuildingsMenu2", -5, [["expression", ""]], "1", "1"],				
		["Exit", [14], "", -3, [["expression", ""]], "1", "1"]
];
BuildingsMenu2 =
[
	["",true],
		["Water Well(Perm)", [2],  "", -5, [["expression", format[_EXECscript8,"Land_pumpa.sqf"]]], "1", "1"],	
		["Land Radar(Perm)", [3],  "", -5, [["expression", format[_EXECscript8,"Land_radar.sqf"]]], "1", "1"],				
		["Mortar(Perm)", [4],  "", -5, [["expression", format[_EXECscript8,"Mortar.sqf"]]], "1", "1"],				
		["Artillery(Perm)", [5],  "", -5, [["expression", format[_EXECscript8,"Artillery.sqf"]]], "1", "1"],	
		["Barn Short(Perm)", [6],  "", -5, [["expression", format[_EXECscript8,"BarnShort.sqf"]]], "1", "1"],				
		["Red Gate(Perm)", [7],  "", -5, [["expression", format[_EXECscript8,"redgate.sqf"]]], "1", "1"],				
		["Ammo Box(Perm)", [8],  "", -5, [["expression", format[_EXECscript8,"superweapons.sqf"]]], "1", "1"],	
		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";