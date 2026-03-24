if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
	show_debug_overlay(true);
	if (instance_exists(obj_player))
	{
		draw_text(100,700,obj_player.walksp);
			draw_text(100,600,obj_player.vsp_max_wall);
			if (obj_player.mindsplit_activated)
			{
				draw_text(100,500,"1");
			}
			if (obj_player.mindsplit_avalible)
			{
				draw_text(100,400,"1");
			}
			draw_text(100,300,global.sanity);
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
