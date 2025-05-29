if (!global.isActive)
{
    global.isActive = true;
    global.timer = 185;
}

if (!audio_played)
{
    audio_played = true; // Set the persistent variable to indicate that the audio has played
	audio_stop_sound(snd_gt_music);
	audio_play_sound(snd_rock_break,4,false)
	audio_play_sound(snd_clock_tick,4,true)
	audio_stop_sound(snd_escape_lowsanity)
	time_source_start(timer_cave_crumble);
	time_source_stop(obj_sanitymeter.sanityTimerHard);
	time_source_start(obj_sanitymeter.sanityTimerEscape);
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