if instance_exists(obj_player) and (global.scoreHider = false)
{
		    draw_sprite_ext(sprite_index,image_index,1350,0,image_xscale,image_yscale,0,c_white,image_alpha);
}


if sprite_exists(spr_scorehud) and (global.scoreHider = false)
{
	
	draw_set_font(obj_game.font_main);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(1625,135, score);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
