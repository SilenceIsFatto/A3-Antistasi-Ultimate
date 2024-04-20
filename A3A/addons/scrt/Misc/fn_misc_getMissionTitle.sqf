private _title = nil;

switch (toLowerANSI worldName) do {
	case "altis": {
		_title = localize "STR_antistasi_mission_info_Altis_mapname_text";
	};
	case "malden": {
	    _title = localize "STR_antistasi_mission_info_Malden_mapname_text";
	};
	case "cup_chernarus_a3":
	{
		_title = localize "STR_antistasi_mission_info_chernarus2020_mapname_text";
	};
	case "enoch":
	{
	    _title = localize "STR_antistasi_mission_info_livonia_mapname_text";
	};
	case "esseker":
	{
	    _title = localize "STR_antistasi_mission_info_esseker_mapname_text";
	};
	case "napf":
	{
		_title = localize "STR_antistasi_mission_info_napf_mapname_text";
	};
	case "vt7":
	{
	    _title = localize "STR_antistasi_mission_info_vt7_mapname_text";
	};
	case "blud_vidda":
	{
	    _title = localize "STR_antistasi_mission_info_vidda_mapname_text";
	};
	case "sefrouramal":
	{
	    _title = localize "STR_antistasi_mission_info_sefrouramal_mapname_text";
	};
	case "takistan":
	{
	    _title = localize "STR_antistasi_mission_info_takistan_mapname_text";
	};
	case "tanoa":
	{
	    _title = localize "STR_antistasi_mission_info_tanoa_mapname_text";
	};
	case "cam_lao_nam":
	{
	    _title = localize "STR_antistasi_mission_info_camlaonam_mapname_text";
	};
	case "vn_khe_sanh":
	{
	    _title = localize "STR_antistasi_mission_info_khesanh_mapname_text";
	};
	case "sehreno":
	{
	    _title = localize "STR_antistasi_mission_info_sehreno_mapname_text";
	};
	case "gm_weferlingen_summer":
	{
	    _title = localize "STR_antistasi_mission_info_weferlingen_mapname_text";
	};
	case "brf_sumava":
	{
	    _title = localize "STR_antistasi_mission_info_sumava_mapname_text";
	};
	default {
	    _title = "Antistasi Ultimate";
	};
};

_title
