if (global.debug_active)
{
	time_source_stop(obj_player.timer_aftereffect_creation);
	time_source_stop(obj_player.timer_aftereffect_creation_quick);
	time_source_stop(obj_player.timer_dBoost_deactivate);
	game_restart()
	instance_destroy(all);
	instance_create_depth(x,y,-99,input_controller_object);
	score = 0
}