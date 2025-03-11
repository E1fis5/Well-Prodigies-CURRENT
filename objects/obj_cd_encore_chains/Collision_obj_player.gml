
instance_destroy();
global.health -= 5;
global.health_lock = true;
global.challenge_mode = true;
audio_play_sound(snd_rock_break,7,false);
instance_create_depth(-999,-999,399,obj_chains_ability);


