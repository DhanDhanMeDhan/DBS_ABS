function scr_cutscene_wait(){
	cutscene_timer++;
	if(cutscene_timer>=argument0*60){
		scr_cutscene_continue();
	}
}