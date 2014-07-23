private ["_object", "_config", "_type", "_attachToPlayer", "_object_types", "_target_spots"];

_object = _this select 0;
_type = _this select 1;
_config = (missionConfigFile >> "SnapPoints" >> _type);
SnappingAttachedToPlayer = false;

_attachToPlayer = {
	if (!SnappingAttachedToPlayer) then {
		detach _this;
		_this attachTo [player, SnappingOffset];
		_this setDir SnappingDir;
		SnappingAttachedToPlayer = true;
	};
};

if (!(isClass _config)) then {
	cutText ["Snapping not available for this object.", "PLAIN DOWN"];
};

_object_types = getArray(_config >> "snap");
_target_spots = getArray(_config >> "points");
	
diag_log format["Building Object: %1", typeOf _object];

while {true} do {
	private ["_position", "_nearest_objects", "_closest_spot", "_closest_distance","_spot_marker","_target_object","_pos","_offsetDir"];
		
	if (isClass _config and SnappingEnabled) then {
		_position = player modelToWorld SnappingOffset;
		_nearest_objects = nearestObjects [_position, _object_types, 10];

		_target_object = objNull;

		if (count _nearest_objects > 0) then {
			if (_nearest_objects select 0 != _object) then {
				_target_object = _nearest_objects select 0;
			};
			if (count _nearest_objects > 1) then {
				_target_object = _nearest_objects select 1;
			};
		};

		if (!isNull _target_object) then {
			_closest_spot = [];

			_closest_distance = 0;
			{
				private ["_spot_posistion", "_distance"];
				_spot_posistion = _target_object modelToWorld (_x select 0);
				_distance = _position distance _spot_posistion;
				if (_closest_distance == 0 or _distance < _closest_distance) then {
					_closest_spot = _x;
					_closest_distance = _distance;
				};
			} forEach _target_spots;
		
			if (_closest_distance < 1.5) then {

				if (SnappingAttachedToPlayer) then {
					detach _object;
					_offsetDir = (getDir _target_object) + (_closest_spot select 1);
					_offsetDir = if (_offsetDir > 360) then { _offsetDir - 360 } else { _offsetDir };
					_offsetDir = if (_offsetDir < 0) then { _offsetDir + 360 } else { _offsetDir };
					_object setDir _offsetDir;
					
					SnappingAttachedToPlayer = false;
					SnappingResetPos = true;
				};	

				if (SnappingResetPos) then {
					_pos = _closest_spot select 0;
					_pos set [2, (_pos select 2) + SnappedOffsetZ];
					_object setPos (_target_object modelToWorld _pos);
					SnappingResetPos = false;
				};

			} else {
				_object call _attachToPlayer;
			};
		} else {
			_object call _attachToPlayer;
		};
	} else {
		_object call _attachToPlayer;		
	};
	sleep 1;
};
