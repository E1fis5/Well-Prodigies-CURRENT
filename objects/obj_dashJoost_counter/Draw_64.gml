if (!dashCounter_shake_warnin)
{
	draw_sprite_ext(sprite_index,image_index,480,50,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,480 + random_range(-5,5),50 + random_range(-5,5),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
draw_set_font(ft_dashJoost);
if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,480 + random_range(-6,6),50 + random_range(-6,6));
	draw_text(598 + random_range(-6,6),-25 + random_range(-6,6),global.dash_amount);
}

if (sprite_index = spr_dashJoost_counter)
{
	if (!dashCounter_shake_warnin)
	{
		draw_text(598,-25,global.dash_amount);
	}
	else if (!global.hudshake)
	{
		draw_text(598 + random_range(-5,5),-25,global.dash_amount);
	}
}