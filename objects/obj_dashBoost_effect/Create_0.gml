if (instance_exists(obj_voodoo_magic_shop_item))
{
	image_speed = 0.8;
}
global.dboost_chance_active = false;

if(random(1) < 0.033)
{
	sprite_index = spr_dBoost_super_spawn1;
	global.dboost_chance_active = true;
}

