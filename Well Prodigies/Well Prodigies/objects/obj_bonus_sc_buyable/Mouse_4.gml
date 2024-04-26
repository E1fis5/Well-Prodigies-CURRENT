if (global.gem_counter >= 1)
{
	score += 550
	global.gem_counter -= 1
	audio_play_sound(snd_buy,4,false)
	global.shopitem_bought = true
}

