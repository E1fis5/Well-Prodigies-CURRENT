if instance_exists(obj_player) and (global.scoreHider = false)
{
		    draw_sprite_ext(spr_scorehud,0,1350,0,1,1,0,c_white,1)
}


if sprite_exists(spr_scorehud) and (global.scoreHider = false)
{
	
	draw_set_font(global.font_main)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(1625,135, score);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	depth = -9998
}
  if score < 0
  { score = 0
  }
   {
	 var _RankC = draw_sprite_ext(spr_ranks_F,1,1,870,1,1,0,c_white,1)
   }
   
   if score >= 1850
   {
	  var _RankD = draw_sprite_ext(spr_ranks_D,5,1,870,1,1,0,c_white,1)
   }
   
      if score >= 4875
   {
	  var _RankD = draw_sprite_ext(spr_ranks_C,5,1,870,1,1,0,c_white,1)
   }

      if score >= 8750
   {
	  var _RankD = draw_sprite_ext(spr_ranks_B,5,1,870,1,1,0,c_white,1)
   }
   
         if score >= 12750
   {
	  var _RankD = draw_sprite_ext(spr_ranks_A,5,1,870,1,1,0,c_white,1)
   }
   
            if score >= 17000
   {
	   global._RankS = draw_sprite_ext(spr_ranks_S,5,1,870,1,1,0,c_white,1)
   }

         if (score >= 22250) and (global.rift_taken = true)
   {
	  var _RankD = draw_sprite_ext(spr_ranks_W,5,1,870,1,1,0,c_white,1)
   }
   
   //Incase the old position on the ranks looks better the x and y is 1125 50