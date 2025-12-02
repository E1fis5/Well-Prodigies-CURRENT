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

x += random_range(-100,100);