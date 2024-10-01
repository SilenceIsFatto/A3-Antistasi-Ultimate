params [
    "_unit", 
    "_displayImage"
];

waitUntil{
    _unit getVariable "menu_framework_canPlay";
};
ctrlDelete _displayImage;