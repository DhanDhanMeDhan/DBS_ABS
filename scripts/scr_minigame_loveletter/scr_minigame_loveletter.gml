function scr_minigame_loveletter(_ww,_wh){
	//===============================================================
	#region
	
	#endregion
	//===============================================================
	var _c=c_white,_spr=s_hud_minigame_score_letter;
	
	if(!minigame_level[2][0]){
		image_speed=.05
		draw_sprite_ext(s_hud_minigame_loveletter_bg,minigame_sbg,0,0,1,1,0,c_white,1);
		draw_sprite_ext(minigame_spr,image_index,317,16,1,1,0,c_white,1);
	}
	//===============================================================
	#region
	scr_inputs();
	if(minigame_level[0][0])and(!minigame_level[1][0]){
		if(global.input_confirm){
			minigame_level[2][1]=0
			minigame_level[1][0]=true;
			minigame_spr_time=60;
			audio_play_sound(sfx_010,10,false);
		}
		if(!audio_is_playing(bgm_012)){
			audio_play_sound(bgm_012,10,true);
		}
	}
	if(minigame_level[1][0])and(!minigame_level[2][0]){
		if(audio_is_playing(bgm_012))or(audio_is_playing(bgm_009))or(audio_is_playing(bgm_011))or(audio_is_playing(bgm_013)){
			audio_stop_sound(bgm_009);
			audio_stop_sound(bgm_011);
			audio_stop_sound(bgm_012);
			audio_stop_sound(bgm_013);
		}else{
			if(!audio_is_playing(bgm_010)){
				audio_play_sound(bgm_010,10,true);
			}
		}
		if(minigame_level[1][1]>0){
			minigame_level[1][1]-=4
		}else{
			
			minigame_spr_time++
			if(minigame_spr_time<.7*60){	
				switch minigame_point{
						case -5: minigame_spr=s_hud_minigame_loveletter_wiwi_3; minigame_sbg=2; if(!audio_is_playing(sfx_011)) audio_play_sound(sfx_011,10,false); break;
						case 5: minigame_spr=s_hud_minigame_loveletter_wiwi_2; minigame_sbg=1; if(!audio_is_playing(sfx_009)) audio_play_sound(sfx_009,10,false); break;
						case 10: minigame_spr=s_hud_minigame_loveletter_wiwi_2; minigame_sbg=1; if(!audio_is_playing(sfx_009)) audio_play_sound(sfx_009,10,false); break;
						default: minigame_spr=s_hud_minigame_loveletter_wiwi_1; minigame_sbg=0; break;
					}
			}else{
				minigame_point=_words[minigame_level[2][1]][minigame_cursor_x][minigame_cursor_y][1];
				if(global.input_confirm){
					minigame_spr_time=0;
					minigame_score+=minigame_point;
					minigame_level[2][1]++;
					if(minigame_level[2][1]==9){
					
					}
				}
				var _xaxis=(global.input_select_right-global.input_select_left);
				var _yaxis=(global.input_select_down-global.input_select_up);
				if(_yaxis!=0)or(_xaxis!=0){audio_play_sound(sfx_008,10,false);}
				minigame_cursor_x+=_xaxis;
				minigame_cursor_y+=_yaxis;
				minigame_cursor_x=clamp(minigame_cursor_x,0,1);
				minigame_cursor_y=clamp(minigame_cursor_y,0,5);
				minigame_spr=s_hud_minigame_loveletter_wiwi_1; minigame_sbg=0;
			}
		}
		if(minigame_level[2][1]<10){
			var _xx=80,_yy=61;
			draw_sprite_ext(s_hud_minigame_loveletter_selector,0,_xx+(120*minigame_cursor_x),_yy+1+(32*minigame_cursor_y),1,1,0,c_white,1);
			draw_set_font(fnt_carte);
			draw_set_valign(fa_bottom);
			draw_set_halign(fa_center);
			var i=0; repeat 2{
				var k=0; repeat 6{
					draw_text_color(_xx+(120*i),_yy+(32*(k)),string(_words[minigame_level[2][1]][i][k][0]),c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
					k++;
				}
				i++;
			}
		}else{
			minigame_end_alp_1=1;
			minigame_level[3][2]=0;
			minigame_level[2][0]=true;
			minigame_level[3][1]=-288;
		}	
		//draw_text_color(_xx,_yy-16,string(minigame_score),c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
	}
	var _s_h=sprite_get_height(_spr);
	if(minigame_level[2][0]){
		if(audio_is_playing(bgm_010)){audio_stop_sound(bgm_010);}
		if(minigame_score>98){minigame_score_index=0;}
		else if(minigame_score>84)and(minigame_score<98){minigame_score_index=1;}
		else if(minigame_score>=70)and(minigame_score<84){minigame_score_index=2;}
		else if(minigame_score>56)and(minigame_score<70){minigame_score_index=3;}
		else if(minigame_score>42)and(minigame_score<56){minigame_score_index=4;}
		else if(minigame_score>28)and(minigame_score<42){minigame_score_index=5;}
		else if(minigame_score<28){minigame_score_index=6;}
		if(minigame_level[3][1]>((_wh/2)-(_s_h/2))-10){
			if(audio_is_playing(sfx_012)){
				if(minigame_score>56){
					audio_play_sound(sfx_013,10,false);
				}else{
					audio_play_sound(sfx_014,10,false);
				}
				audio_stop_sound(sfx_012);
			}
			if(minigame_score>84){if(!audio_is_playing(bgm_013)){audio_play_sound(bgm_013,10,true);}}
			else if(minigame_score<84)and(minigame_score>42){if(!audio_is_playing(bgm_009)){audio_play_sound(bgm_009,10,true);}}
			else{if(!audio_is_playing(bgm_011)){audio_play_sound(bgm_011,10,true);}}
		}else{
			if(!audio_is_playing(sfx_012)) audio_play_sound(sfx_012,10,true);
		}
	}
	draw_sprite_stretched_ext(s_hud_minigame_loveletter_end_bg,3,0,minigame_level[3][2],_ww,_wh,_c,1);
	draw_sprite_ext(_spr,minigame_score_index,24,minigame_level[3][2]+minigame_level[3][1],1,1,0,_c,1);
	if(minigame_level[2][0]){
		
		minigame_spr_time++
		if(minigame_spr_time>1*60){	
			if(minigame_end_alp_1>=0){
				minigame_end_alp_1-=.015;
			}else{
				if(minigame_level[3][1]<((_wh/2)-(_s_h/2))){
					minigame_level[3][1]+=4;
					if(minigame_level[3][1]>((_wh/2)-(_s_h/2))-10){minigame_end_alp_2=1;minigame_cursor_x=0;}
				}else{
					if(minigame_end_alp_2>=0){minigame_end_alp_2-=.015;}
					draw_set_halign(fa_left);
					draw_set_valign(fa_middle);
					var _yy=minigame_level[3][2]+((_wh/2)+(_wh/6));
					var _points_str=["Pontos","Puntos","Score"];
					var _try_str=["Tentar de novo?","¿Instentar de Nuevo?","Try Again?"];
					var _scr_str=string(_points_str[global.lang])+":................ "+string(minigame_score);
					var _scr_ww=string_width(_scr_str);
					draw_text_color(_ww/2,_yy,_scr_str,c_black,c_black,c_black,c_black,1);
					draw_set_halign(fa_center);
					draw_set_valign(fa_middle);
					if(minigame_score>56){
						var _try_str=["Tentar de novo?","¿Instentar de Nuevo?","Try Again?"];
						draw_text_color((_ww/2)+(_scr_ww/2),_yy+16,string(_try_str[global.lang]),c_black,c_black,c_black,c_black,1);
						minigame_cursor_x+=(global.input_select_right-global.input_select_left);
						minigame_cursor_x=clamp(minigame_cursor_x,0,1);
						var _c1,_c2;
						if(minigame_cursor_x==0){
							_c1=c_white;
							_c2=c_black;
							if(global.input_confirm){
								event_perform(ev_other,ev_user0);
								minigame_spr_time=60;
								minigame_score=0;
								minigame_level[2][1]=0;
								minigame_level[3][0]=false;
								minigame_level[2][0]=false;
							}
						}else{
							_c1=c_black;
							_c2=c_white;
							if(global.input_confirm){
								minigame_timer[0]=0;
								minigame_timer[1]=0;
								minigame_level[3][0]=true;
								minigame_seting=true;
								minigame_start=false;
								temp=false;
								if(audio_is_playing(bgm_011)){
									audio_play_sound(bgm_011,10,true);
									audio_sound_gain(bgm_011,0,1000);
								}
								if(audio_is_playing(bgm_012)){
									audio_play_sound(bgm_012,10,true);
									audio_sound_gain(bgm_012,0,1000);
								}
								if(audio_is_playing(bgm_013)){
									audio_play_sound(bgm_013,10,true);
									audio_sound_gain(bgm_013,0,1000);
								}
							}
						}
						draw_text_color(((_ww/2)+(_scr_ww/2))-32,_yy+32,"Yes",_c1,_c1,_c1,_c1,1);
						draw_text_color(((_ww/2)+(_scr_ww/2))+32,_yy+32,"No",_c2,_c2,_c2,_c2,1);
					}else{
						var _try_str=["Tentar de novo","¿Instentar de Nuevo","Try Again"];
						draw_text_color((_ww/2)+(_scr_ww/2),_yy+16,string(_try_str[global.lang]),c_black,c_black,c_black,c_black,1);
						if(global.input_confirm){
							event_perform(ev_other,ev_user0);
							minigame_spr_time=60;
							minigame_score=0;
							minigame_level[2][1]=0;
							minigame_level[3][0]=false;
							minigame_level[2][0]=false;
						}
					}
				}
			}
		}
	}else{
		if(minigame_level[3][2]>-288)minigame_level[3][2]-=4;
	}
	draw_sprite_stretched_ext(s_hud_pixel,0,0,0,_ww,_wh,_c,minigame_end_alp_1);
	draw_sprite_stretched_ext(s_hud_pixel,0,0,0,_ww,_wh,_c,minigame_end_alp_2);
	draw_sprite_ext(s_hud_minigame_loveletter_tl,0,0,minigame_level[1][1]-_wh,1,1,0,c_white,1);
	//draw_rectangle_color(0,0,_ww,minigame_level[1][1],c_white,c_white,c_white,c_white,false);
	//draw_text_color(_ww/2,minigame_level[1][1]-(_wh/2)+(_wh/6),"Start",c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
	#endregion
}