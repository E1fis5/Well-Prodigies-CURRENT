if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,78,407,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,78 + random_range(5,-5),407 + random_range(5,-5),image_xscale,image_yscale,image_angle,c_white,image_alpha);
}
