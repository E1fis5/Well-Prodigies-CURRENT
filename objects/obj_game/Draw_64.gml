if (global.debug_active = true)
{
	draw_text(100,900,"DEBUG = TRUE");
	draw_text(100,500,global.dash_amount);
    draw_text(100,300,instance_count);
	draw_text(100,400,obj_player.walksp);
	draw_text(100,200,global.abilityscore);
}



if (!instance_exists(obj_score))
{
	draw_set_font(ft_menu);
}

