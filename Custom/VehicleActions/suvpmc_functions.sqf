suvpmc_closecover = //function to close Cover
{
    _vcl = vehicle player; //assign the vehicle the pilot is in to _vcl
    _vcl animate ["HideGun_01",1]; //fold gun down
    _vcl animate ["HideGun_02",1]; //fold gun down
    _vcl animate ["HideGun_03",1]; //fold gun down
    _vcl animate ["HideGun_04",1]; //fold gun down
    _vcl animate ["CloseCover1",1]; //close cover1
    _vcl animate ["CloseCover2",1]; //close cover2
    _vcl setVariable ["suvpmc_cover", 1, true]; //set it closed
    WaitUntil {!Alive _veh || format ["%1",_veh getVariable "suvpmc_cover"] != "1"}; //if suvpmc_cover is 0 or it is destroyed, continue with the script
    _veh setVariable ["suvpmc_cover", 0,true]; //set suvpmc_cover to 0, not needed, haven't tested if it's needed
};
suvpmc_opencover = //function to open cover
{
    _vcl = vehicle player; //assign the vehicle the pilot is in to _vcl
    _vcl animate ["HideGun_01",0]; //fold gun down
    _vcl animate ["HideGun_02",0]; //fold gun down
    _vcl animate ["HideGun_03",0]; //fold gun down
    _vcl animate ["HideGun_04",0]; //fold gun down
    _vcl animate ["CloseCover1",0]; //close cover1
    _vcl animate ["CloseCover2",0]; //close cover2
    _vcl setVariable ["suvpmc_cover", 0,true]; //set it opened
};