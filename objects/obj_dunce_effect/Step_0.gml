if (instance_exists(obj_cave_hat))
{
	self.x = obj_cave_hat.x;
	self.y = obj_cave_hat.y;
}
else
{
	instance_destroy();
}