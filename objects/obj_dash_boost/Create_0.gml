time_source_stop(obj_player.timer_dBoost_create);
if (global.dash_Mindsplit = true)
{
	audio_sound_pitch(snd_dashBoost_create,0.7);
}
if (obj_player.dashBoost_forgive = 1)
{
	audio_play_sound(snd_dashBoost_create,6,false,1,0,1.2);
}
else
{
	audio_play_sound(snd_dashBoost_create,6,false);
}
instance_create_depth(x,y,401,obj_dashBoost_effect);
instance_create_depth(-999,-999,-9999,obj_dashjoost_pause);
