_arrayName 	= param[0];
_item 		= param[1];
_action 	= param[2];

_array = missionNamespace getVariable [_arrayName, []];

switch (_action) do {
	case "add": {
		_array pushback _item;
	};
	case "remove": {
		_id = _array find _item;
		if(_id != -1) then {
			_array deleteAt _id;
		};
	};
	default {};
};

missionNamespace setVariable [_arrayName, _array, true];
true;