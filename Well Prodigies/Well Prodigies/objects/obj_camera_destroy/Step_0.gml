
if (global.exitShop = false) and (room = r_CaveDwellings_shop)
{
	instance_destroy(obj_camera);
}
 if (global.exitShop = true) and !instance_exists(obj_camera)
	{
		instance_create_depth(0,0,-1000,obj_camera)
		global.exitShop = false
	}
	
