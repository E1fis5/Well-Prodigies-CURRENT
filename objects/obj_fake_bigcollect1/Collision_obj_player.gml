score -= 120

if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 10;
}


if (global.magnet_collect_strong_pull = true)
{
	score += 20;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 2;
	}
}

instance_create_depth(-999,-999,-9800,obj_bigdiamond_notif);

instance_destroy();

audio_play_sound(snd_collect_medium,5,false,1,0,0.85);

instance_create_depth(x - 80,y - 50,-1000,obj_fakecollect_effect);

global.sanity += 1.5

if (global.sanity >= 300)
{
	global.sanity -= 1.5
}

global.health -= 0.45;
obj_player.adrenaline_speed_loss = 0.045;
obj_player.adrenaline_speed_amount = 2.25;
obj_player.adrenaline_boost();
global.damage = true;

global.collectable_destroy = true