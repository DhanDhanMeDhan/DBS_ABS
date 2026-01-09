function scr_cutscene_choice(){
	cutscene_set_choice=true;
	cutscene_text_choice=argument0;
	var _cutscene=argument1;
	scr_inputs();
	if(global.input_select_right) cutscene_choice++;
	if(global.input_select_left) cutscene_choice--;
	cutscene_choice=clamp(cutscene_choice,0,1);
	if(global.input_confirm){
		switch cutscene_choice{
			case 0:
				cutscene_play=_cutscene[0];
				scene_index=0;
				cutscene_set_choice=false;
				event_perform(ev_other,ev_user0);
				break;
			case 1:
				cutscene_play=_cutscene[1];
				scene_index=0;
				cutscene_set_choice=false;
				event_perform(ev_other,ev_user0);
				break;
		}
	}
}