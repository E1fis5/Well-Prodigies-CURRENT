if (!global.isActive) 
{
    global.isActive = true;
    global.timer = 160
}

if (!audio_played) and (global.sanity >=30) {
    audio_play_sound(snd_escape,9,true)
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_stop_sound(snd_mb_1);
	audio_stop_sound(snd_mb_1);
	audio_play_sound(snd_rock_break,4,false)
	audio_play_sound(snd_clock_tick,4,true)
		audio_stop_sound(snd_escape_lowsanity)
}

if (!audio_played) and global.sanity <= 40 {
    audio_play_sound(snd_escape_lowsanity,10,true)
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_stop_sound(snd_cavedwellings2);
	audio_stop_sound(snd_mb_1);
	audio_play_sound(snd_rock_break,4,false)
	audio_play_sound(snd_clock_tick,4,true)
		audio_stop_sound(snd_escape)
}

if (global.gamemode_easy = true)
{
    global.timer = 190
}
if (global.gamemode_hard = true)
{
    global.timer = 155
}

if (!global.escape_transition_end) and (!instance_exists(obj_escape_transition))
{
	instance_create_depth(0,0,-11000,obj_escape_transition)
}

if (!instance_exists(obj_escape_timer))
{
	instance_create_depth(-999,-999,-9999,obj_escape_timer)
}


if (!instance_exists(obj_fakeout)) and (global.fakeout_pause = false)
{
	instance_create_depth(-999,-999,-9998,obj_fakeout);
}