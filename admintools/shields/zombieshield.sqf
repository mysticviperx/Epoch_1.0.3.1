if (isNil "SheildMe") then {SheildMe = true;} else {SheildMe = !SheildMe}; if(SheildMe) then { zombieDistanceScreen = [	["",true],	["Distance", [-1], "", -5, [["expression", "zombieshield = false;"]], "1", "1"], 		["10", [2], "", -5, [["expression", "ZombieDistance=10;ZobieDistanceStat=true;"]], "1", "1"],	["20", [3], "", -5, [["expression", "ZombieDistance=20;ZobieDistanceStat=true;"]], "1", "1"],	["30", [4], "", -5, [["expression", "ZombieDistance=30;ZobieDistanceStat=true;"]], "1", "1"],	["40", [5], "", -5, [["expression", "ZombieDistance=40;ZobieDistanceStat=true;"]], "1", "1"],	["50", [6], "", -5, [["expression", "ZombieDistance=50;ZobieDistanceStat=true;"]], "1", "1"],	["100", [7], "", -5, [["expression", "ZombieDistance=100;ZobieDistanceStat=true;"]], "1", "1"],	["200", [8], "", -5, [["expression", "ZombieDistance=200;ZobieDistanceStat=true;"]], "1", "1"],		["500", [9], "", -5, [["expression", "ZombieDistance=500;ZobieDistanceStat=true;"]], "1", "1"],		["Exit", [13], "", -3, [["expression", "zombieshield = false;"]], "1", "1"]	];showCommandingMenu "#USER:zombieDistanceScreen";WaitUntil{ZobieDistanceStat}; titleText [format["Zombie shield activated with distance %1 meters!",ZombieDistance],"PLAIN DOWN"]; titleFadeOut 4; } else { ZobieDistanceStat=false;}; while {SheildMe && ZobieDistanceStat} do { _pos = getPos player; _zombies = _pos nearEntities ["zZombie_Base",ZombieDistance]; _count = count _zombies; for "_i" from 0 to (_count -1) do {  _zombie = _zombies select _i;deletevehicle _zombie; RandomHeadshots=round(random 4); if (!alive _zombie) then { zombiekills = player getVariable["zombieKills",0]; If (RandomHeadshots==1) then { _headShots = player getVariable["headShots",0]; player setVariable["headShots",_headShots+1,true] }; }; }; }; titleText ["Zombie shield deactivated!","PLAIN DOWN"]; titleFadeOut 4;