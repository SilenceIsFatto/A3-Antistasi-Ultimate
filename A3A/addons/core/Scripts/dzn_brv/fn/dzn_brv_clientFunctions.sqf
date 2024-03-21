dzn_brv_fnc_getLogTime = {
	private _time = (if (isMultiplayer) then { round(serverTime) } else { round(time) }) - dzn_brv_timeLabelInit;

	_time max 0
};

dzn_brv_fnc_sendAttackVectorData = {
	params ["_from","_to","_timelabel"];
	
	[
		_timelabel
		, round(_from # 0)
		, round(_from # 1)
		, round(_to # 0)
		, round(_to # 1)
	] remoteExecCall ["dzn_brv_logAV",2];
};

dzn_brv_fnc_trackProjectile = {
	params ["_unit", "_proj", "_timelabel"];
	private _from = getPosASL _unit;
	private _to = _from getPos [5, getDir _unit];

	waitUntil {
		if (isNull _proj) exitWith { true };
		_to = getPosASL _proj;
		false
	};

	waitUntil { (call dzn_brv_fnc_getLogTime) > (_timelabel + 2) };

	_unit setVariable [format ["dzn_brv_av%1", _timelabel], nil];
	[_from, _to, _timelabel] call dzn_brv_fnc_sendAttackVectorData;
};

dzn_brv_fnc_handleClientFiredEH = {
	if (dzn_brv_finished) exitWith {};
	params ["_unit", "_weapon", "", "", "", "", "_proj", "_veh"];

	private _logTime = call dzn_brv_fnc_getLogTime;
	if (!isNil { _unit getVariable format ["dzn_brv_av%1", _logTime] }) exitWith {};
	_unit setVariable [format ["dzn_brv_av%1", _logTime], true];

	[_unit, _proj, _logTime] spawn dzn_brv_fnc_trackProjectile;
};

dzn_brv_fnc_addClientEH = {
	waitUntil { sleep 1; !isNil "dzn_brv_timeLabelInit" };

	player addEventHandler ["Respawn", { player addEventHandler ["FiredMan", dzn_brv_fnc_handleClientFiredEH]; }];
	player addEventHandler ["FiredMan", dzn_brv_fnc_handleClientFiredEH];
};
