if(!audio_is_playing(audio_to_play)){
	switch audio_group{
		case audio_type.bgm: 
			global.current_bgm=audio_to_play; 
			audio_inst_bgm=audio_play_sound(audio_to_play,4,audio_set_loop);
			audio_sound_gain(audio_inst_bgm,0,0);
			
			break;
		case audio_type.bgs: 
			global.current_bgs=audio_to_play; 
			audio_inst_bgs=audio_play_sound(audio_to_play,5,audio_set_loop);
			audio_sound_gain(audio_inst_bgs,0,0);
			
			break;
		case audio_type.sfx: 
			audio_inst_sfx=audio_play_sound(audio_to_play,10,audio_set_loop);
			audio_sound_gain(audio_inst_sfx,0,0);
			audio_sound_gain(audio_inst_sfx,audio_set_vol,audio_set_vol_time);
			break;
	}
}
audio_sound_gain(audio_inst_bgm,audio_set_vol,audio_set_vol_time);
audio_sound_gain(audio_inst_bgs,audio_set_vol,audio_set_vol_time);
