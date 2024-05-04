global.hypothermia_amount = 300
var freeze_drain = function()
{
	global.hypothermia_amount -= 10
	image_index += 1
}

var freeze_penalty = function()
{
	score -= 150
	global.health -= 1
	image_index = 30;
}

timesource_freeze = time_source_create(time_source_game,0.1,time_source_units_seconds,freeze_drain,[],-1)
timesource_freeze_no_torch = time_source_create(time_source_game,25,time_source_units_seconds,freeze_drain,[],-1)
timesource_freeze2 = time_source_create(time_source_game,3.5,time_source_units_seconds,freeze_drain,[],-1)
timesource_freeze_penalty = time_source_create(time_source_game,2,time_source_units_seconds,freeze_penalty,[],-1)