function scr_cutscene_save_game(){
	if(file_exists(global.save_fle)) file_delete(global.save_fle);
	save_game();
	scr_cutscene_continue();
}