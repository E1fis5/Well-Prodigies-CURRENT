if (!ice_break_activated)
{
	if (trigger_zone) and (distance_to_object(obj_player) < 2)
	{
		instance_deactivate_object(inst);
		ice_break_activated = true;
		timer_ice_destroy = time_source_create(time_source_game,set_time,time_source_units_seconds,ice_destroy,[],1);
		trigger_zone = false;
		time_source_start(timer_ice_destroy);
	}
	if (place_meeting(x,y,obj_player_slam_hitbox)) and (obj_player.vsp_max_wall >= 18)
	{
		instance_deactivate_object(inst)
		ice_break_activated = true;
		ice_destroy();
	}
}
if (place_meeting(x,y,obj_freeze_filter) and (!obj_player.breeze_state_active))
{
	image_blend = c_black;
	depth = obj_freeze_filter.depth - 1;
	image_alpha = 0.5;
}