params [
    "_unit", 
    "_displayImage"
];

waitUntil{
    [player] call A3U_fnc_isInMenu;
};
ctrlDelete _displayImage;