if (image_alpha < 1) and (!break_fade)
{
	image_alpha += 0.05;
}

if (break_fade)
{
	image_alpha -= 0.10;
}

if (image_alpha = 0)
{
	instance_destroy();
}