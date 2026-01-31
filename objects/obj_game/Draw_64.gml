if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
	show_debug_overlay(true);
	if (instance_exists(obj_player))
	{
		draw_text(100,700,obj_player.walksp);
			draw_text(100,600,obj_player.dash_distance);
				draw_text(100,500,obj_player.vspJump);
	}
}
	if (instance_exists(obj_jestraught_play))
	{
			draw_text(100,700,obj_jestraught_play.walksp);
			draw_text(100,500,obj_jestraught_play.dash_distance);
	}
	

if (!instance_exists(obj_score))
{
	draw_set_font(ft_menu);
}
