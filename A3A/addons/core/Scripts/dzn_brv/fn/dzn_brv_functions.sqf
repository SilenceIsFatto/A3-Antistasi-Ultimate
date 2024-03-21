dzn_brv_escapeQuotes = {
	// @NameEscaped = @Name call dzn_brv_escapeQuotes
	private["_result","_i"];
	_result = "";
	for "_i" from 0 to (count _this)-1 do {
		if !( (_this select [_i, 1]) in ["'",""""] ) then {
			_result = format [ "%1%2", _result, _this select [_i, 1] ]; 
		};
	};
	
	_result
};

dzn_brv_getLogTime = {
	private _time = (if (isMultiplayer) then { round(serverTime) } else { round(time) }) - dzn_brv_timeLabelInit;

	_time max 0
};

dzn_brv_getMissionSummary = {
	if (!isNil "tSF_SummaryText" && { typename tSF_SummaryText == "STRING" }) then {
		tSF_SummaryText;
	} else {
		""
	}
};

dzn_brv_getCoreMetadata = {
	// Generates core metadata: island, scnario name, summary
	dzn_brv_guid  = ( (worldName) call dzn_brv_escapeQuotes );
	for "_i" from 0 to 4 do {
		dzn_brv_guid = format["%1%2", dzn_brv_guid, str(round(random 9))];
	};
	
	diag_log format [
		'<AAR-%3><meta><core>{ "island": "%1", "name": "%2", "guid": "%3", "summary": "%4" }</core></meta></AAR-%3>'
		, worldName call dzn_brv_escapeQuotes
		, briefingName call dzn_brv_escapeQuotes
		, dzn_brv_guid
		, call dzn_brv_getMissionSummary
	];
};

dzn_brv_checkVehicleCategory = {
	private _r = false;
	{
		if (_this isKindOf _x) exitWith { _r = true; };
	} forEach dzn_brv_allowedVehiclesCategories;
	_r
};

dzn_brv_addAttackEH = {
	if (isPlayer _this) exitWith {};

	_this addEventHandler [
		"Fired"
		, {
			if (dzn_brv_finished) exitWith {};
			params ["_unit", "", "", "", "", "", "_proj"];
			private _logTime = call dzn_brv_getLogTime;
			
			if (!isNil { _unit getVariable format ["dzn_brv_av%1", _logTime] }) exitWith {};
			_unit setVariable [format ["dzn_brv_av%1", _logTime], true];
			
			[_unit, _proj, _logTime] spawn {
				params["_unit", "_proj", "_timelabel"];
				
				private _from = getPosASL _unit;
				private _to = getPosASL _proj;
				
				waitUntil {
					if (isNull _proj) exitWith { true };
					_to = getPosASL _proj;
					false
				};
				
				waitUntil { (call dzn_brv_getLogTime) > (_timelabel + 2) };
				
				_unit setVariable [format ["dzn_brv_av%1", _timelabel], nil];
				[_timelabel, round(_from # 0), round(_from # 1), round(_to # 0), round(_to # 1)] call dzn_brv_logAV;
			};
		}
	];
};

dzn_brv_logAV = {
	params ["_timelabel","_fromx","_fromy","_tox","_toy"];
	
	diag_log format [
		"<AAR-%6><%1><av>[%2,%3,%4,%5]</av></%1></AAR-%6>"
		, _timelabel
		, _fromx
		, _fromy
		, _tox
		, _toy
		, dzn_brv_guid
	];
};

dzn_brv_collectMetadata = {
	// Process units and vehicles and add them to log list
	// Excludes AI units accordin to Settigns
	private["_logTime","_units","_vehs","_name"];
	
	_logTime = call dzn_brv_getLogTime;
	
	// Re-check for units that are not in log list
	_units = [allUnits, {!(_x in dzn_brv_unitList)}] call BIS_fnc_conditionalSelect;	
	{
		if ( 
			(isPlayer _x) 
			|| (!isPlayer _x && dzn_brv_allowLogAI)
		) then {
			diag_log format [
				'<AAR-%5><meta><unit>{ "unitMeta": [%1,"%2","%3",%4] }</unit></meta></AAR-%5>'
				, dzn_brv_unitIdMax
				, if (isPlayer _x) then { (name _x) call dzn_brv_escapeQuotes } else { "" }
				, switch (side _x) do {
					case WEST: {		"blufor" };
					case EAST: {		"opfor" };
					case RESISTANCE: {	"indep" };
					case CIVILIAN: {	"civ" };
					default { 		"unknown" };
				}
				, if (isPlayer _x) then { 1 } else { 0 }
				,dzn_brv_guid
			];
			
			_x setVariable ["dzn_brv_id", dzn_brv_unitIdMax];
			_x setVariable ["dzn_brv_type", "unit"];
			_x call dzn_brv_addAttackEH;
			
			dzn_brv_unitIdMax = dzn_brv_unitIdMax + 1;
			dzn_brv_unitList pushBack _x;
			
			if (_logTime > dzn_brv_timeLabelInit) then {
				[_x, "unit"] call dzn_brv_collectZeroUnitData;
			};
		
		};
	} forEach _units;
	
	_vehs = [vehicles, { !(_x in dzn_brv_vehList) && (_x call dzn_brv_checkVehicleCategory) }] call BIS_fnc_conditionalSelect;
	{
		_name = format [
			"%1%2"			
			, roleDescription _x			
			, if (roleDescription _x == "") then { 
				getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayname")
			} else {
				" ("+(getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayname"))+")"
			}
		];
		
		diag_log format [
			'<AAR-%3><meta><veh>{ "vehMeta": [%1,"%2"] }</veh></meta></AAR-%3>'
			, dzn_brv_vehIdMax
			, _name call dzn_brv_escapeQuotes
			, dzn_brv_guid
		];
	
		_x setVariable ["dzn_brv_id", dzn_brv_vehIdMax];
		_x setVariable ["dzn_brv_type", "veh"];
		_x call dzn_brv_addAttackEH;
		
		dzn_brv_vehIdMax = dzn_brv_vehIdMax + 1;
		dzn_brv_vehList pushBack _x;
		
		if (_logTime > dzn_brv_timeLabelInit) then {
			[_x, "veh"] call dzn_brv_collectZeroUnitData;
		};
	} forEach _vehs;
};

dzn_brv_collectUnitsData = {
	params["_isPlayerOnly",["_timelabel",0]];
	
	private _units = [];
	
	if (_isPlayerOnly) then {
		_units = allPlayers - entities "HeadlessClient_F";
	} else {
		_units append dzn_brv_unitList;
		_units append dzn_brv_vehList;
	};
	
	{
		[_x,_timelabel,_isPlayerOnly] call dzn_brv_collectData;
	} forEach _units;
};

dzn_brv_collectZeroUnitData = {
	params ["_unit", "_type"];
	private _id = _unit getVariable "dzn_brv_id";
	if (_type == "unit") then {
		diag_log format [
			'<AAR-%1><0><unit>[%2,0,0,0,1,-1]</unit></0></AAR-%8>'
			,dzn_brv_guid
			,_id
		];
	} else {
		diag_log format [
			'<AAR-%1><0><veh>[%2,0,0,0,1,-1,-1]</veh></0></AAR-%1>'
			,dzn_brv_guid
			,_id
		];	
	};
};

dzn_brv_collectData = {
	params["_unit","_timelabel","_isPlayerOnly"];
	private["_id","_pos","_posx","_posy","_dir","_alive","_vehID"];
	
	_id = _unit getVariable "dzn_brv_id";
	_pos = getPosASL _unit;
	_posx = round(_pos select 0);
	_posy = round(_pos select 1);
	_dir = round(getDir _unit);
	_alive = if (alive _unit) then { 1 } else { 0 };

	private _type = _unit getVariable ["dzn_brv_type","undef"];
	
	switch (_type) do {
		case "unit": {
			_vehID = -1;
			
			// Unit in vehicls:
			if (vehicle _unit != _unit && { (vehicle _unit) getVariable ["dzn_brv_id", -1] > -1 }) then {
				_posx = 0;
				_posy = 0;
				_dir = 0;
				_vehID = (vehicle _unit) getVariable "dzn_brv_id";
				if (_isPlayerOnly) then { [(vehicle _unit),_timelabel] call dzn_brv_collectData; };
			};
		
			diag_log format [
				'<AAR-%8><%1><unit>[%2,%3,%4,%5,%6,%7]</unit></%1></AAR-%8>'
				,_timelabel
				,_id
				,_posx
				,_posy
				,_dir
				,_alive
				,_vehID
				,dzn_brv_guid
			];
		};
		case "veh": {
			_crewData = _unit call dzn_brv_getVehiceCargoAndOwnerId;
			diag_log format [
				'<AAR-%9><%1><veh>[%2,%3,%4,%5,%6,%7,%8]</veh></%1></AAR-%9>'
				,_timelabel
				,_id
				,_posx
				,_posy
				,_dir
				,_alive
				,_crewData select 0
				,_crewData select 1
				,dzn_brv_guid
			];	
		};
		default {
			// Something gone wrong here :D
		};
	};
};

dzn_brv_getVehiceCargoAndOwnerId = {
	// @Vehicle call dzn_brv_getVehiceOwnerId
	params["_veh"];
	private["_crew","_ownerID","_cargo"];
	
	_crew = crew _veh;
	if ((crew _veh) isEqualTo []) exitWith { [-1, -1] };
	
	_ownerID = (_crew select 0) getVariable ["dzn_brv_id",-1];
	_cargo = ({alive _x} count (_crew)) - 1;
	if (_cargo == 0) then { _cargo = -1 };
	
	[_ownerID, _cargo]
};

