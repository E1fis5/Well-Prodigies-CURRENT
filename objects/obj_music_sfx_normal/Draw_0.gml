draw_self();

draw_set_font(ft_menu);

draw_text(x, y, button_text);
draw_text(x + 120, y, mus_volume);
draw_text(x - 120, y, sfx_volume);


draw_set_halign(fa_middle);
draw_set_valign(fa_center);