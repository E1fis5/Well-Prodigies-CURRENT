if (global.abilityscore < 50)
{
	sprite_index = spr_ability_bar_deactivated;
}

if (global.abilityscore >= 50)
{
	sprite_index = spr_ability_bar_1;
}

if (global.abilityscore >= 100)
{
	sprite_index = spr_ability_bar_2;
}

if (global.abilityscore >= 150)
{
	sprite_index = spr_ability_bar_full;
	global.abilityscore = 150;
}

depth = -9999;

x = -999;
y = -999;

if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}