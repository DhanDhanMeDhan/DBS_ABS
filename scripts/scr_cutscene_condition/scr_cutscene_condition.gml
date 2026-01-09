function scr_cutscene_condition(){
	var _question_type=argument0,_question=argument1,_cutscene=argument2;
	switch _question_type{
		#region have an item
		case question.have_item:
			var _inventory_size=array_length(global.inventory),_find;
			for(var i=0;i<_inventory_size;i++){
				if(i==_inventory_size-1){
					if(global.inventory[i][0]==_question){
						with(o_cutscene){
							cutscene_play=_cutscene[0];
							scene_index=0;
							event_perform(ev_other,ev_user0);
						}
						exit;
					}else{
						with(o_cutscene){
							cutscene_play=_cutscene[1];
							scene_index=0;
							event_perform(ev_other,ev_user0);
						}
						exit;
					}
				}else{
					if(global.inventory[i][0]==_question){
						with(o_cutscene){
							cutscene_play=_cutscene[0];
							scene_index=0;
							event_perform(ev_other,ev_user0);
						}
						exit;
					}
				}
			}
			break;
		#endregion
		#region have someone in party
		case question.have_person:
			var _party_size=array_length(global.party),_find;
			for(var i=0;i<_party_size;i++){
				if(i==_party_size-1){
					if(global.party[i][0]==_question){
						cutscene_play=_cutscene[1];
						scene_index=0;
						event_perform(ev_other,ev_user0);
					}else{
						cutscene_play=_cutscene[0];
						scene_index=0;
						event_perform(ev_other,ev_user0);
					}
					exit;
				}else{
					if(global.party[i][0]==_question){
						cutscene_play=_cutscene[1];
						scene_index=0;
						event_perform(ev_other,ev_user0);
					}
				}
			}
			break;
		#endregion
	}
}