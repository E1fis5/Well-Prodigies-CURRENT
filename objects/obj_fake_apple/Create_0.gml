global.collectable_destroy = false
infected_collect = false;
if (instance_exists(obj_sanity_notif))
{
	sprite_index = spr_apple_infected;
	infected_collect = true;
}
image_blend = c_dkgrey;
image_speed = 0.65;	