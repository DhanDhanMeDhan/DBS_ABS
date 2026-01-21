if(quick_button_start){
	if(!quick_button_end){
		switch quicktime_event_type{
			case quick_type.mult_press:
				#region
				#endregion
				break;
			case quick_type.spam_press:
				#region
				if(quick_button==-1){
					button_index=floor(random_range(0,9));
					quick_button=quick_button_list[button_index];
				}else{
					//pressing the button
					if(keyboard_check_pressed(quick_button)){
						quick_button_current++;
						var _talk_audio=audio_play_sound(sfx_022,10,false);
						var _ptch=choose(.8,.9,1);
						audio_sound_pitch(_talk_audio,_ptch);
						audio_sound_gain(_talk_audio,0,0);
						audio_sound_gain(_talk_audio,1,0);
					}
			
					//setting the limit
					timer++;
					if(timer>=quick_button_timer*60){
						quick_button_end=true;
					}
				}
				#endregion
				break;
		}
	}else{
		if(quick_button_current>=quick_button_limit){
			t_cutscene_play=cutscene_1;
		}else{
			t_cutscene_play=cutscene_2;
		}
	}
}

if(t_cutscene_play!=-1){
	if(!instance_exists(o_cutscene)){
		scr_cutscene_create(t_cutscene_play);
		instance_destroy();
	}
}