if (global.gem_counter >= 2) and (global.soldout_speed = false)
{
    global.walksp_boost_active = true;
	global.gem_counter -= 2;
	audio_play_sound(snd_boost_buy,4,false);
	sprite_index = spr_sold_out_shop;
	global.shopitem_bought = true;
    instance_create_depth(-999,-999,399,obj_speed_boost_effect);
	instance_create_depth(x-85,y-25,-10000,obj_speed_buyable_effect);
	global.soldout_speed = true;
}
