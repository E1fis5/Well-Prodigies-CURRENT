global.lap2 = false;
global.collectable_destroy = false;
infected_collect = false;
aura_pull = false;
if (instance_exists(obj_sanity_notif))
{
	infected_collect = true;
	sprite_index = spr_diamond_infected;
}

if (global.player_insane)
{
		if(random(1) < 0.08)
	{
		instance_create_depth(x,y,401,choose(obj_fake_bigcollect1,obj_fake_bigcollect2));
		instance_destroy();
	}
}