if (global.sanity > 40)
{
	instance_destroy();
}

if (room = r_CaveDwellings_shop)
{
    visible = false
}
if (!room = r_CaveDwellings_shop) and (!room = rWellhub2) and (!room = r_rank_screen)
{
    visible = true
}