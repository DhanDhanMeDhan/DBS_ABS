function scr_cutscene_set_path(){
	with(argument0){
		ppl_path_index=argument1;
		spd=argument2
		path_start(ppl_path_index,spd,argument3,argument4);
		ppl_do_path_act=argument5;
		with(other) scr_cutscene_continue();
	}
}