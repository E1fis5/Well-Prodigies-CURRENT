if image_index < 1
{
  instance_destroy();
  audio_play_sound(snd_escape,9,true);
}