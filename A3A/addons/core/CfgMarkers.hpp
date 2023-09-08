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
};