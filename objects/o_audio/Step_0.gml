if(!window_has_focus()){
	audio_pause_all()
}else{
	audio_master_gain(global.volume_master);
	if(audio_group_is_loaded(audio_BGM)){audio_group_set_gain(audio_BGM,global.volume_master*global.volume_bgm,0);}else{audio_group_load(audio_BGM);}
	if(audio_group_is_loaded(audio_BGS)){audio_group_set_gain(audio_BGS,global.volume_master*global.volume_bgs,0);}else{audio_group_load(audio_BGS);}
	if(audio_group_is_loaded(audio_SFX)){audio_group_set_gain(audio_SFX,global.volume_master*global.volume_sfx,0);}else{audio_group_load(audio_SFX);}
	audio_resume_all()
}

//if(audio_to_play!=-1){
//	if(!audio_is_playing(audio_to_play)){
//		switch audio_group{
//			case audio_type.bgm: 
//				global.current_bgm=audio_to_play; 
//				audio_inst_bgm=audio_play_sound(audio_to_play,4,audio_set_loop);
//				audio_sound_gain(audio_inst_bgm,0,0);
//				audio_sound_gain(audio_inst_bgm,audio_set_vol,audio_set_vol_time);
//				break;
//			case audio_type.bgs: 
//				global.current_bgs=audio_to_play; 
//				audio_inst_bgs=audio_play_sound(audio_to_play,5,audio_set_loop);
//				audio_sound_gain(audio_inst_bgs,0,0);
//				audio_sound_gain(audio_inst_bgs,audio_set_vol,audio_set_vol_time);
//				break;
//			case audio_type.sfx: 
//				audio_inst_sfx=audio_play_sound(audio_to_play,10,audio_set_loop);
//				audio_sound_gain(audio_inst_sfx,0,0);
//				audio_sound_gain(audio_inst_sfx,audio_set_vol,audio_set_vol_time);
//				break;
//		}
//	}
//}