if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
	show_debug_overlay(true);
	if (instance_exists(obj_player))
	{
			if (obj_player.mindsplit_activated)
			{
				draw_text(100,500,"1");
			}
			else
			{
				draw_text(100,500,"0");
			}
			
			if (obj_player.mindsplit_dash)
			{
				draw_text(100,400,"1");
			}
			else
			{
				draw_text(100,400,"0");	
			}
			
			if (obj_player.onwall)
			{
				draw_text(100,300,"1");
			}
			if (!obj_player.onwall)
			{
				draw_text(100,300,"0");
			}
			draw_text(100,200,obj_player.walksp);
			draw_text(100,600,obj_player.dash_distance);
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
