
if (global.walljumps >= 4) and (global.walljump_boost1 = false)
{
	obj_player.vsp_wjump -= 0.35;
	global.walljump_boost1 = true;
	audio_play_sound(snd_wallboost_create,5,false);
	audio_sound_pitch(snd_wallboost_create,1);
}