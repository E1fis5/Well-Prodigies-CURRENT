if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
	show_debug_overlay(true);
	if (instance_exists(obj_player))
	{
		draw_text(100,700,obj_player.walksp);
			draw_text(100,500,obj_player.dash_distance);
		if (global.dashboost_dash = true)
		{
			draw_text(100,600,"1");
		}
	}
	if (instance_exists(obj_jestraught_player))
	{
			draw_text(100,700,obj_jestraught_player.walksp);
			draw_text(100,500,obj_jestraught_player.dash_distance);
	}
}

if (!instance_exists(obj_score))
{
	draw_set_font(ft_menu);
}
