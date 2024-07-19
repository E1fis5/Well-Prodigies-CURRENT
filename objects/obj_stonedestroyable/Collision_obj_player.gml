if (!instance_exists(obj_dashB_active_effect))
{
	instance_destroy();
	global.health -= 0.3;
	score -= 75;
	audio_play_sound(snd_player_hurt,5,false);
    audio_play_sound(snd_rock_break,5,false);
}
if (instance_exists(obj_dashB_active_effect))
{
	instance_destroy();
    audio_play_sound(snd_boost_rock_1_break,5,false);
	audio_play_sound(snd_dash_rock_snd1,4,false);
	global.item_counter_spawner += 1;
    if (!audio_exists(snd_boost_buy))
	{
		audio_play_sound(snd_boost_buy,6,false);
	}
	if (global.item_counter_spawner >= 6)
	{
		instance_create_depth(x + 80,y,401,choose(obj_applefood,obj_collect_big2,obj_carrotfood, obj_bigcollectable2,obj_collectable1big,obj_flower_collectable))
		global.item_counter_spawner = 0;
	}
}
	