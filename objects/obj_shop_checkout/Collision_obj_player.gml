if (global.speed_pickup = true) and (input_check("up")) and (global.soldout_speed = false)
{
	global.walksp_boost_active = true;
	global.gem_counter -= 2;
	global.soldout_speed = true;
	instance_create_depth(0,0,399,obj_speed_boost_effect);
	audio_play_sound(snd_boost_buy,6,false);
}

if (global.magnet_pickup = true) and (input_check("up")) and (global.magnet_soldout = false)
{
	global.gem_counter -= 3;
	global.magnet_soldout = true;
	instance_create_depth(0,0,399,obj_shop_magnet);
	audio_play_sound(snd_buy,5,false);
}


if (global.doll_pickup = true) and (input_check("up")) and (global.soldout_doll = false)
{
	global.gem_counter -= 2;
	global.soldout_doll = true;
	instance_create_depth(0,0,399,obj_doll);
	audio_play_sound(snd_buy,5,false);
}

if (global.voodoo_pickup = true) and (input_check("up")) and (global.voodoo_soldout = false)
{
	global.gem_counter -= 2;
	global.voodoo_soldout = true;
	instance_create_depth(0,0,399,obj_voodoo_magic_shop_item);
	audio_play_sound(snd_buy,5,false);
}
