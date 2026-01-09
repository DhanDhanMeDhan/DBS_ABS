function scr_cutscene_talk_custom(){
	cutscene_text_dialg=argument2[global.lang];
	
	cutscene_custom_text_ww=argument6;
	var _text_ww=string_width_ext(cutscene_text_dialg,global.font_talk_size,cutscene_custom_text_ww);
	var _text_hh=string_height_ext(cutscene_text_dialg,global.font_talk_size,cutscene_custom_text_ww);
	var _relative=argument10,_xx,_yy;
	if(_relative){
		_xx=-global.cx;
		_yy=-global.cy;
	}else{
		_xx=0;
		_yy=0;
	}
	cutscene_custom_text_xx=argument4+_xx;
	cutscene_custom_text_yy=argument5+_yy;
	cutscene_custom_text_color=argument7;
	cutscene_custom_text_show_bg=argument8;
	cutscene_custom_text_show_name=argument9;
	cutscene_custom_text=true;
	scr_cutscene_talk(argument0,argument1,argument2,argument3);
	//cutscene_text_lenght=string_length(cutscene_text_dialg);
	//if(cutscene_text_char<cutscene_text_lenght){
	//	//with(cutscene_obj){if(ppl_act_state!=ppl_act.custom){ppl_talk=true;}}
	//	cutscene_text_char+=cutscene_text_spd;
	//	cutscene_text_char=clamp(cutscene_text_char,0,cutscene_text_lenght);
	//	cutscene_letter_finished=false;
	//	if(cutscene_text_char mod 2==0){
	//		var _talk_audio=audio_play_sound(_audio,1,false);
	//		audio_sound_gain(_talk_audio,0,0);
	//		audio_sound_gain(_talk_audio,1,0);
	//	}
	//}else{
	//	//with(cutscene_obj){if(ppl_act_state!=ppl_act.custom){ppl_talk=false;}}
	//	cutscene_letter_finished=true;
	//}
	//scr_inputs();
	//if(global.input_confirm){
	//	//with(cutscene_obj){if(ppl_act_state!=ppl_act.custom){ppl_talk=false;}}
	//	cutscene_letter_finished=true;
	//	if(cutscene_text_char==cutscene_text_lenght){
	//		scr_cutscene_continue();
	//	}else{
	//		cutscene_text_char=cutscene_text_lenght;
	//	}
	//}
}