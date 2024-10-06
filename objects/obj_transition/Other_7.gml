room_goto(target_rm);
if (instance_exists(obj_player))
{
	obj_player.x = target_x;
	obj_player.y = target_y;
}

if (instance_exists(obj_jestraught_player))
{
	obj_jestraught_player.x = target_x;
	obj_jestraught_player.y = target_y;
}
instance_destroy(obj_cd_well_intro)
image_speed = -1;