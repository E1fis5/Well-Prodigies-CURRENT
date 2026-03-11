if (global.gamemode_hard = false)
{
	instance_destroy();
}
if (live_call())
{
	return live_result;
}
//Opacity Control
if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

if (global.hud_opac_decrease = true)
{
	image_alpha = 0.3;
}

//Health Damage Effect
if (global.damage) and (!instance_exists(obj_health_damage_effect))
{
	instance_create_depth(-9999,-9999,-10001,obj_health_damage_effect);
}


  



