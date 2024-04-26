score += 500

instance_destroy();

audio_play_sound(snd_collectable_collect,0,false);

effect_create_above(ef_ring,x,y,0.5,c_white)

if (global.sanity <= 30)
{
	score -= 85
}

global.sanity += 8

if (global.sanity >= 100)
{
	global.sanity -= 8
}