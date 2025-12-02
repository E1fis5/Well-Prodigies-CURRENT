if (sprite_index = spr_sanity_warning_intro)
{
	sprite_index = spr_sanity_warning
}

if (global.sanity >= 160)
{
	global.player_insane = false;
	instance_destroy();
	audio_sound_pitch(snd_player_hurt,1);
	instance_destroy(obj_sanity_overlay);
	instance_deactivate_object(obj_fake_gem_spawn);
}
	