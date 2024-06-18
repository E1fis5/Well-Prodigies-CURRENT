var pause_dboost_destroy = function()
{
	if (instance_exists(obj_player))
	{
		time_source_resume(obj_player.timer_dBoost_deactivate);
	}
	instance_destroy();
}


timer_dBoost_pause = time_source_create(time_source_game,1.5,time_source_units_seconds,pause_dboost_destroy,[],-1);


