score += 55
if (infected_collect = true)
{
	score -= 20;
}

if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 4;
}
instance_destroy();

audio_play_sound(snd_collectable_food,0,false);

instance_create_depth(x,y,-1000,obj_collect_apple)



if (global.magnet_collect_strong_pull = true)
{
	score += 16.5;
		if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 0.5;
	}
}
global.sanity += 1.5

if (global.sanity >= 300)
{
	global.sanity -= 1.5
}

if (global.health_lock = false) and (global.health < global.maxhealth) and (instance_exists(obj_health))
{
	global.health += 0.1
}


global.collectable_destroy = true