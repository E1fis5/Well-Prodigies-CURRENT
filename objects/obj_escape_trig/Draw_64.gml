if (global.isActive && global.timer > 0) {
	    draw_sprite(spr_timer,floor(image_index), 965, 935); // Draw the sprite first
    var minutes = floor(global.timer / 60); // Calculate the minutes
    var seconds = floor(global.timer % 60); // Calculate the remaining seconds
		draw_set_font(global.fontEscape)
    draw_text(900,878,string(minutes) + ":" + string(seconds));
}

if (global.isActive && global.timer < 30)
{
    draw_sprite(spr_timer_broken,floor(image_index), 965, 935); // Draw the sprite first
	    var minutes = floor(global.timer / 60); // Calculate the minutes
    var seconds = floor(global.timer % 60); // Calculate the remaining seconds
		draw_set_font(global.fontEscape)
    draw_text(900,878,string(minutes) + ":" + string(seconds));
}
