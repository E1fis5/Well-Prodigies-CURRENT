if (!ice_break_activated) and (distance_to_object(obj_player) < 2) and (trigger_zone)
{
	instance_deactivate_object(inst);
	ice_break_activated = true;
	timer_ice_destroy = time_source_create(time_source_game,set_time,time_source_units_seconds,ice_destroy,[],1);
	trigger_zone = false;
	time_source_start(timer_ice_destroy);
}