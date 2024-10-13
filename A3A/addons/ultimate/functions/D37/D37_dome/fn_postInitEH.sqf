if(!isServer) exitWith {};

addMissionEventHandler ["ProjectileCreated", {
	params ["_projectile"];

	[_projectile] spawn A3U_fnc_initShells;
}];