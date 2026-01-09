if(global.pause) exit;
if(keyboard_check_pressed(vk_tab)) minigame_start=!minigame_start
if(keyboard_check_pressed(vk_backspace)) minigame_seting=!minigame_seting;
if(minigame_level[3][0]){
	
	
	
}
var _frm=0,_curtain_num=sprite_get_number(s_hud_minigame_curtain)-1;
if(minigame_seting){
	if(minigame_start){
		minigame_timer[0]++;
		if(minigame_timer[0]<2.5*60){
			curtain_xx[0]=lerp(curtain_xx[0],global.cw/2,.05);
			curtain_xx[1]=lerp(curtain_xx[1],global.cw/2,.05);
		}else{
			if(curtain_open){
				if(curtain_frm>1){_frm=-.2}else{
					_frm=0;
					if(temp) minigame_seting=false;
				}
			}else{
				if(curtain_frm<_curtain_num){_frm=.2}
				else{
					_frm=0;
					minigame_timer[1]++;
					if(minigame_timer[1]>=1*60){
						curtain_open=true;
						minigame_draw_gui=true;
						save_room();
						room_goto(rm_minigame);
						temp=true;
					}
				}
			}
		}
	}else{
		if(curtain_open){
			if(curtain_frm<_curtain_num){_frm=.2}
			else{
				_frm=0;
				minigame_timer[1]++;
				if(minigame_timer[1]>=1*60){
					curtain_open=false;
					minigame_draw_gui=false;
					audio_stop_sound(bgm_011);
					audio_stop_sound(bgm_012);
					audio_stop_sound(bgm_013);
					if(!instance_exists(o_cutscene)){
						scr_cutscene_create(t_cutscene_play);
					}
				}
			}
		}else{
			if(curtain_frm>1){_frm=-.2}
			else{
				_frm=0;
				minigame_timer[0]++
				if(minigame_timer[0]<1*60){
					curtain_xx[0]=lerp(curtain_xx[0],global.cw,.05);
					curtain_xx[1]=lerp(curtain_xx[1],0,.05);
				}else{
					instance_destroy();
				}
			}
		}
	}
	curtain_frm+=_frm;
}else{
	minigame_timer[0]=0;
	minigame_timer[1]=0;
	if(minigame_start){minigame_level[0][0]=true;}else{minigame_level[0][0]=false;}
}

if(surface_exists(minigame_screen)){
	var _ww=surface_get_width(minigame_screen);
	var _wh=surface_get_height(minigame_screen);
	if(minigame_level[0][0]){
		if(minigame_bars[0][0]>0){minigame_bars[0][0]-=4; minigame_bars[0][1]=false;}else{minigame_bars[0][0]=0; minigame_bars[0][1]=true;}
		if(minigame_bars[1][0]<_wh){minigame_bars[1][0]+=4; minigame_bars[1][1]=false;}else{minigame_bars[1][0]=_wh; minigame_bars[1][1]=true;}
	}else{
		if(minigame_bars[0][0]<_wh/2){minigame_bars[0][0]+=4; minigame_bars[0][1]=false;}else{minigame_bars[0][0]=_wh/2; minigame_bars[0][1]=true;}
		if(minigame_bars[1][0]>_wh/2){minigame_bars[1][0]-=4; minigame_bars[1][1]=false;}else{minigame_bars[1][0]=_wh/2; minigame_bars[0][1]=true;}
	}
}