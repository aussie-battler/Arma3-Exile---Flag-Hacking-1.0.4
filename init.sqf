// Compile all the things!!
{
    _code = "";
    _function = _x select 0;
    _file = _x select 1;
    _code = compileFinal (preprocessFileLineNumbers _file);
	missionNamespace setVariable [_function, _code];
}
forEach
[
    // Server
	["ExileServer_object_flag_network_hackFlagRequest","Custom\FlagHacking\ServerFiles\ExileServer_object_flag_network_hackFlagRequest.sqf"],
	["ExileServer_object_flag_network_startFlagHackRequest","Custom\FlagHacking\ServerFiles\ExileServer_object_flag_network_startFlagHackRequest.sqf"],
	["ExileServer_object_flag_network_updateFlagHackAttemptRequest","Custom\FlagHacking\ServerFiles\ExileServer_object_flag_network_updateFlagHackAttemptRequest.sqf"],
	
	// Client
	["ExileClient_action_hackFlag_aborted","Custom\FlagHacking\ClientFiles\ExileClient_action_hackFlag_aborted.sqf"],
	["ExileClient_action_hackFlag_completed","Custom\FlagHacking\ClientFiles\ExileClient_action_hackFlag_completed.sqf"],
	["ExileClient_action_hackFlag_condition","Custom\FlagHacking\ClientFiles\ExileClient_action_hackFlag_condition.sqf"],
	["ExileClient_action_hackFlag_duration","Custom\FlagHacking\ClientFiles\ExileClient_action_hackFlag_duration.sqf"],
	["ExileClient_action_hackFlag_failChance","Custom\FlagHacking\ClientFiles\ExileClient_action_hackFlag_failChance.sqf"],
	["ExileClient_action_hackFlag_failed","Custom\FlagHacking\ClientFiles\ExileClient_action_hackFlag_failed.sqf"]
];