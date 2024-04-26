

instance_destroy()

if (!audio_once_played) {
    audio_play_sound(snd_menu_music,9,true);
    audio_once_played = true;
}