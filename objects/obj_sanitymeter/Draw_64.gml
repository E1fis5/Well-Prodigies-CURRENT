if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,-50 + random_range(-9,9),9 + random_range(-9,9));
}
//Main Drawing
if (!shake_trigger)
{
	draw_sprite_ext(sprite_index,image_index,-50,9,image_xscale,image_yscale,0,c_white,image_alpha);
}
else if (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,-50 + random_range(-7,7),9 + random_range(-7,7),image_xscale,image_yscale,0,c_white,image_alpha);
}
if (global.isActive and (!shake_trigger)) and (!global.hudshake)
{
	draw_sprite_ext(sprite_index,image_index,-50 + random_range(-2,2),9,image_xscale,image_yscale,0,c_white,image_alpha);
}

if (global.sanity >= 300) //Full Stage
{
   	image_index = 0;
	if (!global.isActive)
	{	
		time_source_pause(sanityTimerHard);
	}
	else
	{
		time_source_pause(sanityTimerEscape);
	}
	time_source_start(sanityTimerFullDrain);
}

if (global.sanity <= 290) 
{
	image_index = 1;
}

if (global.sanity <= 280) 
{
	image_index = 2;
}

if (global.sanity <= 270)
{
	image_index = 3;
}

if (global.sanity <= 260) 
{
	image_index = 4;
}

if (global.sanity <= 250)
{
	image_index = 5;
}

if (global.sanity <= 240)
{
	image_index = 6;
}

if (global.sanity <= 240)
{
	image_index = 7;
}

if (global.sanity <= 230)
{
	image_index = 8;
}

if (global.sanity <= 220)
{
	image_index = 9;
}

if (global.sanity <= 210)
{
	image_index = 10;
}

if (global.sanity <= 200) //Half Stage
{
	image_index = 11;
}

if (global.sanity <= 190)
{
	image_index = 12;
}

if (global.sanity <= 180)
{
	image_index = 13;
}

if (global.sanity <= 170)
{
	image_index = 14;
}

if (global.sanity <= 160) and (!instance_exists(obj_sanity_notif)) //Insanity Start
{
	image_index = 15;
	instance_create_depth(0,0,-9999,obj_sanity_notif);
	audio_play_sound(snd_mindSplit_end,6,false);
	instance_create_depth(-999,-999,-11000,obj_sanity_overlay);
	if (!instance_exists(obj_healthbg_insane))
	{
		instance_create_depth(-999,-999,-11000,obj_healthbg_insane);
	}
	global.player_insane = true;

}

if (global.sanity <= 150)
{
	image_index = 16;
}

if (global.sanity <= 140)
{
	image_index = 17;
}

if (global.sanity <= 130)
{
	image_index = 18;
}

if (global.sanity <= 120)
{
	image_index = 19;
}

if (global.sanity <= 110)
{
	image_index = 20;
}

if (global.sanity <= 100)
{
	image_index = 21;
}

if (global.sanity <= 90)
{
	image_index = 22;
}

if (global.sanity <= 80)
{
	image_index = 23;
}

if (global.sanity <= 70)
{
	image_index = 24;
}

if (global.sanity <= 60)
{
	image_index = 25;
}

if (global.sanity <= 50)
{
	image_index = 26;
}

if (global.sanity <= 40)
{
	image_index = 27;
}

if (global.sanity <= 30)
{
	image_index = 28;
}