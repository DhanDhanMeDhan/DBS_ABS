if(global.event[0][9]==progress.non_complete){
	quest_array=[
		[0,quest_type.someone_party,o_todd],
	];
	non_complete_cutscene[0]=[
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["......."]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Quem sabe eu deveria apenas voltar a dormir..."]],
		[scr_cutscene_choice,[["Voltar a dormir"],["Seguir com a exploração"]],
			[
				[
					[scr_cutscene_wait,2],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum..."]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Acho que eu só estou com a cabeça cheia"]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Se eu focar em dormir, vai ficar tudo bem!!"]],
					[scr_cutscene_wait,1],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Boa noite!!"]],
					[scr_cutscene_wait,1],
					[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,c_black],
					[scr_cutscene_wait,1],
					[scr_cutscene_video,story_tell.credit],
				],
				[
					[scr_cutscene_wait,2],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum..."]],
					[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não me importo, vou ver o que tem lá embaixo"]],
					[scr_cutscene_wait,1],
					[scr_cutscene_bars,true,false],
				]
			]
		]
	];
	complete_cutscene=[
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["O que?"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Bateu preguiça agora?"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah... Não"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Apenas vamos lá de uma vez"]],
		[scr_cutscene_wait,1],
		[scr_cutscene_bars,true,false],
	]
}