obj_chains_ability.x = obj_player.x + 65;

obj_chains_ability.y = obj_player.y + 8;

if (global.abilityscore >= 450) and (input_check("ability"))
{
	global.damage_blocker = true;
	audio_play_sound(snd_boost_buy,7,false);
	time_source_start(global.timer_blocker_end);
	global.abilityscore = 0;
}