var instance_deactivate = function()
{
	instance_destroy();
	obj_lap_boost_sign.sprite_index = spr_lapping_boost_destroy;
}
depth = 399;
time_source_Lwiz_mini = time_source_create(time_source_game,27,time_source_units_seconds,instance_deactivate,[],1);
time_source_start(time_source_Lwiz_mini);

	if (instance_exists(obj_player))
	{
		obj_player.walksp += 9;
		obj_player.dash_distance = 210;
	    obj_player.dash_time = 18;
	} 