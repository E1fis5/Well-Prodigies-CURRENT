if (global.debug_active = true)
{
if (!global.isActive) {	
    global.isActive = true;
    global.timer = 250
}

global.isActive = true;

if (global.gamemode_easy = true)
{
    global.timer = 270
}
if (global.gamemode_hard = true)
{
    global.timer = 20;
	global.grave_arise = true;
}

if (!global.escape_transition_end) and (!instance_exists(obj_escape_transition))
{
	instance_create_depth(0,0,-11000,obj_escape_transition)
}

if (!instance_exists(obj_escape_timer))
{
	instance_create_depth(-999,-999,-9999,obj_escape_timer)
}
}