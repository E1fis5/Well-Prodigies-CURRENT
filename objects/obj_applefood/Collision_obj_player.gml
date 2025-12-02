score += 55
if (infected_collect = true)
{
	score -= 20;
	global.health -= 0.05;
}

if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 4;
}
instance_destroy();

audio_play_sound(snd_collectable_food,0,false);

instance_create_depth(x,y,-1000,obj_collect_apple);

instance_create_depth(-999,-999,-9991,obj_apple_slash_carrot_notif);

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
	global.health += 0.25;
}


global.collectable_destroy = true