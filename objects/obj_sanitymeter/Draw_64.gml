if(instance_exists(obj_player))	
{
   	draw_sprite(spr_sanitymeternew,0,8,64)
}


if (global.sanity <= 90)
{
	draw_sprite(spr_sanitymeternew,1,8,64)
}

if (global.sanity <= 80)
{
	draw_sprite(spr_sanitymeternew,2,8,64)
}

if (global.sanity <= 70)
{
	draw_sprite(spr_sanitymeternew,3,8,64)
}

if (global.sanity <= 60)
{
	draw_sprite(spr_sanitymeternew,4,8,64)
}

if (global.sanity <= 50)
{
	draw_sprite(spr_sanitymeternew,5,8,64)
}

if (global.sanity <= 40)
{
	draw_sprite(spr_sanitymeternew,6,8,64)
}

if (global.sanity <= 30)
{
	draw_sprite(spr_sanitymeternew,7,8,64)
}

if (global.sanity <= 20)
{
	draw_sprite(spr_sanitymeternew,8,8,64)
	global.sanity = 20
	time_source_stop(sanityTimerNormal)
}




