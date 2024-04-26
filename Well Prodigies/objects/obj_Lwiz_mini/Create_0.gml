var instance_deactivate = function()
{
	instance_destroy();
	global.spr_destroy_lap_boost = true
}

time_source_Lwiz_mini = time_source_create(time_source_game,27,time_source_units_seconds,instance_deactivate,[],1)