if (!dashCounter_shake_warnin)
{
	draw_sprite(sprite_index,image_index,480,50);
}
else
{
	draw_sprite(sprite_index,image_index,480 + random_range(-5,5),50);
}

draw_set_font(ft_dashJoost);

if (sprite_index = spr_dashJoost_counter)
{
	if (!dashCounter_shake_warnin)
	{
		draw_text(598,-25,global.dash_amount);
	}
	else
	{
		draw_text(598 + random_range(-5,5),-25,global.dash_amount);
	}
}