function scr_cutscene_continue(){
	cutscene_obj=-1;
	cutscene_sprite_drawed=false;
	#region timer
	cutscene_timer=0;
	#endregion
	#region talk
	cutscene_set_dialg=false;
	cutscene_text_setting_text=false;
	cutscene_text_mode=-1;
	cutscene_text_name=-1;
	cutscene_text_dialg=-1;
	cutscene_text_lenght=-1;
	cutscene_text_char=0;
	cutscene_text_spd=1;
	cutscene_text_setup=false;
	cutscene_letter_finished=false;

	cutscene_text_ww=150;
	cutscene_text_border=8;
	cutscene_text_line=global.font_talk_size;
	cutscene_text_limit=cutscene_text_ww-cutscene_text_border*2;
	
	cutscene_custom_text=false;
	cutscene_custom_text_xx=0;
	cutscene_custom_text_yy=0;
	cutscene_custom_text_ww=0;
	cutscene_custom_text_color=-1;
	cutscene_custom_text_show_bg=false;
	cutscene_custom_text_show_name=false;
	cutscene_custom_text_show_speach=false;
	#endregion
	#region
	cutscene_item_place=-1;
	custcene_party_current_member=0;
	#endregion
	scene_index++
	if(scene_index>array_length(cutscene_play)-1){
		exit;
	}
	event_perform(ev_other,ev_user0);
}