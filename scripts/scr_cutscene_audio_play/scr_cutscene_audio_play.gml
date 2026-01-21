function scr_cutscene_audio_play(){
	var _audio_type=argument0,_audio_to_play=argument1,_priority;
	switch _audio_type{
		case audio_type.bgm: global.current_bgm=_audio_to_play;_priority=4; break;
		case audio_type.bgs: global.current_bgs=_audio_to_play;_priority=6; break;
		case audio_type.sfx: _priority=8; break;
	}
	if(!audio_is_playing(_audio_to_play)){
		audio_play_sound(_audio_to_play,_priority,argument2);
		audio_sound_gain(_audio_to_play,0,0);
	}
	audio_sound_gain(_audio_to_play,argument3,argument4*1000);
	scr_cutscene_continue();
}

