if (geyser_limit > 0)
{
	image_yscale -= 0.25;
	geyser_limit -= 1;
}
else if (!geyser_deactivate)
{
	obj_gt_ice_geyser.geyser_stop();
	geyser_deactivate = true;
}