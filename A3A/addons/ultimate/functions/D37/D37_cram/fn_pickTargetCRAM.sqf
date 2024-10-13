private _entities 	= param[0];
private _unit 		= param[1];
private _tgtLogic 	= param[2];

//Pick one
private _target = objNull;
private _wep = currentWeapon _unit;
_p = -1;
_lastP = _p;

if(_tgtLogic == 2) then {
	_lastP = 100000;
};

_g = 9.81;
{
	switch (_tgtLogic) do {
		//Pure random
		case 0: {
			_target = selectRandom _entities;
		};
		//Distance/Speed bias + direction
		case 1: {
			_vel = velocity _x;
			_dist = _unit distance2d _x;
			_aimQuality = _unit aimedAtTarget [_x, _wep];
			_p = abs((_dist / 3000) -(_vel select 2)/100 + _aimQuality*2);

			if(_p >= _lastP) then {
				_target = _x;
				_lastP = _p;
			};
		};
		//Threat bias
		case 2: {
			_vel = velocity _x;
			_pos = getPosASL _x;
			_alt = _pos select 2;
			_v0 = -(_vel select 2); //Negative when going up
			_root = ((_v0 ^ 2) - 2 * _g * (-_alt));
			if(_root < 0) then {continue};

			//Time to impact 
			_t = round((-_v0 + sqrt(_root)) / _g);

			//Space travelled - approximation!!!
			_spaceX = ((_pos select 0) + (_vel select 0) * _t);
			_spaceY = ((_pos select 1) + (_vel select 1) * _t);

			_nPos = [_spaceX, _spaceY, 0];
			_p = (_unit distance2d _nPos) + (_t * 8);

			if(_p <= _lastP) then {
				_target = _x;
				_lastP = _p;
			};
		};
		default {_target = objNull;};
	};
}foreach _entities;

_target;