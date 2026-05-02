//============================================================
//setting the menu setting
//============================================================
#region
if(can_use_menu)and(global.pause){
	var _cursor_x=pause_menu_level[pause_menu_index][1][0],_cursor_y=pause_menu_level[pause_menu_index][1][1];
	var _xx_min=pause_menu_level[pause_menu_index][2][0][0],_xx_max=pause_menu_level[pause_menu_index][2][0][1];
	var _yy_min=pause_menu_level[pause_menu_index][2][1][0],_yy_max=pause_menu_level[pause_menu_index][2][1][1];
	var _type_side=pause_menu_level[pause_menu_index][3],_type_end=pause_menu_level[pause_menu_index][4];
	var _type_move=pause_menu_level[pause_menu_index][5];
	var _menu_layers=pause_menu_level[pause_menu_index][0];

	var _menu_results=scr_menu_config(_cursor_x,_cursor_y,_xx_min,_xx_max,_yy_min,_yy_max,_type_move,_type_side,_type_end,pause_menu_level,pause_menu_index,_menu_layers,menu_next_level,0);

	if(global.input_confirm){
		var _array_menu_lenght=array_length(pause_menu_level);
		if(pause_menu_index<_array_menu_lenght){
			pause_menu_level[pause_menu_index+1][1]=[0,0];
		}
	}
	pause_menu_level[pause_menu_index][1][0]=_menu_results[0];
	pause_menu_level[pause_menu_index][1][1]=_menu_results[1];
	cursor_x=pause_menu_level[pause_menu_index][1][0];
	cursor_y=pause_menu_level[pause_menu_index][1][1];
	if(global.input_cancel)and(!use_config){
		if(pause_menu_index>0){
			pause_menu_level[pause_menu_index-1][0]=false;
		}
		if(!pause_menu_level[0][0])and(pause_menu_index==0) global.pause=false;
	}
	pause_menu_level[pause_menu_index][0]=_menu_results[2];
	pause_menu_index=_menu_results[3];
}
principal_cursor=pause_menu_level[0][1][1];
#endregion
//============================================================
//setting the audio and the graphic
//============================================================
#region
var _pause_volume=(global.volume_master/2);
var _spr_border_ww=sprite_get_width(bg_border);
var _s_portrait_xx_offset=8;
	
