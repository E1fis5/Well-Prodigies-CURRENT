if (visible)
{
		  draw_sprite_ext(sprite_index,image_index,-115,185,image_xscale,image_yscale,0,c_white,image_alpha);
}
if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,-115 + random_range(-9,9),185 + random_range(-9,9));
}
else
{
	draw_sprite_ext(sprite_index,image_index,-115,185,image_xscale,image_yscale,0,c_white,image_alpha);
}