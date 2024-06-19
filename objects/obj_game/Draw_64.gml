if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
    draw_text(100,300,instance_count);
	draw_text(100,400,obj_player.walksp);
	show_debug_overlay(true);
}



if (!instance_exists(obj_score))
{
	draw_set_font(ft_menu);
}

