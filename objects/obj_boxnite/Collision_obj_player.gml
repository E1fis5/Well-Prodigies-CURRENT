score += 1

instance_destroy();

audio_play_sound(snd_boxnite_scream,10,false)

instance_create_depth(x,y,-10000,obj_boxnite_jumpscare)
