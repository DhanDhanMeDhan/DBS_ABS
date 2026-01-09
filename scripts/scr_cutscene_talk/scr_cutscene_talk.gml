function scr_cutscene_talk(){
	cutscene_text_mode=argument0;
	cutscene_obj=argument1;
	cutscene_text_dialg=argument2[global.lang];
	var _audio
	if(cutscene_obj!=-1){
		_audio=cutscene_obj.ppl_voice;
		cutscene_text_name=cutscene_obj.ppl_name[global.lang];
	}else{
		_audio=argument3;
		cutscene_text_name=-1;
	}
	if(!cutscene_custom_text){
		cutscene_set_dialg=true;
	}
	switch cutscene_text_mode{
		case cutscene_talk_mode.normal:
			#region talking
			cutscene_text_lenght=string_length(cutscene_text_dialg);
			if(cutscene_text_char<cutscene_text_lenght){
				if(cutscene_obj!=-1) with(cutscene_obj){if(ppl_act_state!=ppl_act.custom){ppl_talk=true;}}
				cutscene_text_char+=cutscene_text_spd;
				cutscene_text_char=clamp(cutscene_text_char,0,cutscene_text_lenght);
				cutscene_letter_finished=false;
				if(cutscene_text_char mod 2==0){
					var _talk_audio=audio_play_sound(_audio,10,false);
					var _ptch=choose(.7,.85,1);
					audio_sound_pitch(_talk_audio,_ptch);
					audio_sound_gain(_talk_audio,0,0);
					audio_sound_gain(_talk_audio,1,0);
				}
			}else{
				if(cutscene_obj!=-1) with(cutscene_obj){if(ppl_act_state!=ppl_act.custom){ppl_talk=false;}}
				cutscene_letter_finished=true;
			}
			scr_inputs();
			if(global.input_confirm){
				if(cutscene_obj!=-1) with(cutscene_obj){if(ppl_act_state!=ppl_act.custom){ppl_talk=false;}}
				cutscene_letter_finished=true;
				if(cutscene_text_char==cutscene_text_lenght){
					scr_cutscene_continue();
				}else{
					cutscene_text_char=cutscene_text_lenght;
				}
			}
			#endregion
			break;
		
	}
}