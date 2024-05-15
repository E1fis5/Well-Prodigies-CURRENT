if (place_meeting(x,y,obj_player))
{
	global.debug_active = true;
	instance_create_depth(x,y,100,obj_debug_switcher);
	instance_destroy();
}