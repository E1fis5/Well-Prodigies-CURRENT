//Magnet
if (global.magnet_collect_pull = true) and (instance_exists(obj_shop_magnet))
{
	if (distance_to_object(obj_shop_magnet)) < 130
	{
		move_towards_point(obj_shop_magnet.x,obj_shop_magnet.y,obj_player.walksp + 3);
	}
}

if (global.magnet_collect_strong_pull = true) and (distance_to_object(obj_shop_magnet)) < 210
	{
			move_towards_point(obj_shop_magnet.x,obj_shop_magnet.y,obj_player.walksp + 4);
	}
	
//Base collect aura
if (instance_exists(obj_collectaura_hitbox)) and (distance_to_object(obj_collectaura_hitbox) < 30)
{
	move_towards_point(obj_collectaura_hitbox.x,obj_collectaura_hitbox.y, obj_player.walksp + 1.5);
}