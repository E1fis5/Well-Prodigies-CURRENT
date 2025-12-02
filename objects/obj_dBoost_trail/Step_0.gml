image_alpha -= alpha_decrease
if (image_alpha <= 0)
{
	instance_destroy();
}