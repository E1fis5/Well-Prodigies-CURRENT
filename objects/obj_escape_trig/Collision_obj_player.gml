if (!global.isActive) {
    global.isActive = true;
    global.timer = 170
}

if (!audio_played) and (global.sanity >=30) {
    audio_play_sound(snd_escape,9,true)
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_stop_sound(snd_cavedwellings2);
	audio_stop_sound(snd_cavedwellings);
	audio_play_sound(snd_rock_break,4,false)
	audio_play_sound(snd_clock_tick,4,true)
		audio_stop_sound(snd_escape_lowsanity)
}

if (!audio_played) and global.sanity <= 30 {
    audio_play_sound(snd_escape_lowsanity,10,true)
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_stop_sound(snd_cavedwellings2);
	audio_stop_sound(snd_cavedwellings);
	audio_play_sound(snd_rock_break,4,false)
	audio_play_sound(snd_clock_tick,4,true)
		audio_stop_sound(snd_escape)
}

if (global.gamemode_easy = true)
{
    global.timer = 200
}
if (global.gamemode_hard = true)
{
    global.timer = 130
}

if (!global.escape_transition_end) and (!instance_exists(obj_escape_transition))
{
	instance_create_depth(0,0,-11000,obj_escape_transition)
}