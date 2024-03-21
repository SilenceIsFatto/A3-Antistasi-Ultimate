
class Params
{
    class autoLoadLastGame
    {
        title = $STR_antistasi_mission_info_journal_autoLoadLastGame_name;
        values[] = {-1, 60, 120, 180, 300, 600};
        texts[] = {
            $STR_antistasi_mission_info_journal_autoLoadLastGame_no_automatic_load,
            $STR_antistasi_mission_info_journal_autoLoadLastGame_1min,
            $STR_antistasi_mission_info_journal_autoLoadLastGame_2min,
            STR_antistasi_mission_info_journal_autoLoadLastGame_3min,
            STR_antistasi_mission_info_journal_autoLoadLastGame_5min,
            STR_antistasi_mission_info_journal_autoLoadLastGame_10min
        };
        default = -1;
    };
    class LogLevel
    {
        title = $STR_antistasi_mission_info_journal_LogLevel_name;
        values[] = {1,2,3,4};
        texts[] = {
            $STR_antistasi_mission_info_journal_LogLevel_Error,
            $STR_antistasi_mission_info_journal_LogLevel_Info,
            $STR_antistasi_mission_info_journal_LogLevel_Debug,
            $STR_antistasi_mission_info_journal_LogLevel_Verbose
        };
        default = 2;
    };
    class A3A_logDebugConsole
    {
        title = $STR_antistasi_mission_info_journal_A3A_logDebugConsole_name;
        values[] = {-1,1,2};
        texts[] = {
            $STR_antistasi_mission_info_journal_A3A_logDebugConsole_None,
            $STR_antistasi_mission_info_journal_A3A_logDebugConsole_All_none_dev,
            $STR_antistasi_mission_info_journal_A3A_logDebugConsole_Dev
        };
        default = 1;
    };

    // AAR Logging
    class dzn_brv_enabled
	{
		title = "tS AAR Logging";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class dzn_brv_enabledAILog
	{
		title = "tS AAR Logging -- Enable AI logging";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class dzn_brv_disableOnAllDead
	{
		title = "tS AAR Logging -- Stop logging on all players dead";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
};
