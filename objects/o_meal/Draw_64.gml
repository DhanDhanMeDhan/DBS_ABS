var _c1=merge_color(make_color_rgb(36,34,52),c_white,bg_color_fade);
var _c=make_color_rgb(36,34,52);
var _c2=make_color_rgb(250,214,184);
var _c3=make_color_rgb(245,160,151);
var _meal=[["Menú","Continuar"],["Carta","Seguir"],["Menu","Continue"]];
draw_sprite_stretched_ext(s_hud_meal_bg,global.dinner_moment,0,0,global.cw,global.ch,c_white,1);
draw_set_alpha(1-bg_color_fade);
draw_rectangle_color(0,0,global.cw,global.ch,_c,_c,_c,_c,false)
//draw_sprite_stretched_ext(s_hud_pixel,0,0,0,global.cw,global.ch,_c1,1);
draw_sprite_ext(s_hud_plates,0,plates_x,plates_y,1,1,0,c_white,plates_a);
draw_sprite_ext(s_hud_meal_border,0,meal_border_xx,global.ch/2,-1,1,0,c_white,1);
draw_sprite_ext(s_hud_meal_border,0,global.cw-meal_border_xx,global.ch/2,1,1,0,c_white,1);
draw_sprite_stretched_ext(s_hud_pixel,0,0,0,meal_border_xx,global.ch,_c2,1);
draw_sprite_stretched_ext(s_hud_pixel,0,global.cw-meal_border_xx,0,meal_border_xx,global.ch,_c2,1);
var _spr_option_offset=8;
var _spr_option_w=sprite_get_width(s_hud_meal_option);
var _spr_border_w=sprite_get_width(s_hud_meal_border);
draw_set_font(fnt_carte);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_sprite_ext(s_hud_meal_option,0,meal_border_xx-(_spr_option_offset+(_spr_option_w/2)),meal_options_yy[0],1,1,0,c_white,1);
draw_text_color(meal_border_xx-(_spr_option_offset+(_spr_option_w/2)),meal_options_yy[0],_meal[global.lang][0],_c3,_c3,_c3,_c3,1);
draw_sprite_ext(s_hud_meal_option,0,global.cw-(meal_border_xx-(_spr_option_offset+(_spr_option_w/2))),meal_options_yy[1],1,1,0,c_white,1);
draw_text_color(global.cw-(meal_border_xx-(_spr_option_offset+(_spr_option_w/2))),meal_options_yy[1],_meal[global.lang][1],_c3,_c3,_c3,_c3,1);
draw_sprite_ext(s_hud_meal_deailt,0,meal_border_xx-(_spr_option_offset+(_spr_option_w/2)),global.ch/3,1,1,0,c_white,1);
draw_sprite_ext(s_hud_meal_deailt,0,global.cw-(meal_border_xx-(_spr_option_offset+(_spr_option_w/2))),global.ch/3,1,1,0,c_white,1);

draw_set_valign(fa_top);draw_set_halign(fa_left);
if(meal_menu){
	meal_menu_border=lerp(meal_menu_border,global.cw-(global.cw/4),.15);
}else{
	meal_menu_border=lerp(meal_menu_border,-sprite_get_width(s_hud_main_menu_border),.05);
}
draw_sprite_ext(s_hud_main_menu_border,0,meal_menu_border,global.ch/2,-1,1,0,c_white,1);
draw_sprite_stretched_ext(s_hud_pixel,0,0,0,meal_menu_border,global.ch,c_black,.5);

var _side_detail=sprite_get_width(s_hud_meal_side_details),_meal_detail_offset=10;
var _display_ww=(global.cw-(global.cw/4))-(_side_detail*2)-_meal_detail_offset*4;
var _display_hh=global.ch-(global.ch/4);
var _surf_hh=global.ch+(global.ch/2),_surf_ww=_display_ww;
if(!surface_exists(display_surface)){
	display_surface=surface_create(_surf_ww,_surf_hh);
}else{
	surface_set_target(display_surface);
	draw_clear_alpha(c_blue,0);
	draw_sprite_ext(s_hud_meal_plates,0,_surf_ww/2,display_yy+_surf_hh/4,1,1,0,c_white,1);
	draw_sprite_ext(s_hud_meal_plates,1,_surf_ww/2,display_yy+_surf_hh/2,1,1,0,c_white,1);
	draw_sprite_ext(s_hud_meal_drinks,0,_surf_ww/2,display_yy+(_surf_hh/2)+(_surf_hh/3),1,1,0,c_white,1);
	surface_reset_target();
	draw_surface_part_ext(display_surface,0,0,_display_ww,_display_hh,meal_menu_border-(_surf_ww+(_side_detail+_meal_detail_offset*2)),global.ch/8,1,1,c_white,1);
}
draw_sprite_ext(s_hud_meal_side_details,0,meal_menu_border-(global.cw-(global.cw/4))+(_meal_detail_offset+(_side_detail/2)),global.ch/2,1,1,0,c_white,1)
draw_sprite_ext(s_hud_meal_side_details,0,meal_menu_border-(_meal_detail_offset+(_side_detail/2)),global.ch/2,-1,1,0,c_white,1)