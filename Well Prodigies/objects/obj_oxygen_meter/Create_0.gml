global.oxygen = 64

var oxygen_drain = function()
{
	global.oxygen -= 1
}




oxygenTimer = time_source_create(time_source_game,2,time_source_units_seconds,oxygen_drain,[],-1)