var _s_portrait_ww=sprite_get_width(s_hud_pause_portrait);
var _s_portrait_hh=sprite_get_height(s_hud_pause_portrait);
var _s_portrait_yy=(global.ch-_s_portrait_hh)/2,_s_portrait_xx=(_spr_border_ww+8)+_s_portrait_xx_offset;
var _main_bg_ww=sprite_get_width(s_hud_pause_main_bg);
if(global.pause){
	//setting the audio
	if(!exit_question){
		if(set_pause_volume>=_pause_volume) set_pause_volume-=_pause_volume/10;}
	else{
		if(pause_menu_level[1][0]){set_pause_volume=_pause_volume-bg_alpha_6;}
	}
	//setting the graphic
	//bg
	bg_left=lerp(bg_left,_spr_border_ww+4,.15);
	if(tx_alpha_1<=1) tx_alpha_1+=.05;
	//display
	#region
	timer_portrair++;
	if(timer_portrair>=7){
		timer_portrair=0;
		current_portrait++;
		current_portrait=clamp(current_portrait,0,portrait_num-1);
	}
	if(!portrait_yy[current_portrait][1]) portrait_yy[current_portrait][1]=true;
	main_bg_xx=lerp(main_bg_xx,global.cw-((_main_bg_ww/2)+8),.1);
	#endregion
}else{
	main_bg_xx=lerp(main_bg_xx,global.cw+(_main_bg_ww*2),.1);
	if(set_pause_volume<=global.volume_master) set_pause_volume+=_pause_volume/10;
	bg_left=lerp(bg_left,global.cw+_spr_border_ww,.15);
	if(bg_left>=(global.cw+_spr_border_ww)-2){
		instance_destroy()
	}
}
set_pause_volume=clamp(set_pause_volume,_pause_volume,global.volume_master);
audio_group_set_gain(audio_BGM,set_pause_volume,0);
audio_group_set_gain(audio_BGS,set_pause_volume,0);
audio_group_set_gain(audio_SFX,set_pause_volume,0);
#endregion
//============================================================
//menu options
//============================================================
#region
var _c;
var i=0,_left=0; repeat pause_option_size+1{
	if(principal_cursor==i){
		_c=make_color_rgb(250,214,184);
	}else{
		_c=make_color_rgb(232,106,115);
	}
	pause_menu_options[i][1]=main_bg_xx-_left;
	pause_menu_options[i][2]=_c;
	i++;
}
var _item_y_offset=global.ch/16;
var _spr_config_h=sprite_get_width(s_hud_meal_side_details);
if(pause_menu_level[0][0])and(global.pause){
	if(bg_alpha_1<=.5) bg_alpha_1+=.05;
	var _menu_action=pause_menu_options[principal_cursor][3];
	switch _menu_action{
		//============================================================
		#region
		case pause_menu_action.item:
			pause_menu_level[1][3]=menu_side_type.vertical;
			pause_menu_level[1][4]=menu_end_type.lock;
			pause_menu_level[1][2][1][1]=array_length(global.inventory);
			var _hh=sprite_get_height(s_hud_pause_inventory_bg_1)
			item_list_bg_ag=lerp(item_list_bg_ag,2,.1);
			item_list_bg_yy=lerp(item_list_bg_yy,(global.ch/2)-((_hh/2)+16),.1);
			if(item_display_a<=1)item_display_a+=.05;
			item_display_y1=lerp(item_display_y1,(global.ch/2)-_item_y_offset,.15);
			item_display_y2=lerp(item_display_y2,((global.ch/2)+global.ch/3)-_item_y_offset,.15);
			use_itens=true;
			break;
		#endregion
		//============================================================
		#region
		case pause_menu_action.config:
			var _padding=4;
			pause_menu_level[1][3]=menu_side_type.vertical;
			pause_menu_level[1][4]=menu_end_type.lock;
			config_detail[0]=lerp(config_detail[0],_padding+_spr_config_h,.15);
			config_detail[1]=lerp(config_detail[1],global.ch-(_padding+_spr_config_h),.15);
			use_config=true;
			if(config_alp<=1){config_alp+=.05;}
			
			if(pause_menu_level[1][1][1]>7){
				menu_next_level=true;
			}else{
				menu_next_level=false;
			}
			if(global.input_cancel)and(!change_button){
				menu_next_level=true;
				pause_menu_level[1][1][1]=0;
				pause_menu_index=0;
				pause_menu_level[1][0]=false;
				pause_menu_level[0][0]=false;
			}
			break;
		#endregion
		//============================================================
		#region
		case pause_menu_action.map:
			pause_menu_level[1][3]=menu_side_type.vertical;
			if(map_alp<=1){map_alp+=.05}
			var _ww=(global.cw/2)-(sprite_get_width(s_hud_pause_map_bg_1_1)/2);
			map_1_yy=lerp(map_1_yy,(global.ch/2),.15);
			map_1_xx=global.cw/2;
			map_2_yy=global.ch/2;
			map_2_xx=lerp(map_2_xx,_ww/2,.15);
			var _offset=16;
			pause_menu_level[1][2][1][1]=array_length(map_pos_list)-1;
			map_x_pos=lerp(map_x_pos,map_pos_list[pause_menu_level[1][1][1]][0],.15);
			map_y_pos=lerp(map_y_pos,map_pos_list[pause_menu_level[1][1][1]][1],.15);
			
			var xx=sprite_get_width(s_hud_pause_map_bg_3);
			map_3_xx=lerp(map_3_xx,(global.cw-(_ww/2)),.15);
			
			menu_next_level=false;
			if(global.input_cancel){
				menu_next_level=true;
				pause_menu_level[1][1][1]=0;
				pause_menu_index=0;
				pause_menu_level[1][0]=false;
				pause_menu_level[0][0]=false;
			}
			break;
		#endregion
		//============================================================
		#region
		case pause_menu_action.quit:
			exit_question=true;
			pause_menu_level[1][3]=menu_side_type.horizontal;
			pause_menu_level[1][2][0][1]=1;
			if(pause_menu_level[1][0]){
				switch pause_menu_level[1][1][0]{
					case 0:
						can_use_menu=false;
						if(bg_alpha_6<=1){
							bg_alpha_6+=.005;
							music_vol+=.005;
						}else{
							instance_destroy(o_people);
							instance_destroy(o_cutscene);
							room_goto(rm_main_menu);
							if(array_length(global.party)>1){
								o_ending_control.current_ending=end_list.colapse1;
							}else{
								o_ending_control.current_ending=end_list.colapse2;
							}
							o_camera.shake_permit=false;
							o_camera.can_pause=false;
							global.player=-1;
							global.party=[
								[o_bunbun,0,s_bunbun_casual_walk_1_down],
							];
							global.game_start=false;
							global.game_load=false;
							global.game_end=false;
							global.dinner=0;
							global.dinner_moment=0;
							global.day=0;
							global.colored=false;
							global.color=1;
							global.event=[
								//dia 0
								[
									progress.non_complete, //café
									progress.non_avaliable,//bricar no parque
									progress.non_avaliable,//bricar de esconde esconde
									progress.non_avaliable,//ajudar a mamãe com os temperos
									progress.non_avaliable,//ajudar a hellen com as cartas
									progress.non_avaliable,//ajudar petter com o antony
									progress.non_avaliable,//ir para a janta
									progress.non_avaliable,//ir para a cama
									progress.non_avaliable,//ir para o porão
									progress.non_avaliable,//ir para o porão
								]
							];
							global.story_moment=story_tell.bunbun_find;
							global.story_create=false;
							global.time=time.day;
							global.place=place.interior;
							if(!instance_exists(o_main_menu)){
								audio_stop_all();
								instance_create_layer(o_camera.x,o_camera.y,o_camera.layer,o_main_menu);
								bg_alpha_6=0;
								instance_destroy(o_pause);
							}
						}
						break;
					case 1:
						exit_question=false;
						
						pause_menu_index=0;
						pause_menu_level[1][0]=false;
						pause_menu_level[0][0]=false;
						break;
				}
			}
			break;
		#endregion
	}
}else{
	#region
	pause_menu_index=0;
	menu_next_level=true;
	exit_question=false;
	use_config=false;
	if(item_display_a>=0)item_display_a-=.05;
	item_display_y1=lerp(item_display_y1,(global.ch/2)+(global.ch/3),.15);
	item_display_y2=lerp(item_display_y2,global.ch/2,.15);
	if(bg_alpha_1>=0) bg_alpha_1-=.05;
	if(config_alp>=0){config_alp-=.05}else{use_config=false;}
	item_list_bg_ag=lerp(item_list_bg_ag,180,.1);
	item_list_bg_yy=lerp(item_list_bg_yy,-10,.1);
	if(item_list_bg_yy<=-8){use_itens=false;}
	config_detail[0]=lerp(config_detail[0],-_spr_config_h,.15);
	config_detail[1]=lerp(config_detail[1],global.ch+_spr_config_h,.15);
	if(map_alp>=0){map_alp-=.05}
	var _ww=(global.cw/2)-(sprite_get_width(s_hud_pause_map_bg_1_1)/2);
	var yy=sprite_get_height(s_hud_pause_map_bg_1_1);
	map_1_yy=lerp(map_1_yy,(global.ch/2)+yy,.15);
	var xx=sprite_get_width(s_hud_pause_map_bg_2);
	map_2_xx=lerp(map_2_xx,(_ww/2)-xx,.15);
	var xx=sprite_get_width(s_hud_pause_map_bg_3);
	map_1_xx=global.cw/2;
	map_2_yy=global.ch/2;
	map_3_xx=lerp(map_3_xx,(global.cw-(_ww/2))+xx,.15);
	#endregion
}
#endregion