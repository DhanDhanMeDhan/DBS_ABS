function scr_cutscene_basement_end(){
	if(array_length(global.party)<2){
		o_ending_control.basement_find[global.day]=[true,-1]
	}else{
		o_ending_control.basement_find[global.day]=[true,asset_get_index(global.party[1][0])]
	}
	scr_cutscene_continue()
}