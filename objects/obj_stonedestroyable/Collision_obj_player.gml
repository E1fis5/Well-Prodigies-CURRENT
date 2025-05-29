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
    if (!audio_exists(snd_boost_buy))
	{
		audio_play_sound(snd_boost_buy,6,false);
	}
	score += 30;
}
	
instance_create_depth(x,y,-1000,obj_rock_destroyable_effect);