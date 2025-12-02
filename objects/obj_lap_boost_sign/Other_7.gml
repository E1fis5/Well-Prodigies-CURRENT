if (sprite_index = spr_lapping_boost_destroy)
{
	instance_destroy();
	obj_player.R2_boost = false;
	obj_player.walksp -= 2.3;
}