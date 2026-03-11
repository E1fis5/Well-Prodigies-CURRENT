
if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,0 + random_range(-9,9),20 + random_range(-9,9));
}
else
{
	draw_sprite_ext(sprite_index,image_index,0,20,image_xscale,image_yscale,0,c_white,image_alpha);
}


