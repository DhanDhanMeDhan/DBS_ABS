quest_array=[
	[0,quest_type.have_item,item.irrigator],
	[0,quest_type.talk_to,o_big_b_bedroom_detail_10_1],
];
non_complete_cutscene[0]=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["......"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Como você pensa em aguar as plantas sem o regador?"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
];
non_complete_cutscene[1]=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_big_b_bedroom_detail_10_1,"image_index",1],
	[scr_cutscene_variable,variable.normal,o_big_b_bedroom_detail_10_1,"ppl_talked",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Boa!! Finalmente aguado!"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos para o próximo?"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
];
complete_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Essas plantas já estão aguadas"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
];