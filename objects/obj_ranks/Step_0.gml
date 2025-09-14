
if (score <= 0)
   {
	 sprite_index = spr_ranks_F
	 global.rank = 1;
	 obj_game.rank_image = "spr_ranks_discord1"
   }
   
   if score >= 2000
   {
	 sprite_index = spr_ranks_D
	 global.rank = 2;
	 obj_game.rank_image = "spr_ranks_discord2"
   }
   
      if score >= 4875
   {
	 sprite_index = spr_ranks_C
	 global.rank = 3;
	 obj_game.rank_image = "spr_ranks_discord3"
   }

      if score >= 8750
   {
	  sprite_index = spr_ranks_B
	  global.rank = 4;
	  obj_game.rank_image = "spr_ranks_discord4"
   }
   
         if score >= 12750
   {
	 sprite_index = spr_ranks_A
	 global.rank = 5;
	 obj_game.rank_image = "spr_ranks_discord5"
   }
   
            if score >= 17000
   {
	   sprite_index = spr_ranks_S
	   global.rank = 6;
	   obj_game.rank_image = "spr_ranks_discord6"
   }

         if (score >= 20000)
   {
	  sprite_index = spr_ranks_W
	  global.rank = 7;
	  obj_game.rank_image = "spr_w_rank_disc"
   }
   
            if (score >= 21000) and (global.rift_taken = true) and (global.gems_collected >= 5) and (global.sanity_Prank_switch = false)
   {
	  sprite_index = spr_ranks_P
	  global.rank = 8;
	  obj_game.rank_image = "spr_rank_p_disc"
   }
//Opacity Control
if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

if (global.hud_opac_decrease = true)
{
	image_alpha = 0.3;
}
