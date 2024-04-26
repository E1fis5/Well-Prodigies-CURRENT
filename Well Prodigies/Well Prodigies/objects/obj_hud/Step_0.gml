
currentFrame += image_speed; // Update the current frame to animate the sprite

if (!is_timer_over) {
    if (timer < 600) {
        timer++;
    } else {
        is_timer_over = true;
        timer = 0;
        animation_frame = 0;
    }
} else {
    if (animation_frame < sprite_get_number(hud_sprite_second) - 1) {
        animation_frame++;
    } else {
        if (timer < 110) {
            timer++;
        } else {
            is_timer_over = false;
            timer = 0;
            animation_frame = 0;
        }
    }
}


