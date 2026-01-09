quest_array=[
	[0,quest_type.have_item,item.irrigator],
];
non_complete_cutscene[0]=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oh! Aí está o regador!"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sabe, talvez plantas sejam legais"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, deixa disso, você só fala isso por que você é o preferido do Tio Big B"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não sou não!"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["É sim!"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não sou!"]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Tanto faz, só vamos pegar esse trambolho e terminar isso de uma vez"]],
	[scr_cutscene_instance_destroy,o_big_b_bedroom_detail_2_1],
	[scr_cutscene_item,o_bunbun,-1,[item.irrigator,1],true,false],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
];
complete_cutscene=[
	[scr_cutscene_bars,true,false],
]