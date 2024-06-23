score += 350
global.abilityscore += 25;
instance_destroy();

audio_play_sound(snd_collect_medium,0,false);

instance_create_depth(x,y,-1000,obj_collect_effect_big);



global.sanity += 4

if (global.sanity >= 100)
{
	global.sanity -= 4
}

if (global.sanity <= 50)
{
	score -= 75
}

