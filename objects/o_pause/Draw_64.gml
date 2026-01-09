var _c0=c_black,_c1=make_color_rgb(232,106,115),_c2=make_color_rgb(245,160,151);
draw_sprite_stretched_ext(s_hud_pixel,0,bg_left,0,global.cw,global.ch,c_black,.5);
draw_sprite_ext(bg_border,0,bg_left+1,global.ch/2,1,1,0,c_white,tx_alpha_1);
//============================================================
//portraits
//============================================================
#region
var _s_portrait_xx_offset=16;
var _s_portrait_ww=sprite_get_width(s_hud_pause_portrait);
var _s_portrait_hh=sprite_get_height(s_hud_pause_portrait);
var _spr_border_ww=sprite_get_width(bg_border);
var _s_portrait_yy,_s_portrait_xx=_s_portrait_xx_offset;//(_spr_border_ww+8)+_s_portrait_xx_offset;

var _yy=(global.ch-_s_portrait_hh)/2;
image_speed=.15;
var _portrait_alpha;
var i=0; repeat portrait_num{
	if(portrait_yy[i][1]){
		portrait_yy[i][0]=lerp(portrait_yy[i][0],_yy,.05);
		if(portrait_yy[i][2]<=1) portrait_yy[i][2]+=.05;
	}
	_portrait_alpha=portrait_yy[i][2];
	_s_portrait_yy=portrait_yy[i][0];
	draw_sprite_ext(s_hud_pause_portrait,image_index,bg_left+_s_portrait_xx,_s_portrait_yy,1,1,0,c_white,_portrait_alpha);
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(bg_left+_s_portrait_xx+(_s_portrait_ww/2),_s_portrait_yy+(_s_portrait_hh/2),global.party[i][0].ppl_name[0],_c1,_c1,_c1,_c1,1);
	_s_portrait_xx+=((_s_portrait_xx_offset+_s_portrait_ww));
	i++;
}
#endregion
//============================================================
//main options
//============================================================
#region
var _fnt_size=font_get_size(fnt_title),_fnt_main_options_offset=32;
var _bg_main_hh=sprite_get_height(s_hud_pause_main_bg);
var _main_option_hh=(_fnt_size*(pause_option_size+1))+(_fnt_main_options_offset*pause_option_size);
draw_sprite_stretched_ext(s_hud_pixel,0,main_bg_xx-27,((global.ch/2)-(_bg_main_hh/2))+37,54,67,_c2,1);
player_img_frm+=.1;
if(player_img_frm>4) player_img_frm=0;
draw_sprite(global.party[0][0].spr_casual_walk_down,player_img_frm,main_bg_xx,((global.ch/2)-(_bg_main_hh/2))+37+67);
draw_sprite_ext(s_hud_pause_main_bg,0,main_bg_xx,global.ch/2,1,1,0,c_white,1);
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var _option_xx,_option_c
var i=0,_yy_add=((global.ch/2)-(_main_option_hh/2))+16; repeat pause_option_size+1{
	_option_xx=pause_menu_options[i][1]
	_option_c=pause_menu_options[i][2];
	draw_text_color(_option_xx,_yy_add,pause_menu_options[i][0][global.lang],_option_c,_option_c,_option_c,_option_c,1);
	i++;
	_yy_add+=_fnt_size+_fnt_main_options_offset;
}
#endregion
//============================================================
//itens
//============================================================
#region
if(bg_alpha_1>0) draw_sprite_stretched_ext(s_hud_pixel,0,0,0,global.cw,global.ch,_c0,bg_alpha_1);
if(use_itens){
	var _ww=sprite_get_width(s_hud_pause_inventory_bg_1),_hh=sprite_get_height(s_hud_pause_inventory_bg_1);
	if(!surface_exists(item_list_bg_surf)){
		item_list_bg_surf=surface_create(_ww,_hh);
	}else{
		draw_set_font(global.font_talk);
		surface_set_target(item_list_bg_surf);
		draw_clear_alpha(0,0);
		draw_sprite_ext(s_hud_pause_inventory_bg_1,0,0,0,1,1,0,c_white,1);
		scr_menu_inventory(54,76,scr_inventory_set(global.inventory));
		surface_reset_target();
		draw_surface_ext(item_list_bg_surf,bg_left,item_list_bg_yy,1,1,item_list_bg_ag,c_white,1);
		//============================================================
		draw_sprite_ext(s_hud_pause_inventory_bg_2,0,(global.ch/2)+(global.cw/3),item_display_y1,1,1,0,c_white,item_display_a);
		var _cursor_y=pause_menu_level[1][1][1];
		var _array_item=scr_inventory_set(global.inventory),_item_name=_array_item[_cursor_y][0][global.lang];
		draw_sprite_ext(s_hud_pause_inventory_bg_3,0,(global.ch/2)+(global.cw/3),item_display_y2,1,1,0,c_white,item_display_a);
		draw_set_valign(fa_middle);draw_set_halign(fa_center);
		draw_set_font(fnt_carte);
		draw_text_color((global.ch/2)+(global.cw/3),item_display_y2,_item_name,_c2,_c2,_c2,_c2,item_display_a);
	}
}
#endregion
//============================================================
//config
//============================================================
#region
draw_sprite_ext(s_hud_meal_side_details,0,global.cw/2,config_detail[0],1,1,270,c_white,1);
draw_sprite_ext(s_hud_meal_side_details,0,global.cw/2,config_detail[1],1,1,90,c_white,1);
var _spr_config_h=sprite_get_width(s_hud_meal_side_details),_padding=8;
var _spr_border=0;
var _sur_padding_w=_padding;
var _sur_padding_h=_spr_config_h+(_padding*2);
var _scr=0;
if(use_config){
	saved_config=false;
	if(!surface_exists(config_sur)){
		config_sur=surface_create(global.cw-_sur_padding_w,global.ch-(_sur_padding_h));
	}else{
		var _val=scr_config(config_sur,ds_pause_string,pause_menu_level[1][1][0],pause_menu_level[1][1][1],pause_menu_level[0][0],pause_menu_level[1][0],pause_menu_index);
		config_sur=_val[0];
		settings_menu=_val[1];
		pause_menu_level[1][2][1][1]=_val[2];
		pause_menu_index=_val[3];
		pause_menu_level[1][0]=_val[4];
		_scr=_val[5];
		draw_surface_ext(config_sur,(_sur_padding_w/2),_sur_padding_h-_padding,1,1,0,c_white,config_alp);
	}
}else{
	if(!saved_config){
		var _ach="cnf.dat";
		file_delete(_ach);
		if(!file_exists(_ach)){
			ini_open(_ach);
			//============================================================
			ini_write_real("cnf","lng",global.lang);
			ini_write_real("cnf","mst",global.volume_master);
			ini_write_real("cnf","bgm",global.volume_bgm);
			ini_write_real("cnf","bgs",global.volume_bgs);
			ini_write_real("cnf","sfx",global.volume_sfx);
			ini_write_real("cnf","scr",global.window_mode);
			ini_write_real("cnf","res",global.resolution);
			ini_write_real("cnf","ppr",global.paper);
			ini_write_real("cnf","up1",global.key_up[0]);
			ini_write_real("cnf","up2",global.key_up[1]);
			ini_write_real("cnf","dw1",global.key_down[0]);
			ini_write_real("cnf","dw2",global.key_down[1]);
			ini_write_real("cnf","lt1",global.key_left[0]);
			ini_write_real("cnf","lt2",global.key_left[1]);
			ini_write_real("cnf","rt1",global.key_right[0]);
			ini_write_real("cnf","rt2",global.key_right[1]);
			ini_write_real("cnf","cn1",global.key_cancel[0]);
			ini_write_real("cnf","cn2",global.key_cancel[1]);
			ini_write_real("cnf","cm1",global.key_confirm[0]);
			ini_write_real("cnf","cm2",global.key_confirm[1]);
			ini_write_real("cnf","ps",global.key_pause);
			//============================================================
			ini_close();
			saved_config=true;
		}
		
	}
}
#endregion