score += 120

instance_destroy();

audio_play_sound(snd_collect_medium,0,false);

effect_create_above(ef_ring,x,y,1,c_aqua)

global.sanity += 1

if (global.sanity >= 100)
{
	global.sanity -= 1
}

if (global.sanity <= 50)
{
	score -= 30
}

global.collectable_destroy = true