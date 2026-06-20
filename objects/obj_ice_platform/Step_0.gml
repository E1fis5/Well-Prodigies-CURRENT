if (timer_created) and (!ice_break_activated)
{
	timer_ice_destroy = time_source_create(time_source_game,set_time,time_source_units_seconds,ice_destroy,[],1);
	time_source_start(timer_ice_destroy);
	ice_break_activated = true;
}