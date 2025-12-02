if (place_meeting(x,y,obj_collision_wall))
{
	instance_destroy();
}
move_towards_point(obj_player.x,obj_player.y + 40,6);

if (place_meeting(x,y,obj_player))
{
	instance_destroy();
}




