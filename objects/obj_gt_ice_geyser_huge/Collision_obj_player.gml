if (obj_player.land_sprite_break) and (!geyser_activated)
{
	audio_play_sound(snd_gt_geyser_land,5,false,1.6);
	geyser_activated = true;
	obj_player.grv = -1;
	time_source_stop(obj_player.timer_upcancel_boost);
	var inst = 	instance_create_depth(x + 195,y + 285,450,obj_gt_geyser_wave);
	with(inst)
	{
		image_xscale = 3;
	}
	inst.geyser_limit = geyser_limit;
	obj_player.x = x + 130;
	if (obj_player.vsp_max_wall < 16)
	{
		obj_player.vsp_max_wall = 16;
	}
	global.door_disable = true;
	obj_player.no_player_movement();
	time_source_start(timer_walksp_restore);
}