global.isActive_rift = false; // Set the initial state of the timer 215
global.timer_rift = 999
audio_played = false;
target_x = 0;
target_y = 0;
target_rm = 0;
image_alpha = 0
animation_speed = 0.4
frame_count = sprite_get_number(spr_rift_timer)
sound_timer = 1500;
waitTime = 25; // Set the time to wait in seconds
fontRiftTimer = font_add_sprite_ext(spr_mainfont,"0123456789:",true,1)

if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}
