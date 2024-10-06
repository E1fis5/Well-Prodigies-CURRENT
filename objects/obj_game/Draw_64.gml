if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
	show_debug_overlay(true);
	if (instance_exists(obj_player))
	{
		draw_text(100,700,obj_player.walksp);
	}
	draw_text(100,500,instance_count);
	if (instance_exists(obj_jestraught_player))
	{
			draw_text(100,700,obj_jestraught_player.walksp);
	}
}

if (!instance_exists(obj_score))
{
	draw_set_font(ft_menu);
}
