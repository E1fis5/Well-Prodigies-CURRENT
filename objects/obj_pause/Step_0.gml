if (input_check_pressed("pause")) and (global.pause_active = false)
{
	global.pause_active = true;
    audio_pause_all();
}

