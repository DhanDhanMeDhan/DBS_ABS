function scr_cutscene_flash(){
	var _open=argument0,_ready;
	cutscene_set_flash_amount=argument1;
	if(!_open){
		cutscene_set_flash=true;
		if(cutscene_set_flash_alpha<=1){cutscene_set_flash_alpha+=cutscene_set_flash_amount; _ready=false}else{_ready=true}
	}else{
		if(cutscene_set_flash_alpha>=0){cutscene_set_flash_alpha-=cutscene_set_flash_amount; _ready=false}else{_ready=true; cutscene_set_flash=false;}
	}
	if(_ready){scr_cutscene_continue()}
}