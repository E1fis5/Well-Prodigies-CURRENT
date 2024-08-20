score += 11

if (global.abilityscore <= 150) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 1;
}

if (global.magnet_collect_pull = true)
{
	global.sanity -= 0.05;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 0.05;
	}
}

if (global.magnet_collect_strong_pull = true)
{
	score += 2;
	global.sanity -= 0.1;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 0.1;
	}
}
instance_destroy();
audio_play_sound(snd_collectable_collect,0,false);

instance_create_depth(x,y,-1000,obj_collect_effect)

if (global.sanity <= 80)
{
	score -= 4
}

global.sanity += 0.3

if (global.sanity >= 300)
{
	global.sanity -= 0.3
}

instance_create_depth(-999,-999,-9990,obj_diamond_notif)

global.collectable_destroy = true

