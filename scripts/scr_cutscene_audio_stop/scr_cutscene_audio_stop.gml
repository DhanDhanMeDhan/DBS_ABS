function scr_cutscene_audio_stop(){
	var _audio_type=argument0,_audio_to_stop=argument1;
	if(audio_is_playing(_audio_to_stop)){
		audio_stop_sound(_audio_to_stop);
	}
	switch _audio_type{
		case audio_type.bgm: global.current_bgm=-1; break;
		case audio_type.bgs: global.current_bgs=-1; break;
		case audio_type.sfx: global.current_sfx=-1; break;
	}
	scr_cutscene_continue();
}