global.lap2 = false;
global.collectable_destroy = false;
infected_collect = false;
charge_gain = false;
if (global.player_insane)
{
		if(random(1) < 0.15)
	{
		instance_create_depth(x,y,401,choose(obj_fake_apple,obj_fake_carrot));
		instance_destroy();
	}
}