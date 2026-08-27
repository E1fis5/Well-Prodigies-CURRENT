x = -999;
y = -999;

depth = -11000;
ft_dashJoost = font_add_sprite_ext(spr_font_dashJoost,"012345678",true,0.1)
dashCounter_shake_warnin = false;
dashscore_end = false;
if (!instance_exists(obj_dashB_active_effect))
{
	dashCounter_shake_warnin = true;
	obj_player.dashJoost_speed_cancel = true;
}