_classname = "MAP_fort_watchtower";
_posplr = [((getPos player) select 0) + 5, ((getPos player) select 1) + 5, 0.5];
_dirplr = getDir player;

_object = createVehicle [_classname, _posplr, [], 0, "CAN_COLLIDE"];
_object setVariable ["Sarge",1,true];
_object setDir _dirplr;
player reveal _object;

dayzPublishVeh = [_object,[_dirplr,_posplr],_classname,false,dayz_characterID];
publicVariableServer  "dayzPublishVeh";		