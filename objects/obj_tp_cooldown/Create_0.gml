var time_source_tpcooldown = function()
{
	instance_destroy();
}

global.time_source_tpcooldown = time_source_create(time_source_game,1,time_source_units_seconds,time_source_tpcooldown,[],1)
time_source_start(global.time_source_tpcooldown);
