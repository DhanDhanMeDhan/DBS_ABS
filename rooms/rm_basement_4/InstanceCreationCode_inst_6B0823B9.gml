quest_array=[
	[0,quest_type.have_item,item.basement_key_1],
]
complete_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum..."]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não há nada aqui..."]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Algumas bolsas e livros..."]],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
]
non_complete_cutscene[0]=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum..."]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não há nada aqui..."]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Algumas bolsas e livros..."]],
	[scr_cutscene_wait,1],
	[scr_cutscene_condition,question.have_person,o_todd,
		[
			[
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Achei uma chave!"]],
				[scr_cutscene_item,o_bunbun,-1,[item.basement_key_1,1],true,false],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			],
			[
				[scr_cutscene_bars,true,false],
			]
		]
	],
]