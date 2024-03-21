//
// EXIT if...
if ("dzn_brv_enabled" call BIS_fnc_getParamValue == 0) exitWith {};	// Not enabled at MisPar
if (isMultiplayer && hasInterface) then {
	// Not a Server for MP Game
	call compile preprocessfilelinenumbers "x\A3A\addons\core\Scripts\dzn_brv\fn\dzn_brv_clientFunctions.sqf";
	[player] spawn dzn_brv_fnc_addClientEH;
};
if (!isServer) exitWith {};

// ************ SETTINGS ***************

// Enable/Disable AI logging
dzn_brv_allowLogAI			= true;
dzn_brv_disableOnAllDead		= true;

dzn_brv_playerLogInterval 		= 1; // seconds (min: 1 sec), accuracy of player's logging
dzn_brv_nonPlayerLogInterval		= 3; // seconds (min: 1 sec), accurcay of vehicles and AI (if enabled) logging
dzn_brv_attackVectorMaxDistance		= 1200; // meters

dzn_brv_allowedVehiclesCategories = ["LandVehicle","Air","Ship_F"];
dzn_brv_loggingEndCondition = { false };

// ************** INIT *****************
dzn_brv_started = false;
dzn_brv_finished = false;
dzn_brv_unitList = [];
dzn_brv_vehList = [];
dzn_brv_unitIdMax = 0;
dzn_brv_vehIdMax = 500;
dzn_brv_guid = "";

// Ensure correct interval values
if (dzn_brv_playerLogInterval < 1) then { dzn_brv_playerLogInterval = 1; };
if (dzn_brv_nonPlayerLogInterval < 1) then { dzn_brv_nonPlayerLogInterval = 1; };
if (dzn_brv_disableOnAllDead) then {
	private _code = str dzn_brv_loggingEndCondition;
	private _merged = "(" + (_code select [1, count _code - 2]) + ") || { alive _x } count (call BIS_fnc_listPlayers) == 0";
	dzn_brv_loggingEndCondition = compile _merged;
};

publicVariable "dzn_brv_started";
publicVariable "dzn_brv_finished";

call compile preprocessfilelinenumbers "x\A3A\addons\core\Scripts\dzn_brv\fn\dzn_brv_functions.sqf";

dzn_brv_onEachFrameEH = addMissionEventHandler ["EachFrame", {
	private _state = getClientState;
	
	if (!dzn_brv_started) then {
		// Wait for mission start 
		if (_state == "BRIEFING READ") then {
			dzn_brv_started = true;
			dzn_brv_timeLabelInit = if (isMultiplayer) then { round(serverTime) } else { round(time) };
			[] execFSM "x\A3A\addons\core\Scripts\dzn_brv\FSMs\dzn_brv_loop.fsm";
			
			// Publish functions & vars for clients
			publicVariable "dzn_brv_started";
			publicVariable "dzn_brv_timeLabelInit";
			diag_log "GAME STARTED - START AAR LOGGING";
		};
	} else {
		// Wait for mission end
		if (_state == "GAME FINISHED" || { call dzn_brv_loggingEndCondition }) then {
			dzn_brv_finished = true;
			removeMissionEventHandler ["EachFrame", dzn_brv_onEachFrameEH];
			
			publicVariable "dzn_brv_finished";
			diag_log "GAME FINISHED - FINISH AAR LOGGING";
		};
	};
}];
