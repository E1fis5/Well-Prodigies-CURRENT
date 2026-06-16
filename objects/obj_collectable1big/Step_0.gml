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

if (distance_to_object(obj_collectaura_hitbox) < 50)
{
	aura_pull = true;	
}
//Base collect aura
if (instance_exists(obj_collectaura_hitbox)) and aura_pull
{
	move_towards_point(obj_collectaura_hitbox.x,obj_collectaura_hitbox.y, obj_player.walksp + 3);
}