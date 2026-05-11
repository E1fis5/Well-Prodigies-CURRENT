instance_destroy();
instance_destroy(obj_dash_boost);
if (obj_player.dashBoost_forgive >= 2)
{
	obj_player.dashBoost_forgive = 0;
}
//MindSplit Activation Cooldown
if (obj_player.mindsplit_dash)
{
	obj_player.mindsplit_dash = false;
	obj_player.dash_distance -= 300
}