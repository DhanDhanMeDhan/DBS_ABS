function scr_cutscene_reset_all_rooms(){
	global.room_data={
		b_bed1:0,b_bed2:0,b_bed3:0,
		g_bed1:0,g_bed2:0,g_bed3:0,
		k_bed:0,bb_bed:0,cafeteria:0,
		ext1:0,ext2:0,corridor:0,
		infrm:0,bath1:0,bath2:0,
		forst1:0,forst2:0,forst3:0,forst4:0,forst5:0
	}
	scr_cutscene_continue();
}