//Magnet
if (global.magnet_collect_pull = true) and (instance_exists(obj_shop_magnet))
{
	if (distance_to_object(obj_shop_magnet)) < 130
	{
		move_towards_point(obj_shop_magnet.x,obj_shop_magnet.y,obj_player.walksp + 6);
	}
}

if (global.magnet_collect_strong_pull = true) and (distance_to_object(obj_shop_magnet)) < 210
	{
			move_towards_point(obj_shop_magnet.x,obj_shop_magnet.y,obj_player.walksp + 8);
	}
	
//Base collect aura
if (instance_exists(obj_collectaura_hitbox)) and (distance_to_object(obj_collectaura_hitbox) < 50)
{
	move_towards_point(obj_collectaura_hitbox.x,obj_collectaura_hitbox.y, obj_player.walksp + 3);
}

if (obj_player.current_mode = 1)
{
	charge_gain = true;
}
else if (obj_player.current_mode = 0)
{
	charge_gain = false;
}