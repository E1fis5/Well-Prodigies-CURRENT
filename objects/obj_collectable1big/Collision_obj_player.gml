score += 120

if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 10;
}


if (global.magnet_collect_strong_pull = true)
{
	score += 20;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 3;
	}
}

instance_create_depth(-999,-999,-9800,obj_bigdiamond_notif);

instance_destroy();

audio_play_sound(snd_collect_medium,5,false);

instance_create_depth(x,y,-1000,obj_collect_effect2)

global.sanity += 3.5

if (global.sanity >= 300)
{
	global.sanity -= 3.5
}

global.collectable_destroy = true