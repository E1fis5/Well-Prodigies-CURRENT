draw_sprite(sprite_index,image_index,965,935);

//Time Drawing
if (global.isActive && global.timer > 0)
{
	if (timer_confuse_disable)
	{
		var minutes = floor(global.timer / 60); 
		var seconds = floor(global.timer % 60);
		draw_set_font(fontEscape);
		draw_text(910,875,string(minutes) + ":" + string(seconds));
	}
	if (!timer_confuse_disable)
	{
		var minutes = floor(false_timer / 60); 
		var seconds = floor(false_timer % 60);
		draw_set_font(fontEscape);
		draw_text(910,875,string(minutes) + ":" + string(seconds));	
	}
}