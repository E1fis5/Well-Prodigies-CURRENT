draw_sprite(sprite_index,image_index,750,80);

draw_text(815,85,global.abilityscore);
if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,480 + random_range(-3,3),50 + random_range(-3,3));
}