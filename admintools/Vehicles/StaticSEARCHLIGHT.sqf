_spawn = "SEARCHLIGHT";
_dirplr = getDir player;
_spwnveh = _spawn createVehicle ([0, 0, 0]);
_spwnveh setVariable ["Sarge",1,true];
_spwnveh attachTo [vehicle player, [0, 2, 0]];
sleep 5;
detach _spwnveh;