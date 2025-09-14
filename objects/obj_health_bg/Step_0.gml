//Opacity Control
if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

if (global.damage)
{
	sprite_index = spr_health_bg_hurt;
}

if (!global.damage) and (global.isActive)
{
	sprite_index = spr_health_bg_escape;
}