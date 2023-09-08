params [["_class", ""]];

if (_class isEqualTo "") exitWith {false};

if (_class isEqualType []) exitWith {
    {
        if (isClass (configFile >> "cfgPatches" >> _x)) then {diag_log format ["cfgPatches class %1 does exist.", _x]; true} else {diag_log format ["cfgPatches class %1 does not exist.", _x]; false};
    } forEach _class;
};

if (isClass (configFile >> "cfgPatches" >> _class)) then {
    true
} else {
    false
};