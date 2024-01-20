if (text_draw = true)
{
draw_set_font(ft_menu_new)
global.hard_destroy = true
global.simple_destroy = true
global.normal_destroy = false
draw_text(928,800,"Normal Mode \n The base game mode with a moderate difficulty. \n More leniant than hard but fooling around can end a run very quickly. \n Recomended for first time players.\n  Hold JUMP and left click to select.")
}


draw_self();

if (global.normal_destroy = true)
{
	text_draw = false
}


