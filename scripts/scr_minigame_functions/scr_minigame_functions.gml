function scr_minigame_functions(_game,_ww,_wh){
	if(global.pause)or(!window_has_focus()){
		image_speed=0;
	}else{
		//=========================================================
		#region setting things
		var _title_bgm,_game_bgm,_winner_bgm,_inputs=array_create(4)/*0-confirm,1-horizontal,2-vertical*/;
		switch _game{
			case minigame_set.love_letter: _title_bgm=bgm_014; _game_bgm=bgm_012; break;
			case minigame_set.freeze: _title_bgm=bgm_014; _game_bgm=bgm_012; break;
		}
		switch minigame_score_index{
			case 0:
			case 1: _winner_bgm=bgm_013; break;
			case 2:
			case 3:
			case 4: _winner_bgm=bgm_009; break;
			case 5:
			case 6: _winner_bgm=bgm_011; break;
		}
		#endregion
		//=========================================================
		#region menu
		if(minigame_level[0][0])and(!minigame_level[1][0]){
			if(global.input_confirm){
				minigame_level[2][1]=0
				minigame_level[1][0]=true;
				minigame_spr_time=60;
				audio_play_sound(sfx_010,10,false);
			}
		
			if(!audio_is_playing(_title_bgm)){
				audio_play_sound(_title_bgm,10,true);
			}
		}
		#endregion
		#region mini games
		if(minigame_level[1][0])and(!minigame_level[2][0])and(minigame_level[3][1]<-280){
			if(minigame_level[1][1]>0){
				minigame_level[1][1]-=4;
			}else{
				if(audio_is_playing(_title_bgm)) audio_stop_sound(_title_bgm);
				if(!audio_is_playing(_game_bgm)) audio_play_sound(_game_bgm,10,true);
				switch _game{
					case minigame_set.love_letter:
					#region love letter
						if(minigame_level[2][1]>9){
							minigame_end_alp_1=1;
							minigame_level[3][2]=-288;
							minigame_level[2][0]=true;
							minigame_level[3][1]=0;
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
						#endregion
						break;
					case minigame_set.freeze:
					#region freeze
					var _spd;
					if(freeze_round==1){
						_spd=2.5;
						freeze_p1_stop_s=s_hud_minigame_freeze_bunbun_stop;
						freeze_p1_idle_s=s_hud_minigame_freeze_bunbun_idle_1;
						freeze_p1_walk_s=s_hud_minigame_freeze_bunbun_walk;
						freeze_p2_stop_s=s_hud_minigame_freeze_vladmir_idle_1;
						freeze_p2_idle_s=s_hud_minigame_freeze_vladmir_idle_1;
						freeze_p2_walk_s=s_hud_minigame_freeze_vladmir_walk;
					}else{
						_spd=3.2;
						freeze_p1_stop_s=s_hud_minigame_freeze_todd_stop;
						freeze_p1_idle_s=s_hud_minigame_freeze_todd_idle_1;
						freeze_p1_walk_s=s_hud_minigame_freeze_todd_walk;
						freeze_p2_stop_s=s_hud_minigame_freeze_gleb_stop;
						freeze_p2_idle_s=s_hud_minigame_freeze_gleb_idle_1;
						freeze_p2_walk_s=s_hud_minigame_freeze_gleb_walk;
					}
					if(minigame_level[3][1]<-280)and(minigame_level[1][1]<=0){
						if(counter>2){
							#region player 
							freeze_p1_s=freeze_p1_idle_s;
							freeze_p2_s=freeze_p2_idle_s;
							#endregion
							timer++
							if(timer>120){
								counter++;
								timer=0;
							}
						}else if(freeze_p1_x>0)and(freeze_p2_x>0){
							var _timer;
							if(minigame_combo==1){_timer=13;}else{_timer=9}
							if(keyboard_check_pressed(ord("X"))){
								freeze_walk_timer=_timer;
								minigame_combo_count++;
								if(freeze_stop){
									game_over=true;
									minigame_score=0;
									minigame_end_alp_1=1;
									minigame_level[3][2]=-288;
									minigame_level[2][0]=true;
									minigame_level[3][1]=0;
								}
							}
							if(freeze_walk_timer>0){
								freeze_walk_timer--;
								freeze_walk=true;
							}else{
								freeze_walk=false;
							}
							if(freeze_walk){
								if(minigame_combo_count>10){minigame_combo=2;}
								minigame_score+=.07*minigame_combo;
								freeze_p1_s=freeze_p1_walk_s;
								if(freeze_round==1){freeze_p1_x-=_spd-.2;
								}else{freeze_p1_x-=_spd+.1;}
								freeze_bg-=_spd-.1;
								var _s_bg_w_1=sprite_get_width(s_hud_minigame_freeze_bg_2);
								if(freeze_bg<-_s_bg_w_1) freeze_bg=0;
							}else{
								freeze_p1_s=freeze_p1_stop_s;
								minigame_combo_count=0;
								minigame_combo=1;
							}
							timer++;
							if(timer>=freeze_limit*60){
								freeze_limit=choose(3,3.5,4);
								freeze_start=!freeze_start;
								timer=0;
							}
					
					
							#region player 
						
						
							#endregion
							#region player 
						
						
							#endregion
							if(!freeze_start){
								image_index=0;
								freeze_paxton_s=s_hud_minigame_freeze_paxton_idle_1;
								freeze_p2_s=freeze_p2_walk_s;
								freeze_p2_x-=_spd;
								freeze_stop=false;
							}else{
								freeze_p2_s=freeze_p2_stop_s;
								var _s_num=sprite_get_number(s_hud_minigame_freeze_paxton_stop)-1;
								image_speed=.23;
								if(image_index<_s_num){
									freeze_paxton_s=s_hud_minigame_freeze_paxton_stop;
								}else{
									freeze_stop=true;
									freeze_paxton_s=s_hud_minigame_freeze_paxton_idle_2;
								}
							}
						}else{
							if(freeze_p2_x<freeze_p1_x){minigame_score=0;}
							game_over=false;
							minigame_end_alp_1=1;
							minigame_level[3][2]=-288;
							minigame_level[2][0]=true;
							minigame_level[3][1]=0;
						}
					}
					#endregion
						break;
				}
			}
		}
		#endregion
		#region score
		if(minigame_level[2][0]){
			if(audio_is_playing(_game_bgm)) audio_stop_sound(_game_bgm);
			var _spr=s_hud_minigame_score_letter,_s_h=sprite_get_height(s_hud_minigame_score_letter);
			if(minigame_level[3][2]>((_wh/2)-(_s_h/2))-10){
				if(audio_is_playing(sfx_012)){
					if(minigame_score>56){
						audio_play_sound(sfx_013,10,false);
					}else{
						audio_play_sound(sfx_014,10,false);
					}
					audio_stop_sound(sfx_012);
				}
			
				if(!audio_is_playing(_winner_bgm)){
					audio_play_sound(_winner_bgm,10,true);
				}
				//if(minigame_score>84){if(!audio_is_playing(bgm_013)){audio_play_sound(bgm_013,10,true);}}
				//else if(minigame_score<84)and(minigame_score>42){if(!audio_is_playing(bgm_009)){audio_play_sound(bgm_009,10,true);}}
				//else{if(!audio_is_playing(bgm_011)){audio_play_sound(bgm_011,10,true);}}
			}else{
				if(!audio_is_playing(sfx_012)) audio_play_sound(sfx_012,10,true);
			}
			minigame_spr_time++
			if(minigame_spr_time>1*60){	
				if(minigame_end_alp_1>=0){
					minigame_end_alp_1-=.015;
				}else{
					if(minigame_level[3][2]<((_wh/2)-(_s_h/2))){
						minigame_level[3][2]+=4;
						if(minigame_level[3][2]>((_wh/2)-(_s_h/2))-10){
							minigame_end_alp_2=1;
							minigame_cursor_x=0;
						}
					}else{
						if(minigame_end_alp_2>=0){
							minigame_end_alp_2-=.015;
						}else{
							if(minigame_score>56){
								minigame_cursor_x+=(global.input_select_right-global.input_select_left);
								minigame_cursor_x=clamp(minigame_cursor_x,0,1);
								if(minigame_cursor_x==0){
									if(global.input_confirm){
										event_perform(ev_other,ev_user0);
										minigame_spr_time=60;
										minigame_level[2][1]=0;
										minigame_level[3][0]=false;
										minigame_level[2][0]=false;
									}
								}else{
									if(global.input_confirm){
										minigame_timer[0]=0;
										minigame_timer[1]=0;
										minigame_level[3][0]=true;
										minigame_seting=true;
										minigame_start=false;
										temp=false;
										if(audio_is_playing(_winner_bgm)){
											audio_play_sound(_winner_bgm,10,true);
											audio_sound_gain(_winner_bgm,0,1000);
										}
									}
								}
							}else{
								if(_game==minigame_set.freeze){
									freeze_p1_x=freeze_run_limit;
									freeze_p2_x=freeze_run_limit;
									freeze_bg=0;
									counter=-1;
									timer=0;
									freeze_start=false;
									freeze_stop=false;
									if(freeze_round==1)and(!game_over){
										freeze_p1_stop_s=s_hud_minigame_freeze_todd_stop;
										freeze_p1_idle_s=s_hud_minigame_freeze_todd_idle_1;
										freeze_p1_walk_s=s_hud_minigame_freeze_todd_walk;
										freeze_p2_stop_s=s_hud_minigame_freeze_gleb_idle_1;
										freeze_p2_idle_s=s_hud_minigame_freeze_gleb_stop;
										freeze_p2_walk_s=s_hud_minigame_freeze_gleb_walk;
										freeze_round=2;
									}
								}
								if(global.input_confirm){
									event_perform(ev_other,ev_user0);
									minigame_spr_time=60;
									minigame_level[2][1]=0;
									minigame_level[3][0]=false;
									minigame_level[2][0]=false;
									game_over=false;
								}
							}
						}
					}
				}
			}
		}else{
			if(minigame_level[3][1]>-288){
				//minigame_level[3][2]-=4;
				minigame_level[3][1]-=4;
				if(minigame_level[3][1]<-280){
					minigame_score=0;
					audio_stop_sound(_winner_bgm);
					audio_play_sound(_game_bgm,10,true);
				}
			}
		}
		#endregion
	}
}