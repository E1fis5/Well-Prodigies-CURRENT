score += 55
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
global.sanity += 2

if (global.sanity >= 300)
{
	global.sanity -= 2
}

if (global.sanity <= 80)
{
	score -= 10
}

if (global.health_lock = false)
{
	global.health += 0.2
}

if (global.health_lock = false) and (global.health >= 6)
{
	global.health -= 0.2
}

global.collectable_destroy = true