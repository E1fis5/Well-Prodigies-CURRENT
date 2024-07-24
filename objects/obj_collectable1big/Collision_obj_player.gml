score += 120

if (global.abilityscore <= 150) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 10;
}

if (global.magnet_collect_pull = true)
{
	global.sanity -= 0.025;
}

if (global.magnet_collect_strong_pull = true)
{
	score += 36;
	global.sanity -= 0.5;
}
instance_destroy();

audio_play_sound(snd_collect_medium,5,false);

instance_create_depth(x,y,-1000,obj_collect_effect2)

global.sanity += 2

if (global.sanity >= 300)
{
	global.sanity -= 2
}

if (global.sanity <= 80)
{
	score -= 30
}

global.collectable_destroy = true