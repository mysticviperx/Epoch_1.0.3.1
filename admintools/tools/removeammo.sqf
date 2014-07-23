
	_vehammotoremove = nearestObjects [player, ["AH1Z","Ka52","Ka52Black"], 500];
	{
		//titleText [Format["Found %1",(typeOf _x)],"PLAIN DOWN"]; titleFadeOut 6;	
		sleep 0.01;
		switch (typeOf _x) do
		{
			case "AH1Z"    : {titleText [Format["Found %1",(typeOf _x)],"PLAIN DOWN"]; titleFadeOut 2; _x removeMagazinesTurret ["38Rnd_FFAR", [-1]]; sleep 0.2; _x removeMagazinesTurret ["8Rnd_Hellfire", [0]]; _x removeMagazinesTurret ["2Rnd_Sidewinder_AH1Z", [0]]; _x removeWeapon "FFARLauncher"; _x removeWeapon "HellfireLauncher"; _x removeWeapon "SidewinderLaucher_AH1Z"; _x removeMagazine "38Rnd_FFAR"; _x removeMagazine "8Rnd_Hellfire"; _x removeMagazine "2Rnd_Sidewinder_AH1Z";};
			case "Ka52"    : {titleText [Format["Found %1",(typeOf _x)],"PLAIN DOWN"]; titleFadeOut 2; _x removeMagazinesTurret ["40Rnd_80mm", [-1]]; sleep 0.2; _x removeMagazinesTurret ["12Rnd_Vikhr_KA50", [0]]; _x removeWeapon "80mmLauncher"; _x removeWeapon "VikhrLauncher"; _x removeMagazine "40Rnd_80mm"; _x removeMagazine "12Rnd_Vikhr_KA50";};
			case "Ka52Black"    : {titleText [Format["Found %1",(typeOf _x)],"PLAIN DOWN"]; titleFadeOut 2; _x removeMagazinesTurret ["40Rnd_80mm", [-1]]; sleep 0.2; _x removeMagazinesTurret ["12Rnd_Vikhr_KA50", [0]]; _x removeWeapon "80mmLauncher"; _x removeWeapon "VikhrLauncher"; _x removeMagazine "40Rnd_80mm"; _x removeMagazine "12Rnd_Vikhr_KA50";};
		};
	} forEach _vehammotoremove;