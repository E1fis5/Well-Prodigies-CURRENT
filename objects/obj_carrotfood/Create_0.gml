global.collectable_destroy = false;
infected_collect = false;
charge_gain = false;
if (instance_exists(obj_sanity_notif))
{
	sprite_index = spr_carrot_infected;
	infected_collect = true;
}
