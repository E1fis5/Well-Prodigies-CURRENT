set_time = 0;
ice_break_activated = false;
timer_created = false;
ice_destroy = function()
{
	audio_play_sound(snd_freeze_damage,5,false);
	instance_destroy();
	ice_break_activated = false;
	timer_created = false;
	obj_player.vsp_max_wall = 13;
	time_source_start(obj_player.timer_upcancel_fallbuild);
	if (obj_player.onIce)
	{
		obj_player.fall_damage_toggle = true;
		obj_player.grv = 0.2;
	}
}