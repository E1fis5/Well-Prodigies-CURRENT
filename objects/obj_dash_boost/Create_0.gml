var dBoost_destroy = function()
{
	instance_destroy();
}

time_source_dBoost_destroy = time_source_create(time_source_game, 0.2, time_source_units_seconds,dBoost_destroy,[],1)

time_source_start(time_source_dBoost_destroy);

audio_play_sound(snd_dashBoost_create,6,false);
if (global.dash_Mindsplit = true)
{
	audio_sound_pitch(snd_dashBoost_create,0.7);
}

instance_create_depth(x,y,401,obj_dashBoost_effect);

