// Publishes the AI counts to clients
private ["_previousAICount","_previousAIHeliCount","_currentAICount"];

PV_AICount = [0,0];
publicVariable "PV_AICount";
_previousAICount = PV_AICount select 0;
_previousAIHeliCount = PV_AICount select 1;
_currentAICount = (({alive _x} count KRON_AllWest) + ({alive _x} count KRON_AllEast) + ({alive _x} count KRON_AllRes));
_currentHeliCount = 0;

while {true} do {
	_currentAICount = (({alive _x} count KRON_AllWest) + ({alive _x} count KRON_AllEast) + ({alive _x} count KRON_AllRes));
	_currentHeliCount = 0;	
	if ((_previousAICount != _currentAICount || (_previousAIHeliCount != _currentHeliCount)) then {

		PV_AICount = [_currentAICount, _currentHeliCount];
		publicVariable "PV_AICount";

		_previousAICount = PV_AICount select 0;
		_previousAIHeliCount = PV_AICount select 1;	
	};
	sleep 5;
};

