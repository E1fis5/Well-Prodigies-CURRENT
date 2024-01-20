global.isActive = false; // Set the initial state of the timer 215
global.timer = 999
audio_played = false;

image_alpha = 0

animation_speed = 0.07
frame_count = sprite_get_number(spr_timer)
sound_timer = 1500;
waitTime = 25; // Set the time to wait in seconds

global.fontEscape = font_add_sprite_ext(spr_font_escape,"0123456789:",true,1)

 