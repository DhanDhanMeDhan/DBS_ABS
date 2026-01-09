function scr_config(_surface,_ds_grid,_cursor_x,_cursor_y,_use,_top,_index){
	surface_set_target(_surface);
	draw_clear_alpha(c_black,0);
	var ww=surface_get_width(_surface);
	var wh=surface_get_height(_surface);
	var _w_padding=8;
	var _c0=make_color_rgb(245,160,151),_c1=make_color_rgb(232,106,115),_c;
	//============================================================
	//sorting the options and values
	//============================================================
	#region
	var _title=[
		["Idioma","Idioma","Language"],
		["Volume","Volume","Volume"],
		["Grafico","Grafico","Graphics"],
		["Controles","Controles","Control"]
	];
	var _ds_menu=scr_config_set();
	var _ds_grid_size=array_length(_title)+array_length(_ds_menu[0])+array_length(_ds_menu[1])+array_length(_ds_menu[2])+array_length(_ds_menu[3])
	ds_grid_resize(_ds_grid,3,_ds_grid_size);
	var _string_h=(global.font_title_size*array_length(_title))+(font_get_size(fnt_carte)*(_ds_grid_size-array_length(_title)));
	//((string_height(_title[0][0])*global.font_title_size)*array_length(_title))//+((string_height(_ds_menu[0][0][0])*font_get_size(fnt_carte))*(_ds_grid_size-array_length(_title)));
	var _h_padding=wh-_string_h;
		var i=0,_pos=0,_option_size; repeat array_length(_title){
			_ds_grid[# 0,_pos]=1;
			_ds_grid[# 1,_pos]=_title[i];
			_ds_grid[# 2,_pos]=[-1,-1];
			_pos++;
		
			var k=0; repeat array_length(_ds_menu[i]){
				_ds_grid[# 0,_pos]=0;
				_ds_grid[# 1,_pos]=_ds_menu[i][k][0];
				_ds_grid[# 2,_pos]=[_ds_menu[i][k][1],_ds_menu[i][k][2],_ds_menu[i][k][3],_ds_menu[i][k][4]];
				_pos++;
				k++;
			}
			i++;
	}
	#endregion
	//============================================================
	//config the options
	//============================================================
	#region
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	var _cnf=["Configurar","Ajustes","Settings"];
	draw_set_font(fnt_title);
	draw_text_color(ww/2,_h_padding/8,_cnf[global.lang],_c0,_c0,_c0,_c0,1);
	var yy=(_h_padding/4);
	//============================================================
	var _limit=(_ds_grid_size-array_length(_title))-1;
	var _spr_arrow=sprite_get_width(s_hud_config_arrow);
	var _spr_block=sprite_get_width(s_hud_config_block)+2;
	var i=0,_y_add=0,_option=0; repeat _ds_grid_size{
		var _string=_ds_grid[# 1,i];
		draw_set_halign(fa_right);
		_c=_c0;
		if(_ds_grid[# 0,i]==1){
			draw_set_font(fnt_title);
		}else{
			draw_set_font(fnt_carte);
			#region drawing options
			var _act=_ds_grid[# 2,i][0];
			var _val=_ds_grid[# 2,i][1];
			var _lmt=_ds_grid[# 2,i][2];
			var _dst=_ds_grid[# 2,i][3];
			if(_use){ 
				if(_cursor_y==_option){
					_c=c_white;
					if(!is_array(_val))and(!is_string(_val)){
						scr_inputs();
						_val+=(global.input_select_right-global.input_select_left);
						if(array_length(_lmt)>1){
							_val=clamp(_val,_lmt[0],_lmt[1]);
						}
					}
				}
			}
			#region
			draw_set_halign(fa_left);
			switch _act{
				case menu_element_type.input:
					#region
					var _scr=variable_global_get(_val),_str,_txt;
					switch array_length(_lmt){
						case 1:
							_str=scr_change_button(_scr);
							_txt=_str[global.lang]
							break;
						case 2:
							var _and
							if(global.lang==0){_and=" e ";}
							if(global.lang==1){_and=" y ";}
							if(global.lang==2){_and=" and ";}
							var _f=scr_change_button(_scr[0]);
							var _s=scr_change_button(_scr[1]);
							_str=_f[global.lang]+_and+_s[global.lang];
							_txt=_str;
							break;
					}
					draw_text_color((ww/2)+_w_padding,yy+_y_add,_txt,_c,_c,_c,_c,1);
					//============================================================
					#region
					if(_cursor_y==_option){
						if(global.input_confirm)and(!change_button){
							switch array_length(_lmt){
								case 1: global.scr=[-1]; break;
								case 2: global.scr=[-1,-1]; break;
							}
							keyboard_lastkey=vk_nokey;
						}
						if(_top){
							change_button=true;
							can_use_menu=false;
							if(array_length(_lmt)<2){
								if(global.scr[0]==-1){
									if(keyboard_lastkey!=vk_nokey){
										global.scr[0]=keyboard_lastkey;
										variable_global_set(_val,keyboard_lastkey);
										keyboard_lastkey=vk_nokey;
									}
								}else{
									_top=false;
									_index=_index-1;
									can_use_menu=true;
									change_button=false;
									current_key=0;
								}
							}else{
								if(current_key<array_length(_lmt)){
									if(global.scr[current_key]==-1){
										if(keyboard_lastkey!=vk_nokey){
											global.scr[current_key]=keyboard_lastkey;
											current_key++;
											keyboard_lastkey=vk_nokey;
										}
									}
								}else{
									_top=false;
									_index=_index-1;
									can_use_menu=true;
									change_button=false;
									variable_global_set(_val,global.scr);
									current_key=0;
								}
							}
						}else{
							change_button=false;
							current_key=0;
						}
					}
					#endregion					
					#endregion
					break;
				case menu_element_type.shift:
					#region
					if(_val!=0) draw_sprite_ext(s_hud_config_arrow,0,(ww/2)+_w_padding,yy+_y_add,1,1,0,c_white,1);
					draw_set_halign(fa_center);
					var xx=((_spr_arrow*7)+20)/2;
					var _txt=-1;
					switch _dst{
						case menu_element_act.resolution:
							#region
							var window_w=-1,window_h=-1;
							global.resolution=_val;
							if(global.input_select_left)or(global.input_select_right){
								global.window_change=true;
								with (o_camera){event_perform(ev_other,ev_user0);}
								with (o_graphic){event_perform(ev_other,ev_user0);}
							}
							switch global.resolution{
								case 0: window_w=1920;window_h=1080; break;
								case 1: window_w=1680;window_h=1050; break;
								case 2: window_w=1366;window_h=768; break;
								case 3: window_w=1280;window_h=1024; break;
								case 4: window_w=1280;window_h=800; break;
								default: window_w=-1;window_h=-1;
							}
							_txt=string(window_w)+"x"+string(window_h);
							#endregion
							break;
						case menu_element_act.lang:
							#region
							var _temp=["Português","Español","English"];
							_txt=_temp[global.lang];
							global.lang=_val;
							#endregion
							break;
					}
					draw_text_color(((ww/2)+_w_padding)+(xx),yy+_y_add,string(_txt),_c,_c,_c,_c,1);
					if(_val!=_lmt[1]) draw_sprite_ext(s_hud_config_arrow,0,((ww/2)+_w_padding)+(_spr_arrow*7)+20,yy+_y_add,-1,1,0,c_white,1);
					#endregion
					break;
				case menu_element_type.volume: 
					#region
					if(_val!=0) draw_sprite_ext(s_hud_config_arrow,0,(ww/2)+_w_padding,yy+_y_add,1,1,0,c_white,1);
					var k=0,_ind=0; repeat 10{
						if((k)>=_val){
							_ind=1;
						}else{
							_ind=0;
						}
						switch _dst{
							case menu_element_act.volume_mst: global.volume_master=_val/10; break;
							case menu_element_act.volume_bgm: global.volume_bgm=_val/10; break;
							case menu_element_act.volume_bgs: global.volume_bgs=_val/10; break;
							case menu_element_act.volume_sfx: global.volume_sfx=_val/10; break;
						}
						draw_sprite_ext(s_hud_config_block,_ind,((ww/2)+_w_padding)+_spr_arrow+(_spr_block*k)+2,yy+_y_add,1,1,0,c_white,1);
						k++;
					}
					if(_val!=_lmt[1]) draw_sprite_ext(s_hud_config_arrow,0,((ww/2)+_w_padding)+_spr_arrow+(_spr_block*10)+20,yy+_y_add,-1,1,0,c_white,1);
					#endregion
					break;
				case menu_element_type.toggle: 
					#region
					switch _dst{
						case menu_element_act.screen:
							#region
							if(global.window_mode){draw_sprite_ext(s_hud_config_arrow,0,(ww/2)+_w_padding,yy+_y_add,1,1,0,c_white,1);}
							draw_set_halign(fa_center);
							var xx=((_spr_arrow*3)+20)/2;
							var _txt=0,_tmp=0;
							global.window_mode=_val;
							if(global.input_select_left)or(global.input_select_right){
								global.window_change=true;
								with (o_camera){event_perform(ev_other,ev_user0);}
								with (o_graphic){event_perform(ev_other,ev_user0);}
							}
							if(global.window_mode){_tmp=["Sim","Sí","Yes"];}else{_tmp=["Não","No","No"];}
							_txt=_tmp[global.lang]
							draw_text_color(((ww/2)+_w_padding)+(xx),yy+_y_add,_txt,_c,_c,_c,_c,1);
							if(!global.window_mode){draw_sprite_ext(s_hud_config_arrow,0,((ww/2)+_w_padding)+(_spr_arrow*3)+20,yy+_y_add,-1,1,0,c_white,1);}
							#endregion
							break;
						case menu_element_act.paper:
							#region
							if(global.paper){draw_sprite_ext(s_hud_config_arrow,0,(ww/2)+_w_padding,yy+_y_add,1,1,0,c_white,1);}
							draw_set_halign(fa_center);
							var xx=((_spr_arrow*3)+20)/2;
							var _txt=0,_tmp=0;
							global.paper=_val;
							if(global.paper){_tmp=["Sim","Sí","Yes"];}else{_tmp=["Não","No","No"];}
							_txt=_tmp[global.lang];
							draw_text_color(((ww/2)+_w_padding)+(xx),yy+_y_add,_txt,_c,_c,_c,_c,1);
							if(!global.paper){draw_sprite_ext(s_hud_config_arrow,0,((ww/2)+_w_padding)+(_spr_arrow*3)+20,yy+_y_add,-1,1,0,c_white,1);}
							#endregion
							break;
					}
					#endregion
					break;
			}
			#endregion			
			_option++;
			#endregion
		}
		draw_set_halign(fa_right);
		draw_text_color((ww/2)-_w_padding,(yy)+_y_add,_string[global.lang],_c,_c,_c,_c,1);
		_y_add+=string_height(_string)+4;
		i++;
	}
	draw_line_color(ww/2,yy,ww/2,yy+_y_add,_c0,_c0);
	#endregion
	//============================================================
	surface_reset_target();
	
	return [_surface,_ds_menu,_limit,_index,_top,global.scr];
	
}