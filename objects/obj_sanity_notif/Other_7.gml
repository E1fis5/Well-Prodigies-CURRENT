if (sprite_index = spr_sanity_warning_intro)
{
	sprite_index = spr_sanity_warning
}

if (global.sanity >= 160)
{
	instance_destroy();
	time_source_stop(obj_sanitymeter.sanityTimerWither);
	audio_sound_pitch(snd_player_hurt,1);
	obj_player.image_blend = c_white;
	instance_destroy(obj_sanity_overlay);
}
	