global.lap2 = false;
global.collectable_destroy = false;
infected_collect = false;
aura_pull = false;
if (instance_exists(obj_sanity_notif))
{
	infected_collect = true;
	sprite_index = spr_diamond_infected;
}
