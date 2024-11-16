var jest_dBoost_cd_over = function()
{
	instance_destroy();
}

timer_jest_dBoost_cd = time_source_create(time_source_game,11,time_source_units_seconds,jest_dBoost_cd_over,[],-1);

time_source_start(timer_jest_dBoost_cd);