if(global.event[0][9]==progress.non_complete){
	quest_array=[
		[0,quest_type.talk_to,id],
	];
	non_complete_cutscene[0]=[
		[scr_cutscene_variable,variable.nearst,o_cutscene_trigger_3,"ppl_talked",true,x,y],
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_condition,question.have_person,o_todd,
			[
				[
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum... Não há muita coisa aqui..."]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Espera..."]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Esses são..."]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh! São os prontuários médicos do ano passado!!"]],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_can_play",false],
					[scr_cutscene_wait,1],
					[scr_cutscene_draw_papers],
					[scr_cutscene_wait,1],
					[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_can_play",true],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tem algumas palavras que eu não conheço... Mas tudo bem"]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Me pergunto por que esses papeis estariam aqui..."]],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
				],
				[]
			]
		]
	]
	complete_cutscene=[
	
	]
}