function scr_cutscene_draw_papers(){
	if(!instance_exists(o_papers)){
		instance_create_layer(x,y,layer,o_papers);
	}else{
		scr_inputs();
		if(global.input_cancel)or(global.input_confirm){
			o_papers.show_icon=false;
			scr_cutscene_continue();
		}
	}
}