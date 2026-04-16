if (visible)
{
	if (obj_game.level = 2)
	{
		draw_sprite_ext(sprite_index,image_index,-115 + random_range(-2,2),185,image_xscale,image_yscale,0,c_white,image_alpha);
	}
	if (!global.hudshake)
	{
		draw_sprite_ext(sprite_index,image_index,-115,185,image_xscale,image_yscale,0,c_white,image_alpha);
	}
}
if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,-115 + random_range(-6,6),185 + random_range(-6,6));
}
else
{
	draw_sprite_ext(sprite_index,image_index,-115,185,image_xscale,image_yscale,0,c_white,image_alpha);
}