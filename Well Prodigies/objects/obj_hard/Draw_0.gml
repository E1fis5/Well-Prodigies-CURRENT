if (text_draw = true)
{
draw_set_font(ft_menu_new)
global.simple_destroy = true
global.normal_destroy = true
global.hard_destroy = false
draw_text(1536,800,"Hard Mode \n Designed for those familiar with the design and gameplay. \n Adds a health meter and makes some mechanics \n more punishing. \n Not recommended for new players. \n Hold JUMP and left click to select.")
}

draw_self();

if (global.hard_destroy) = true
{
	text_draw = false
}




