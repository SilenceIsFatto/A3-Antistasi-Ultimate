params["_unit", "_position"];
_wep = currentWeapon _unit;

_dir = _unit weaponDirection _wep;
_rel = (getPosASL _unit) vectorFromTo _position;
_out = _dir vectorCos _rel;
_out;