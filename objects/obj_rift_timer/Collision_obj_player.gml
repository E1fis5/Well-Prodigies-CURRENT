if (!global.isActive_rift) {
    global.isActive_rift = true;
    global.timer_rift = 80
}

if (!audio_played) {
    audio_play_sound(snd_escape,10,true)
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_pause_sound(snd_cavedwellings2);
	audio_pause_sound(snd_cavedwellings);
	audio_pause_sound(snd_menu_festive);
}

if (global.gamemode_easy = true)
{
	global.timer_rift = 100
}

if (global.gamemode_hard = true)
{
	global.timer_rift = 60
}
