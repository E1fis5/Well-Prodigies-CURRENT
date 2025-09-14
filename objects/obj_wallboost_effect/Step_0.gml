obj_wallboost_effect.x = obj_player.x + 10;
obj_wallboost_effect.y = obj_player.y;

if (global.walljumps >= 7) and (global.walljump_boost2 = false)
{
	obj_player.vsp_wjump -= 0.65;
	global.walljump_boost2 = true;
	audio_play_sound(snd_wallboost_create,5,false);
	audio_sound_pitch(snd_wallboost_create,1.35);
}
