if (obj_player.land_sprite_break) and (!geyser_activated)
{
	audio_play_sound(snd_gt_geyser_land,5,false,1.6);
	geyser_activated = true;
	obj_player.grv = -1;
	if (obj_player.vsp_max_wall >= 24)
	{
		obj_player.vsp_max_wall = 24;
	}
	time_source_start(obj_player.timer_upcancel_fallbuild);
	time_source_stop(obj_player.timer_upcancel_boost);
	var inst = 	instance_create_depth(x + 35,y,450,obj_gt_geyser_wave);
	inst.geyser_limit = geyser_limit;
}
