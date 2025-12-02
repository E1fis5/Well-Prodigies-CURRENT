if (global.gem_counter >= 3) and (global.soldout_doll = false)
{
	global.gem_counter -= 3;
	audio_play_sound(snd_boost_buy,4,false);
	sprite_index = spr_sold_out_shop;
	global.shopitem_bought = true;
    instance_create_depth(-999,-999,401,obj_doll);
	instance_create_depth(-999,-999,-9999,obj_ability_bar);
	instance_create_depth(x-85,y-25,-10000,obj_speed_buyable_effect);
	global.soldout_doll = true;
}
