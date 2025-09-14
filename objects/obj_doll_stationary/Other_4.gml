if (instance_exists(obj_doll_room_target))
{
	if (global.doll_move)
	{
		instance_destroy();
		instance_create_depth(x,y,100,obj_doll_room_start);
	}
}
	instance_activate_object(obj_doll_room_target);