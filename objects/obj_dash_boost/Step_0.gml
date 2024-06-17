
if (instance_exists(obj_player))
{
time_source_start(time_source_dBoost_destroy);

obj_dash_boost.x = obj_player.x;

obj_dash_boost.y = obj_player.y;
}
