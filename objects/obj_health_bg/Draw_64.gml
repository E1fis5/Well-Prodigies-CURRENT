if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,269,377,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,269 + random_range(5,-5),377 + random_range(5,-5),image_xscale,image_yscale,image_angle,c_white,image_alpha);
}
