if (global.debug_active)
{
	game_restart()
	instance_destroy(all);
	instance_create_depth(x,y,-99,input_controller_object);
	score = 0
}