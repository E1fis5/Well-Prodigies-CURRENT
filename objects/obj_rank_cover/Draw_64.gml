if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,920,-170,image_xscale,image_yscale,0,c_white,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,920 + random_range(5,-5),-170 + random_range(5,-5),image_xscale,image_yscale,0,c_white,image_alpha);
}
