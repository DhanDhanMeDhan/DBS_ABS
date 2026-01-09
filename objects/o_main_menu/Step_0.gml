if(!window_has_focus()) exit;
//============================================================
//setting the menu
//============================================================
#region
if(can_use_menu){
	var _cursor_x=main_menu_level[main_menu_index][1][0],_cursor_y=main_menu_level[main_menu_index][1][1];
	var _xx_min=main_menu_level[main_menu_index][2][0][0];
	var _xx_max=main_menu_level[main_menu_index][2][0][1];
	var _yy_min=main_menu_level[main_menu_index][2][1][0],_yy_max=main_menu_level[main_menu_index][2][1][1];
	var _type_side=main_menu_level[main_menu_index][3],_type_end=main_menu_level[main_menu_index][4];
	var _type_move=main_menu_level[main_menu_index][5];
	var _menu_layers=main_menu_level[main_menu_index][0];

	var _menu_results=scr_menu_config(_cursor_x,_cursor_y,_xx_min,_xx_max,_yy_min,_yy_max,_type_move,_type_side,_type_end,main_menu_level,main_menu_index,_menu_layers,menu_next_level,2);

	if(global.input_confirm){
		var _array_menu_lenght=array_length(main_menu_level);
		if(main_menu_index<_array_menu_lenght){
			main_menu_level[main_menu_index+1][1]=[0,0];
		}
	}
	main_menu_level[main_menu_index][1][0]=_menu_results[0];
	main_menu_level[main_menu_index][1][1]=_menu_results[1];
	cursor_x=main_menu_level[main_menu_index][1][0];
	cursor_y=main_menu_level[main_menu_index][1][1];
	if(global.input_cancel){
		if(main_menu_index>2){
			main_menu_level[main_menu_index-1][0]=false;
		}
	}
	main_menu_level[main_menu_index][0]=_menu_results[2];
	main_menu_index=_menu_results[3];
}
principal_cursor=main_menu_level[2][1][1];
#endregion
//============================================================
//creator intro
//============================================================
#region
if(main_menu_level[0][0])and(!showed_intro){
	can_use_menu=false;
	if(timer[0]<=2*game_get_speed(gamespeed_fps)){
		timer[0]++;
	}else{
		if(!show_creator_logo){
			repeat creator_num{
				if(!time_logo[current_logo][1]){
					if(creator_logo_alpha[current_logo]<=1){
						creator_logo_alpha[current_logo]+=.025;
					}else{
						if(current_logo!=0){
							time_logo[current_logo][0]++;
							if(time_logo[current_logo][0]>=6*game_get_speed(gamespeed_fps)){
								time_logo[current_logo][1]=true;
							}
						}else{
							if(!audio_is_playing(sfx_000))and(!audio_played){
								audio_play_sound(sfx_000,0,false);
								audio_played=true;
							}
							time_logo[current_logo][0]++;
							if(time_logo[current_logo][0]>=12*game_get_speed(gamespeed_fps)){
								time_logo[current_logo][1]=true;
							}
						}
					}
				}else{
					if(creator_logo_alpha[current_logo]>=0){
						creator_logo_alpha[current_logo]-=.025;
					
					}else{
						can_skip_creator_logo=true;
						if(can_skip_creator_logo){
							if(current_logo<2){
								current_logo++;
								can_skip_creator_logo=false;
							}else{show_creator_logo=true}
						}
					}
				}
			}
		}else{
			show_creator_logo=true;
			main_menu_level[1][0]=true;
			main_menu_index=2;
			showed_intro=true;
		}
	}
}
#endregion
//============================================================
//setting the options and game start
//============================================================
#region
if(main_menu_level[1][0])and((!global.game_start)and(!global.game_load)and(!global.game_end)){
#region setting the options
	if(bg_alpha_1>=0){
		bg_alpha_1-=.0025;
	}else{
		if(!audio_is_playing(bgm_000)) audio_play_sound(bgm_000,1,true);
		menu_left_border=lerp(menu_left_border,(global.cw)-(global.cw/3),.025);
		if(timer[3]<=4*game_get_speed(gamespeed_fps)){
			timer[3]++;
			can_use_menu=false;
		}else{
			can_use_menu=true;
		}
		if(timer[1]<=1*game_get_speed(gamespeed_fps)){
			timer[1]++;
		}else{
			var i=0,_ok=false; repeat main_menu_size{
				if(timer[2][i]<=1*game_get_speed(gamespeed_fps)){
					_ok=false
					timer[2][i]++;
				}else{
					if(!can_use_menu){
						main_menu_options[i][1]=lerp(main_menu_options[i][1],menu_left_border+((global.cw/6)),.15);
					}else{
						if(principal_cursor==i){
							main_menu_options[i][1]=lerp(main_menu_options[i][1],(menu_left_border+((global.cw/6)))-16,.15);
						}else{
							main_menu_options[i][1]=lerp(main_menu_options[i][1],menu_left_border+((global.cw/6)),.15);
						}
					}
					_ok=true;
				}
				if(_ok) i++;
			}
		}
		
	}
#endregion
}else{
#region starting the game
	if(main_menu_level[3][0]){
		can_use_menu=false;
		audio_sound_gain(bgm_000,1-bg_alpha_1,0);
	}
	
	if(bg_alpha_1<=1){
		bg_alpha_1+=.005;
	}else{
		switch main_menu_options[principal_cursor][3]{
			case menu_action.start:
			case menu_action.load:
				if(main_menu_level[3][0]){
					//instance_destroy();
					audio_stop_sound(bgm_000);
					if(!instance_exists(o_cutscene)){
						if(global.game_start){scr_cutscene_create(cutscene_start);}
						if(global.game_load){scr_cutscene_create(cutscene_load);}
					}
				}
				break;
			case menu_action.quit:
				game_end();
				break;
		}
	}
#endregion
}
#endregion
//============================================================
//options functions
//============================================================
#region
if(main_menu_level[2][0]){
	switch main_menu_options[principal_cursor][3]{
		case menu_action.start:
		case menu_action.load:
			use_config=false;
			if(bg_alpha_2<=.5){bg_alpha_2+=.025}
			yy_slot=lerp(yy_slot,0,.15);
			if(main_menu_level[3][0]){
				yy_confirm=lerp(yy_confirm,0,.15);
				if(bg_alpha_3<=.5){bg_alpha_3+=.025}
			}else{
				yy_confirm=lerp(yy_confirm,-global.ch,.15);
				if(bg_alpha_3>=0){bg_alpha_3-=.025}
			}
			global.save_fle="save_"+string(main_menu_level[3][1][1])+".dat";
			main_menu_level[3][3]=menu_side_type.vertical;
			break;
		case menu_action.config:
			use_config=true;
			xx_settings_box=lerp(xx_settings_box,0,.15);
			main_menu_level[3][3]=menu_side_type.both;
			main_menu_level[3][4]=menu_end_type.lock;
			break;
		case menu_action.quit:
			use_config=false;
			global.game_end=true;
			break;
	}
}else{
	menu_next_level=true;
	yy_slot=lerp(yy_slot,-global.ch,.15);
	if(bg_alpha_2>=0){bg_alpha_2-=.025}
	yy_confirm=lerp(yy_confirm,-global.ch,.15);
	if(bg_alpha_3>=0){bg_alpha_3-=.025}
	xx_settings_box=lerp(xx_settings_box,global.cw+sprite_get_width(s_hud_main_menu_border),.15);
}
#endregion
//============================================================
//confirm box
//============================================================
#region
if(main_menu_level[4][0]){
	switch main_menu_level[4][1][0]{
		case 0:
			switch main_menu_options[principal_cursor][3]{
				case menu_action.start: global.game_start=true; can_use_menu=false; break;
				case menu_action.load: if(file_exists(global.save_fle)){global.game_load=true; can_use_menu=false;}else{
					main_menu_level[4][0]=false;
					main_menu_level[3][0]=false;
					main_menu_index=3;
				}
				break;
			}
			break;
		case 1:
			main_menu_level[4][0]=false;
			main_menu_level[3][0]=false;
			main_menu_index=3;
			break;
	}
}
#endregion