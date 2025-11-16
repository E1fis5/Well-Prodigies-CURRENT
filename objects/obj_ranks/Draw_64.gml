if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,1085,30,image_xscale,image_yscale,0,c_white,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,1085 + random_range(5,-5),30 + random_range(5,-5),image_xscale,image_yscale,0,c_white,image_alpha);
}

