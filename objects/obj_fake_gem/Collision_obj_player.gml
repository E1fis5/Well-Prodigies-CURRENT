score -= 1100;

instance_destroy();

instance_create_depth(x,y,-1000,obj_gem_collect);

audio_play_sound(snd_big_collect,0,false,1,0,0.85);

global.gem_counter += 1;
global.gems_collected += 1;

global.sanity -= 10

if (global.sanity >= 300)
{
	global.sanity += 10
}

instance_create_depth(-999,-999,-9998,obj_gem_notif);
instance_destroy(obj_emerald_sparkle);

global.health -= 2;
global.damage = true;