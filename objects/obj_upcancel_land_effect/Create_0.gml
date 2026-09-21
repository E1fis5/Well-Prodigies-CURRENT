//Adjustments
if (obj_player.vsp_max_wall >= 32)
{
	image_xscale = 1.5;
	image_yscale = 1.5;
	image_speed = 0.65;
	x = obj_player.x - 80;
	y = obj_player.y - 110;
}
else
{
	x = obj_player.x - 33;
	y = obj_player.y - 45;
}
//Sprites
if (obj_player.vsp_max_wall >= 20)
{
	sprite_index = spr_highslam_upcanceleffect;
}