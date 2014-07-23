_spawn = "KORD_high_UN_EP1";
_dirplr = getDir player;
_spwnveh = _spawn createVehicle ([0, 0, 0]);
_spwnveh setVariable ["Sarge",1,true];
_spwnveh attachTo [vehicle player, [0, 2, 1.4]];
sleep 5;
detach _spwnveh;