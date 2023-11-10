params [["_unit", player]];

["IMS Stealth Kill EH Added", _fnc_scriptName] call A3U_fnc_log;

_unit setVariable ["IMS_EventHandler_StealthKill",{
    _unit = _this select 0;
    _victim = _this select 1;
    _weapon = _this select 2;
    if (captive _unit) then 
    {
        private _units = [];
        {
            if (alive _x && {_x isNotEqualTo _victim} && {!(isPlayer _x)}) then
            {
                _units pushBack _x;
            };
        } forEach nearestObjects [_unit, ["CAManBase"], 20];
        // hint str _units;
        {
            if ([(side _x), resistance] call BIS_fnc_sideIsEnemy || {(side _x) isEqualTo civilian}) then
            {
                if (side _x isEqualTo civilian && {(round random 3) isEqualTo 1}) then {
                    [_unit] call A3A_fnc_civilianPanic;
                };
                _unit setCaptive false;
                ["Undercover", "You were detected doing a stealth kill!"] call A3A_fnc_customHint;
            };
        } forEach _units
    };
},true];