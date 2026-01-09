function scr_cutscene_bars(){
	var _relative=argument0,_close=argument1,_ready_up,_ready_bottom,_val=4;
	with(o_cutscene){
		if(_relative){
			if(_close){
				if(cutscene_bars_up<=(global.ch/8)-8){cutscene_bars_up+=_val;_ready_up=false;}else{cutscene_bars_up=global.ch/8;_ready_up=true;}
				if(cutscene_bars_bottom>=(global.ch-(global.ch/5))-8){cutscene_bars_bottom-=_val;_ready_bottom=false;}else{cutscene_bars_bottom=(global.ch-(global.ch/5));_ready_bottom=true;}
			}else{
				if(cutscene_bars_up>=8){cutscene_bars_up-=_val;_ready_up=false;}else{cutscene_bars_up=0;_ready_up=true;}
				if(cutscene_bars_bottom<=global.ch-8){cutscene_bars_bottom+=_val;_ready_bottom=false;}else{cutscene_bars_bottom=global.ch;_ready_bottom=true;}
			}
		}else{
			if(_close){
				cutscene_bars_up=global.ch/8;
				cutscene_bars_bottom=(global.ch-(global.ch/5));
			}else{
				cutscene_bars_up=0;
				cutscene_bars_bottom=global.ch;
			}
			_ready_up=true;
			_ready_bottom=true;
		}
	}
	if(_ready_up)and(_ready_bottom) scr_cutscene_continue();
}