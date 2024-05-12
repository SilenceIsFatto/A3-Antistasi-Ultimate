/* #include "..\script_component.hpp"
FIX_LINE_NUMBERS()

private _buyableVehiclesList = [];

private _stock = (A3A_faction_reb get "blackMarketStock") select {
	private _fnc_isAvailable = _x select 3;
	
	call _fnc_isAvailable
};

if (_stock isEqualTo []) exitWith {_buyableVehiclesList};

_stock = _stock apply {_x select 0};

{
	private _vehiclePrice = [_x] call A3A_fnc_vehiclePrice;
	_buyableVehiclesList pushBack [_x, _vehiclePrice, false];
} forEach _stock;


_buyableVehiclesList; */

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params [
	["_category", "", [""]]
];

private _buyableVehiclesList = [];
private _vehicleClasses = [];

private _fnc_extractMarketClasses = {
    private _type = _this;
    private _vehicleRegisters = (A3A_faction_reb get "blackMarketStock") select {(_x select 2) isEqualTo _type};
    if (_vehicleRegisters isEqualTo []) exitWith {[]};

    _vehicleRegisters apply {_x select 0}
};
switch (_category) do {
    case "artyllery": {
        _vehicleClasses = ("ARTILLERY" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
    };
	case "apc": {
		_vehicleClasses = ("APC" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "AA": {
		_vehicleClasses = ("AA" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "uav": {
		_vehicleClasses =  ("UAV" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "tank": {
		_vehicleClasses =  ("TANK" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "statics": {
		_vehicleClasses =  ("STATICMORTAR" call _fnc_extractMarketClasses) +
		("STATICAA" call _fnc_extractMarketClasses) +
		("STATICAT" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "heli": {
		_vehicleClasses = ("HELI" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "plane": {
		_vehicleClasses = ("PLANE" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "armedcar": {
		_vehicleClasses = ("ARMEDCAR" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "unarmedcar": {
		_vehicleClasses = ("UNARMEDCAR" call _fnc_extractMarketClasses) select {_x isNotEqualTo []};
	};
	case "all": {
		private _stock = (A3A_faction_reb get "blackMarketStock") select {
			private _fnc_isAvailable = _x select 3;
	
			call _fnc_isAvailable
		};

		if (_stock isEqualTo []) exitWith {_buyableVehiclesList};

		_vehicleClasses = _stock apply {_x select 0};
	};
	default {
		Error_1("Invalid vehicle category, given was %1", _category);
	};
};

{
	private _vehiclePrice = [_x] call A3A_fnc_vehiclePrice;
	_buyableVehiclesList pushBack [_x, _vehiclePrice, false];
} forEach _vehicleClasses;

_buyableVehiclesList;