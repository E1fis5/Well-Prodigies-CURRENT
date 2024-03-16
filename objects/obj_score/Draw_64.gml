if instance_exists(obj_player) and (global.scoreHider = false)
{
		    draw_sprite_ext(spr_scorehud,0,1350,0,1,1,0,c_white,1)
}


if sprite_exists(spr_scorehud) and (global.scoreHider = false)
{
	
	draw_set_font(global.font_main)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(1625,135, score);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	depth = -9998
}
