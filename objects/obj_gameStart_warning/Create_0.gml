var timer_warning_wait = function()
{
	instance_create_depth(x,y,-9999,obj_transition);
}
timer_game_warning_wait = time_source_create(time_source_game,3,time_source_units_seconds,timer_warning_wait,[],1);