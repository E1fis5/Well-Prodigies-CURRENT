//Timer to respawn all ice
var ice_respawn = function()
{
	instance_activate_object(obj_ice_crumble_trigger);
	instance_destroy(obj_ice_platform_place_reserve);
	with (instance_activate_object(obj_ice_platform))
	{
		ice_break_activated = false;
		timer_created = false;
		trigger_zone = false;
	}
	time_source_stop(timer_ice_respawn);
}

timer_ice_respawn = time_source_create(time_source_game,2,time_source_units_seconds,ice_respawn,[],1);
time_source_start(timer_ice_respawn);