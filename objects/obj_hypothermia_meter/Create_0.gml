global.hypothermia_amount = 300
var freeze_drain = function()
{
	global.hypothermia_amount -= 10
	image_index += 1
}

var freeze_penalty = function()
{
	score -= 150;
	global.health -= 1;
	image_index = 30;
	audio_play_sound(snd_freeze_damage,8,false);
}

global.timesource_freeze = time_source_create(time_source_game,6.5,time_source_units_seconds,freeze_drain,[],-1)
global.timesource_freeze_no_torch = time_source_create(time_source_game,19,time_source_units_seconds,freeze_drain,[],-1)
global.timesource_freeze2 = time_source_create(time_source_game,4.5,time_source_units_seconds,freeze_drain,[],-1)
global.timesource_freeze_penalty = time_source_create(time_source_game,4,time_source_units_seconds,freeze_penalty,[],-1)