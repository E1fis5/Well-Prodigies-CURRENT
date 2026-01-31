score += 11
if (infected_collect = true)
{
	score -= 4;
}

if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 1;
}


if (global.magnet_collect_strong_pull = true)
{
	score += 2;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 0.05
	}
}
instance_destroy();
audio_play_sound(snd_collectable_collect,4,false);

instance_create_depth(x,y,-100,obj_collect_effect)


global.sanity += 0.2

if (global.sanity >= 300)
{
	global.sanity -= 0.2
}

instance_create_depth(-999,-999,-9990,obj_diamond_notif)

global.collectable_destroy = true

