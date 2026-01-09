function scr_cutscene_transition(){
	var _type=argument0,_relative=argument1,_close=argument2,_alpha=argument3,_color=argument4,_ready_up,_ready_bottom;
	with(o_cutscene){
		cutscene_transition_set_color=_color;
		if(_relative){
			if(_close){
				#region closing====================================================
				switch _type{
					case cutscene_transition_type.bars:
						cutscene_transition_set_alpha=1;
						if(cutscene_transition_up<=global.ch/2){cutscene_transition_up+=15;_ready_up=false;}else{cutscene_transition_up=global.ch/2;_ready_up=true;}
						if(cutscene_transition_bottom>=global.ch/2){cutscene_transition_bottom-=15;_ready_bottom=false;}else{cutscene_transition_bottom=global.ch/2;_ready_bottom=true;}
						break;
					case cutscene_transition_type.fade:
						if(cutscene_transition_set_alpha<=1){
							cutscene_transition_set_alpha+=_alpha;
							_ready_up=false;
							_ready_bottom=false;
						}else{
							_ready_up=true;
							_ready_bottom=true;
						}
						break;
				}
				#endregion
			}else{
				#region opening====================================================
				switch _type{
					case cutscene_transition_type.bars:
						cutscene_transition_set_alpha=1;
						if(cutscene_transition_up>=0){cutscene_transition_up-=15;_ready_up=false;}else{cutscene_transition_up=0;_ready_up=true;}
						if(cutscene_transition_bottom<=global.ch){cutscene_transition_bottom+=15;_ready_bottom=false;}else{cutscene_transition_bottom=global.ch;_ready_bottom=true;}
						break;
					case cutscene_transition_type.fade:
						if(cutscene_transition_set_alpha>=0){
							cutscene_transition_set_alpha-=_alpha;
							_ready_up=false;
							_ready_bottom=false;
						}else{
							_ready_up=true;
							_ready_bottom=true;
						}
						break;
				}
				#endregion
			}
		}else{
			cutscene_transition_set_alpha=1;
			if(_close){
				cutscene_transition_up=global.ch/2;
				cutscene_transition_bottom=global.ch/2;
			}else{
				cutscene_transition_up=0;
				cutscene_transition_bottom=global.ch;
			}
			_ready_up=true;
			_ready_bottom=true;
		}
	}
	if(_ready_up)and(_ready_bottom) scr_cutscene_continue();
}