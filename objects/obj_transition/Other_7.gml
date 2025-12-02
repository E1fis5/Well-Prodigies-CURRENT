room_goto(target_rm);
if (instance_exists(obj_player))
{
	obj_player.x = target_x;
	obj_player.y = target_y;
}

if (instance_exists(obj_doll_stationary))
{
	obj_doll_stationary.x = target_x;
	obj_doll_stationary.y = target_y;
}


if (instance_exists(obj_jestraught_play))
{
	obj_jestraught_play.x = target_x;
	obj_jestraught_play.y = target_y;
}
instance_destroy(obj_cd_well_intro)
image_speed = -1;