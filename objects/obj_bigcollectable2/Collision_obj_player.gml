score += 350
if (global.abilityscore <= 150)
{
	global.abilityscore += 25;
}
instance_destroy();

audio_play_sound(snd_collect_medium,0,false);

instance_create_depth(x,y,-1000,obj_collect_effect_big);



global.sanity += 4

if (global.sanity >= 300)
{
	global.sanity -= 4
}

if (global.sanity <= 80)
{
	score -= 75
}

