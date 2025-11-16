//Opacity Control
if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

if (global.hud_opac_decrease = true) or (obj_player.current_mode = 1)
{
	image_alpha = 0.3;
}

if (score >= 12000)
{
	if (!instance_exists(obj_score_filled_effect))
	{
		instance_create_depth(-999,-999,-9997,obj_score_filled_effect);
	}
	
	x += random_range(-30,30);
}