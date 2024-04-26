var _RankD = spr_ranks_D
image_speed = 0.23; // Adjust animation speed as needed
currentFrame = 0; // Set the initial frame
global.counter = 0
timer = 0; // Initialize the timer variable
hud_sprite_original = spr_skull_counter
hud_sprite_second = spr_skullcounter_2
is_timer_over = false; // Initialize the timer status variable
animation_frame = 0;
replica_created = false;

fpsToggle = keyboard_check_pressed(vk_f9);

