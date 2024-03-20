score += 55

instance_destroy();

audio_play_sound(snd_collectable_food,0,false);

instance_create_depth(x,y,-1000,obj_collect_carrot)

global.sanity += 0.5

if (global.sanity >= 100)
{
	global.sanity -= 0.5
}

if (global.sanity <= 50)
{
	score -= 10
}

if (global.gamemode_hard = true)
{
	global.health += 0.2
}

if (global.gamemode_hard = true) and (global.health >= 6)
{
	global.health -= 0.2
}

global.collectable_destroy = true