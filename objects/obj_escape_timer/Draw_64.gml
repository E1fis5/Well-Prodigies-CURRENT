draw_sprite(sprite_index,image_index,965,935)

if (global.isActive && global.timer > 0) {
    var minutes = floor(global.timer / 60); // Calculate the minutes
    var seconds = floor(global.timer % 60); // Calculate the remaining seconds
		draw_set_font(global.fontEscape)
    draw_text(910,875,string(minutes) + ":" + string(seconds));
}