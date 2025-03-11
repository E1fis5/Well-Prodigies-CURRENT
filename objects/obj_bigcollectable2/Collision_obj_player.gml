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

instance_create_depth(x,y,-1000,obj_collect_effect_big);



global.sanity += 20

if (global.sanity >= 300)
{
	global.sanity -= 20
}

if (global.sanity <= 80)
{
	score -= 75
}



