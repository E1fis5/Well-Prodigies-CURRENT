
if (room == targetrm_alpha) {
    image_alpha = 1; // Make the object visible in the specific room
}
else {
    image_alpha = 0; // Make the object invisible in all other rooms
}

if (impact)
{
	obj_player.image_blend = c_black;
	obj_player.depth = -500;
	image_blend = c_black;
	depth = -499;
	obj_collision_wall.image_blend = c_black;
	obj_collision_wall.depth = -500;
	obj_collision_wall.image_alpha = 1;
	if (!instance_exists(obj_escape_timer))
	{
		obj_escape_timer.image_blend = c_black;
	}
}