global.sanity += 20
if (global.magnet_collect_strong_pull = true)
{
	global.sanity += 6;
}
instance_destroy();

audio_play_sound(snd_collectable_collect,0,false);

effect_create_above(ef_ring,x,y,0.5,c_white)

global.collectable_destroy = true
