//////////////////////////
//       Vehicles       //
//////////////////////////    

["vehiclesCivCar", [
    "SPE_GER_R200_Unarmed", 1
    ]] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
    "SPE_OpelBlitz_Open", 1
]] call _fnc_saveToTemplate;

["vehiclesCivBoat", [
    "O_G_Boat_Transport_01_F", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivRepair", [
    "SPE_OpelBlitz_Repair", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivMedical", [
    "SPE_OpelBlitz_Ambulance", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "SPE_OpelBlitz_Fuel", 0.1
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["LivonianHead_6","SPE_Arnold","SPE_Connors","SPE_Davidson","SPE_Elliot","SPE_Oberst","SPE_Seppmeyer","SPE_Walter","WhiteHead_01","WhiteHead_02","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_12","WhiteHead_15","WhiteHead_18"]] call _fnc_saveToTemplate;
["voices", ["Male01FRE","Male02FRE","Male03FRE","SPE_Male01FRE","SPE_Male02FRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "U_SPE_CIV_Citizen_1",
    "U_SPE_CIV_Citizen_2",
    "U_SPE_CIV_Citizen_3",
    "U_SPE_CIV_Citizen_4",
    "U_SPE_CIV_Citizen_5",
    "U_SPE_CIV_Citizen_6",
    "U_SPE_CIV_Citizen_7",
    "U_SPE_CIV_Swetr_1",
	"U_SPE_CIV_Swetr_2",
	"U_SPE_CIV_Swetr_3",
	"U_SPE_CIV_Swetr_4",
	"U_SPE_CIV_Swetr_5",
	"U_SPE_CIV_Citizen_1_tie",
	"U_SPE_CIV_Citizen_2_tie",
	"U_SPE_CIV_Citizen_3_tie",
	"U_SPE_CIV_Citizen_4_tie",
	"U_SPE_CIV_Citizen_5_tie",
	"U_SPE_CIV_Citizen_6_tie",
	"U_SPE_CIV_Citizen_7_tie",
	"U_SPE_CIV_Citizen_1_trop",
	"U_SPE_CIV_Citizen_2_trop",
	"U_SPE_CIV_Citizen_3_trop",
	"U_SPE_CIV_Citizen_4_trop",
	"U_SPE_CIV_Citizen_5_trop",
	"U_SPE_CIV_Citizen_6_trop",
	"U_SPE_CIV_Citizen_7_trop"
];

private _pressUniforms = [
    "U_SPE_CIV_pak2_zwart_tie",
    "U_SPE_CIV_pak2_zwart_tie_alt",
    "U_SPE_CIV_pak2_zwart_alt",
    "U_SPE_CIV_pak2_zwart_swetr",
	"U_SPE_CIV_pak2_zwart",
	"U_SPE_CIV_pak2_bruin",
	"U_SPE_CIV_pak2_bruin_tie",
	"U_SPE_CIV_pak2_bruin_swetr",
	"U_SPE_CIV_pak2_grijs",
	"U_SPE_CIV_pak2_grijs_tie",
	"U_SPE_CIV_pak2_grijs_swetr"
    ];            //Uniforms given to Press/Journalists

private _workerUniforms = [
    "U_SPE_CIV_Worker_Coverall_1",
    "U_SPE_CIV_Worker_Coverall_2",
    "U_SPE_CIV_Worker_Coverall_3",
    "U_SPE_CIV_Worker_1",
    "U_SPE_CIV_Worker_2",
    "U_SPE_CIV_Worker_3",
    "U_SPE_CIV_Worker_4",
    "U_SPE_CIV_Worker_Coverall_1_trop",
    "U_SPE_CIV_Worker_Coverall_2_trop",
    "U_SPE_CIV_Worker_Coverall_3_trop",
    "U_SPE_CIV_Worker_1_trop",
	"U_SPE_CIV_Worker_2_trop",
	"U_SPE_CIV_Worker_3_trop",
	"U_SPE_CIV_Worker_4_trop",
	"U_SPE_CIV_Worker_1_tie",
	"U_SPE_CIV_Worker_2_tie",
	"U_SPE_CIV_Worker_3_tie",
	"U_SPE_CIV_Worker_4_tie"
    ];           //Uniforms given to Workers at Factories/Resources

["uniforms", _civUniforms + _pressUniforms + _workerUniforms] call _fnc_saveToTemplate;          //Uniforms given to the Arsenal, Allowed for Undercover and given to Rebel Ai that go Undercover

_civHats = [
    "H_SPE_CIV_Fedora_Cap_1",
    "H_SPE_CIV_Fedora_Cap_2",
    "H_SPE_CIV_Fedora_Cap_3",
    "H_SPE_CIV_Fedora_Cap_4",
    "H_SPE_CIV_Fedora_Cap_5",
    "H_SPE_CIV_Fedora_Cap_6",
    "H_SPE_CIV_Worker_Cap_1",
    "H_SPE_CIV_Worker_Cap_2",
	"H_SPE_CIV_Worker_Cap_3",
	"H_SPE_CIV_Worker_Cap_4"
    ];

["headgear", _civHats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.


private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", ["H_SPE_CIV_Worker_Cap_1","H_SPE_CIV_Worker_Cap_2","H_SPE_CIV_Worker_Cap_3","H_SPE_CIV_Worker_Cap_4"]];
_loadoutData set ["workerHelmets", ["H_SPE_CIV_Worker_Cap_1","H_SPE_CIV_Worker_Cap_2","H_SPE_CIV_Worker_Cap_3","H_SPE_CIV_Worker_Cap_4"]];
_loadoutData set ["facewear", ["G_SPE_Ful_Vue_Reinforced","G_SPE_Pipe_Sir_Winston","G_SPE_Ful_Vue","G_SPE_Dienst_Brille","G_SPE_Cigarette_Strike_Outs"]];

_loadoutData set ["maps", ["ItemMap"]];

private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
};
private _workerTemplate = {
    ["workerHelmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressUniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
