_spawn = _this select 1;
_posplr = [((getPos (_this select 0)) select 0) + 2, ((getPos (_this select 0)) select 1) + 2, 0];
_dirplr = getDir (_this select 0);
_spwnveh = _spawn createVehicle (_posplr);
_spwnveh setVariable ["Sarge",1,true];