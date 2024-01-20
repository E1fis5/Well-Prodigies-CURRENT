if (global.gem_counter >= 2)
{
    global.walksp_boost_active = true
	global.gem_counter -= 2
	audio_play_sound(snd_boost_buy,4,false)
	sprite_index = spr_sold_out_shop

}
