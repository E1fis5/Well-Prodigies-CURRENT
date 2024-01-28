score -= 150

instance_destroy();

audio_play_sound(snd_player_hurt,5,false)


if (global.gamemode_hard = true)
{
	global.health -= 1
}