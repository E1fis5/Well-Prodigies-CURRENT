score -= 55
if (infected_collect = true)
{
	score -= 20;
}

if (global.abilityscore <= 550) and (global.magnet_collect_strong_pull = false)
{
	global.abilityscore += 4;
}
instance_destroy();


	
audio_play_sound(snd_collectable_food,0,false,1,0,0.55);

instance_create_depth(x,y,-1000,obj_collect_apple);

instance_create_depth(-999,-999,-9991,obj_apple_slash_carrot_notif);

if (global.magnet_collect_strong_pull = true)
{
	score += 16.5;
		if (instance_exists(obj_voodoo_magic_shop_item))
	{
		global.sanity += 0.5;
	}
}
global.sanity += 1.5

if (global.sanity >= 300)
{
	global.sanity -= 1.5
}


global.health -= 1;
obj_player.adrenaline_speed_loss = 0.1;
obj_player.adrenaline_speed_amount = 5;
obj_player.adrenaline_boost();
global.damage = true;



global.collectable_destroy = true