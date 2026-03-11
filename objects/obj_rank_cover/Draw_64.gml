if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,920 + random_range(-6,6),-170 + random_range(-6,6));
}
else
{
	draw_sprite_ext(sprite_index,image_index,920,-170,image_xscale,image_yscale,0,c_white,image_alpha);
}