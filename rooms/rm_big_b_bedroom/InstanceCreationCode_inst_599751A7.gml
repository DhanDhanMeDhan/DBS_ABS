quest_array=[
	[0,quest_type.have_item,item.irrigator],
	[0,quest_type.talk_to,id],
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
	[scr_cutscene_variable,variable.normal,o_big_b_bedroom_detail_4_1,"image_index",1],
	[scr_cutscene_variable,variable.nearst,o_cutscene_trigger_3,"ppl_talked",true,x,y],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["......"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Como você pensa em aguar as plantas sem o regador?"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
];
complete_cutscene=[
	[scr_cutscene_bars,true,false],
]