obj_wallboost_effect.x = obj_player.x + 10;
obj_wallboost_effect.y = obj_player.y;

if (global.walljumps >= 5) and (global.walljump_boost2 = false)
{
	obj_player.vsp_wjump -= 0.85;
	global.walljump_boost2 = true;
	audio_play_sound(snd_wallboost_create,5,false);
	audio_sound_pitch(snd_wallboost_create,1.35);
}
