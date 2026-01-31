score += 350
if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 20;
}
instance_destroy();



if (global.magnet_collect_strong_pull = true)
{
	score += 90;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 10;
	}
}

audio_play_sound(snd_collect_medium,0,false);

instance_create_depth(x,y,-100,obj_collect_effect_big);


instance_create_depth(-999,-999,-9900,obj_bigcollect_notif);

global.sanity += 10

if (global.sanity >= 300)
{
	global.sanity -= 10
}



