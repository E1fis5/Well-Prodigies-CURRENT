var dash_joost_pause = function()
{
	instance_destroy();
}

timer_dashJoost_pause = time_source_create(time_source_game,0.4,time_source_units_seconds,dash_joost_pause,[],-1);

time_source_start(timer_dashJoost_pause);