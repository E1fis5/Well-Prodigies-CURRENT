score += 120

if (global.abilityscore <= 150)
{
	global.abilityscore += 10;
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