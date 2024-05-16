var time_source_tpcooldown = function()
{
	instance_destroy();
}

global.time_source_tpcooldown = time_source_create(time_source_game,1.5,time_source_units_seconds,time_source_tpcooldown,[],1)

