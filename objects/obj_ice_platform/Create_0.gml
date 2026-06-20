set_time = 0;
ice_break_activated = false;
timer_created = false;
ice_destroy = function()
{
	audio_play_sound(snd_freeze_damage,5,false);
	instance_destroy();
	time_source_destroy(obj_player.timer_ice_destroy);
	ice_break_activated = false;
	timer_created = false;
}