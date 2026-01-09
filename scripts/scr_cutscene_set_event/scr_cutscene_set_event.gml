function scr_cutscene_set_event(){
	var _f_event=argument0,_s_event=argument1;
	global.event[_f_event[0]][_f_event[1]]=_f_event[2];
	global.event[_s_event[0]][_s_event[1]]=_s_event[2];
	scr_cutscene_continue();
}