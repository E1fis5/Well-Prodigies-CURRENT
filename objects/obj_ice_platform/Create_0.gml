set_time = 0;
var ice_destroy = function()
{
	instance_destroy();
	audio_play_sound(snd_freeze_damage,5,false);
}
timer_ice_destroy = time_source_create(time_source_game,set_time,time_source_units_seconds,ice_destroy,[],1);