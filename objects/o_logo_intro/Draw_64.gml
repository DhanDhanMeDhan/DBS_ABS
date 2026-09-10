//============================================================
//desenhando logo dos criadores
//============================================================
#region
draw_set_alpha(1);
draw_rectangle_color(0,0,global.cw,global.ch,B,B,B,B,false);

var i=0; repeat creator_num{
	draw_sprite_ext(s_hud_main_menu_creator_logo,i,global.cw/2,global.ch/2,1,1,0,W,logo[i][0]);
	i++;
}
#endregion