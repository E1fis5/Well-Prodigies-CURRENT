if (geyser_limit > 0)
{
	image_yscale -= geyser_current_speed_build;
	obj_geyser_afterimage.image_yscale -= geyser_current_speed_build;
	geyser_limit -= 1;
}
else if (!geyser_deactivate)
{
	obj_geyser_afterimage.image_yscale = image_yscale;
	geyser_deactivate = true;
	if (instance_exists(obj_gt_ice_geyser))
	{
		obj_gt_ice_geyser.geyser_stop();
	}
	else
	{
		obj_player.grv = 0.07;
		time_source_stop(obj_player.timer_upcancel_fallbuild);
	}
	time_source_stop(timer_geyser_speed_build_rate);
}

if (!place_meeting(x,y,obj_player)) and (geyser_touch)
{
	obj_player.vsp_max_wall = 12;
	obj_player.grv = 0.07;
	geyser_touch = false;
	time_source_stop(obj_player.timer_upcancel_fallbuild);
}