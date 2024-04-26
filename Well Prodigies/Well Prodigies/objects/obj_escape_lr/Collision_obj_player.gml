if (!global.isActive) {
    global.isActive = true;
    global.timer = 616
}

if (!audio_played) {
    audio_play_sound(snd_escape,10,true)
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_stop_sound(snd_cavedwellings2);
	audio_stop_sound(snd_cavedwellings);
	audio_stop_sound(snd_menu_festive);
	audio_stop_sound(snd_cavedwellings);
	audio_play_sound(snd_rock_break,4,false)
	audio_play_sound(snd_clock_tick,4,true)
}