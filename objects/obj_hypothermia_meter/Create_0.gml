global.hypothermia_amount = 300
var freeze_drain = function()
{
	global.hypothermia_amount -= 10
	image_index += 1
	if (global.hypothermia_amount = 0)
	{
		image_index -= 1
		global.health -= 1
		score -= 150
	}
}

timesource_freeze = time_source_create(time_source_game,5.5,time_source_units_seconds,freeze_drain,[],-1)
timesource_freeze_no_torch = time_source_create(time_source_game,25,time_source_units_seconds,freeze_drain,[],-1)
timesource_freeze2 = time_source_create(time_source_game,3.5,time_source_units_seconds,freeze_drain,[],-1)