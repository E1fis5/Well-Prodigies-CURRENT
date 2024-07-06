score += 825
global.abilityscore += 50;
instance_destroy();

instance_create_depth(x,y,-1000,obj_gem_collect)

audio_play_sound(snd_big_collect,0,false);

global.gem_counter += 1

global.sanity += 10

if (global.sanity >= 300)
{
	global.sanity -= 10
}

instance_create_depth(-999,-999,-9990,obj_gem_notif)