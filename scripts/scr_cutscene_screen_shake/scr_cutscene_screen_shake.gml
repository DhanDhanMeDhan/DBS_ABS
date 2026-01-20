function scr_cutscene_screen_shake(){
	with(o_camera){
		shake_lenght=argument0;
		shake_time=argument1*60;
		continue_shake=argument2;
	}
	scr_cutscene_continue()
}