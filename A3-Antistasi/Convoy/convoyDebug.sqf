if(isDedicated) exitWith {};

if(isMultiplayer && {!(serverCommandAvailable "#logout")}) exitWith {hint "Only server admins can execute the convoy debug!"};

player setVariable ["convoyDebug", true];
sleep 1;

_stop = player addAction ["Deactivate convoy debug", {(_this select 0) setVariable ["convoyDebug", false]; (_this select 0) removeAction (_this select 2);}, nil, 0, false, false, "", "_originalTarget == _this"];

while {player getVariable ["convoyDebug", false] && {!isMultiplayer || {(serverCommandAvailable "#logout")}}} do
{
  if(count convoyMarker != 0) then
  {
    {
        _x setMarkerAlphaLocal 1;
    } forEach convoyMarker;
  };  
  sleep 10;
};

player removeAction _stop;

{
    _x setMarkerAlphaLocal 0;
} forEach convoyMarker;
