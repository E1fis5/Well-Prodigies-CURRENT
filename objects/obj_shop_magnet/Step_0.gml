obj_shop_magnet.x = obj_player.x + 65;

obj_shop_magnet.y = obj_player.y + 8;

if (global.abilityscore >= 150) and (input_check("ability"))
{
	global.magnet_collect_pull = false;
	global.magnet_collect_strong_pull = true;
	global.abilityscore = 0;
	audio_play_sound(snd_boost_buy,7,false);
	time_source_start(global.timer_magnet_end);
}