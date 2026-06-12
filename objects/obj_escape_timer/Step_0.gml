
if (global.isActive) and (global.timer < 30)
{ 
	sprite_index = spr_timer_broken;
}	



if (global.timer = 0) and (global.isActive = true) and (time_defecit = false)
{
   time_source_start(global.timer_drain);
   audio_stop_sound(snd_clock_tick); 
   audio_sound_pitch(snd_escape,0.9);
   audio_sound_pitch(snd_lap2,0.9);
   time_source_start(obj_sanitymeter.sanityTimerOvertime);
   time_source_stop(obj_sanitymeter.sanityTimerEscape);
   if (timesup_sound = false)
   {
	   audio_play_sound(snd_timesup,9,false,1.5);
	   timesup_sound = true;
   }
   time_source_stop(timer_escape_drain);
}
else
{
	time_source_stop(global.timer_drain);
	audio_sound_pitch(snd_escape,1);
}