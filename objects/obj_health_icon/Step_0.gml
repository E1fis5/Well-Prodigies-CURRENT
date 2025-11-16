//Opacity Control
if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

//Sprite Change Events
if (global.damage)
{
	sprite_index = spr_health_icon_hurt;
}

if (!global.damage) and (global.isActive) or (global.gameover_trigger)
{
	sprite_index = spr_health_icon_escape;
}

