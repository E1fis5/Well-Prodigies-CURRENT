/// @description Insert description here
if (text_draw = true)
{
draw_set_font(ft_menu_new)
draw_text(384,800,"Easy Mode \n Designed for players who have trouble with harder gamemodes.\n Similar to Normal Mode with \n various changes to mechanics to make them easier to manage. \n Recommended for those who don't have alot of experience with platformers.");
global.normal_destroy = true
global.hard_destroy = true
global.simple_destroy = false
}

draw_self();

if (global.simple_destroy = true)
{
	text_draw = false
}

