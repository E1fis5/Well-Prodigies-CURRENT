global.hypothermia_amount = 100
var freeze_drain = function()
{
	global.hypothermia_amount -= 10
}

timesource_freeze = time_source_create(time_source_game,3,time_source_units_seconds,freeze_drain,[],-1)
timesource_freeze_no_torch = time_source_create(time_source_game,15,time_source_units_seconds,freeze_drain,[],-1)
if (global.torch_active = true)
{
    time_source_start(timesource_freeze);
	time_source_stop(timesource_freeze_no_torch);
	if (global.torch_active = false)
	{
		time_source_start(timesource_freeze_no_torch);
		time_source_stop(timesource_freeze);
	}
}

