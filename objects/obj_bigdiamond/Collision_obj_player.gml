score += 825

instance_destroy();

instance_create_depth(x,y,-1000,obj_gem_collect)

audio_play_sound(snd_big_collect,0,false);

global.gem_counter += 1

global.sanity += 10

if (global.sanity >= 100)
{
	global.sanity -= 10
}