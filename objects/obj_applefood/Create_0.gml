global.collectable_destroy = false
infected_collect = false;
aura_pull = false;
if (instance_exists(obj_sanity_notif))
{
	sprite_index = spr_apple_infected;
	infected_collect = true;
}
