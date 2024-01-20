score += 350

instance_destroy();

audio_play_sound(snd_collect_medium,0,false);

effect_create_above(ef_ring,x,y,1.5,c_purple)



global.sanity += 4

if (global.sanity >= 100)
{
	global.sanity -= 4
}

if (global.sanity <= 50)
{
	score -= 75
}