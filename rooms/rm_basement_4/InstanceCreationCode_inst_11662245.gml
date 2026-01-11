quest_array=[
	[0,quest_type.talk_to,id],
];
non_complete_cutscene[0]=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Uma simples caixa..."]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Talvez tenha algo aqui dentro..."]],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,c_black],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.global,-1,"colored",true],
	[scr_cutscene_variable,variable.global,-1,"color",2],
	[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_can_play",false],
	[scr_cutscene_room_goto,rm_basement_4,true,false],
	[scr_cutscene_video,story_tell.bunbun_find],
	[scr_cutscene_bars,true,false]
];
complete_cutscene=[
	[scr_cutscene_condition,question.have_person,o_todd,
		[
			[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			],
			[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Apenas lixo..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			]
		]
	]
]