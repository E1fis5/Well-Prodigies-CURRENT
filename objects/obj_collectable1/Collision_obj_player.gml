score += 11

global.abilityscore += 1;

instance_destroy();
instance_create_depth(x,y,600,obj_collectable_respawn1);
audio_play_sound(snd_collectable_collect,0,false);

instance_create_depth(x,y,-1000,obj_collect_effect)

if (global.sanity <= 80)
{
	score -= 4
}

global.sanity += 0.3

if (global.sanity >= 300)
{
	global.sanity -= 0.3
}

instance_create_depth(-999,-999,-9990,obj_diamond_notif)

global.collectable_destroy = true

