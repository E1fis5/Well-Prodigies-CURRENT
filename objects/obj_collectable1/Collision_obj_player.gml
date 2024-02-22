score += 11

instance_destroy();

audio_play_sound(snd_collectable_collect,0,false);

instance_create_depth(x,y,-1000,obj_collect_effect)

if (global.sanity <= 50)
{
	score -= 4
}

global.sanity += 0.3

if (global.sanity >= 100)
{
	global.sanity -= 0.4
}

instance_create_depth(-999,-999,-9990,obj_diamond_notif)