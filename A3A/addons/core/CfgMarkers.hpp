class CfgMarkers 
{
	class flag_NATO;

	class a3a_flag_cdf: flag_NATO 
	{
		name = "CDF";
		icon = QPATHTOFOLDER(Pictures\Markers\cdf_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\cdf_ca.paa);
	};

	class a3a_flag_napa: flag_NATO 
	{
		name = "NAPA";
		icon = QPATHTOFOLDER(Pictures\Markers\napa_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\napa_ca.paa);
	};
	
	class a3a_flag_serbia: flag_NATO 
	{
		name = "Serbia";
		icon = QPATHTOFOLDER(Pictures\Markers\serbia_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\serbia_ca.paa);
	};

	class a3a_flag_chdkz: flag_NATO 
	{
		name = "ChDKZ";
		icon = QPATHTOFOLDER(Pictures\Markers\chdkz_co.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\chdkz_co.paa);
	};

	class a3u_flag_ija: flag_NATO 
	{
		name = "IJA Flag";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_ija_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_ija_ca.paa);
	};

	class a3u_flag_roc: flag_NATO 
	{
		name = "ROC Flag";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_roc_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_roc_ca.paa);
	};

    class loc_MilAdministration {
        color[] = {1,1,1,1};
        icon = QPATHTOFOLDER(Pictures\Markers\milAdministration_CA.paa);
        markerClass = "Locations";
        name = "Military Administration";
        scope = 1;
        shadow = 0;
        showEditorMarkerColor = 0;
        size = 24;
    };

	class a3u_flag_optre_unsc: flag_NATO 
	{
		name = "UNSC";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_unsc_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_unsc_ca.paa);
	};
	class a3u_flag_optre_covenant: a3u_flag_optre_unsc 
	{
		name = "Covenant";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_covenant_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_covenant_ca.paa);
	};
	class a3u_flag_optre_insurrection: a3u_flag_optre_unsc 
	{
		name = "Insurrection";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_insurrection_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_insurrection_ca.paa);
	};

	// This ukraine flag is for the STALKER modset, not current day ukraine
	// Please don't use it for current day, it desensitises people to the reality that ukraine is in a war
	class a3u_flag_stalker_ukraine: a3u_flag_optre_unsc 
	{
		name = "Ukrainian Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_ukraine_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_ukraine_ca.paa);
	};
	class a3u_flag_stalker_military: a3u_flag_stalker_ukraine
	{
		name = "Military Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_military_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_military_ca.paa);
	};
	class a3u_flag_stalker_monolith: a3u_flag_stalker_ukraine 
	{
		name = "Monolith Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_monolith_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_monolith_ca.paa);
	};
	class a3u_flag_stalker_loners: a3u_flag_stalker_ukraine 
	{
		name = "Loner Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_loners_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_loners_ca.paa);
	};
	class a3u_flag_stalker_duty: a3u_flag_stalker_ukraine 
	{
		name = "Duty Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_duty_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_duty_ca.paa);
	};
	class a3u_flag_stalker_bandits: a3u_flag_stalker_ukraine 
	{
		name = "Bandit Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_bandits_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_bandits_ca.paa);
	};
	class a3u_flag_stalker_ecologists: a3u_flag_stalker_ukraine 
	{
		name = "Ecologist Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_ecologists_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_ecologists_ca.paa);
	};
	class a3u_flag_stalker_clearsky: a3u_flag_stalker_ukraine 
	{
		name = "Clear Sky Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_clearsky_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_clearsky_ca.paa);
	};
	class a3u_flag_stalker_freedom: a3u_flag_stalker_ukraine 
	{
		name = "Freedom Flag (STALKER)";
		icon = QPATHTOFOLDER(Pictures\Markers\marker_freedom_ca.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\marker_freedom_ca.paa);
	};
};