score += 120

global.abilityscore += 8;
instance_destroy();

audio_play_sound(snd_collect_medium,5,false);

instance_create_depth(x,y,-1000,obj_collect_effect2)

global.sanity += 1

if (global.sanity >= 300)
{
	global.sanity -= 1
}

if (global.sanity <= 80)
{
	score -= 30
}

global.collectable_destroy = true