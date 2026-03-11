draw_sprite_ext(sprite_index,image_index,965,935,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

//Time Drawing
if (global.isActive)
{
	if (!timer_fake_display_active)
	{
		var minutes = floor(global.timer / 60); 
		var seconds = floor(global.timer % 60);
		draw_set_font(fontEscape);
		draw_text(910,875,string(minutes) + ":" + string(seconds));
	}
	else
	{
		var minutes = floor(fake_timer / 60); 
		var seconds = floor(fake_timer % 60);
		draw_set_font(fontEscape);
		draw_text(910,875,string(minutes) + ":" + string(seconds));
	}
}