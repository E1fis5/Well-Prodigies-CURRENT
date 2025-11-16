if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,1650,400,image_xscale,image_yscale,0,c_white,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,1650 + random_range(5,-5),400 + random_range(5,-5),image_xscale,image_yscale,image_angle,c_white,image_alpha);
}

if (ability_selected) and (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,1650 + random_range(1,-1),400 + random_range(1,-1),image_xscale,image_yscale,0,c_white,image_alpha);
}
draw_text(1595,404,global.abilityscore);