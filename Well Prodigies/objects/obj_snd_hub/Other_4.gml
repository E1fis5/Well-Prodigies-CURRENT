audio_stop_sound(snd_menu_music)

if (global.tutorial_blocker = false)
{
	audio_play_sound(snd_wellhub,10,true);
	instance_destroy();
}