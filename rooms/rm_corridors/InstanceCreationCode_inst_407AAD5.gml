#region dia 0
non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_move_character,o_bunbun,0,100,true,1,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_b_bedroom_2,true,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",571],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",541],
	[scr_cutscene_refresh_party_member,true],
	[scr_cutscene_variable,variable.normal,o_camera,"x",571],
	[scr_cutscene_variable,variable.normal,o_camera,"y",441],
	[scr_cutscene_wait,1],
	//[setting the camera x]
	//[setting the camera y]
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
	[scr_cutscene_wait,1],
	[scr_cutscene_move_character,o_bunbun,571,441,false,1,true,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false]
];
#endregion
switch global.day{
	case 0:
		if(global.event[0][0]==progress.non_complete){
			#region
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Esqueceu alguma coisa, BunBun?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum... Acho que não..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Quer voltar a dormir?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["A ideia é boa"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Seu preguiçoso"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E você um comilão!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			#endregion
		}else if(global.event[0][3]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.have_item,item.mother_list],
				[-1,quest_type.have_item,item.uncle_spices],
			]
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Não acredito que a Mamãe vai estar no quarto de uma das crianças..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Certeza?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Sim e por que motivo ela estaria?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Por que ela é nossa mãe e sempre nos ajuda com tudo! Ela quem nos ensinava a arrumar a cama, bobo"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ok, você tem um ponto, mas ainda assim, ela não vai estar aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tá bom..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["O quarto do Tio Big B não é aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sim, eu sei, apenas pensei que ele pudesse estar aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["E por que raios ele estaria em um quarto de uma das crianças?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ele sempre se certifica do bem estar de todos aqui!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Chorei 5 unidades de lágrimas, vamos logo para o quarto dele"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Bobo..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Depois você vê o que tem nas gavetas do povo, vamos entregar os temperos para a Mamãe!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["QUE?! Eu não vejo o que tem nas gavetas"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vê sim! Você é todo curioso!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não!... Na realidade sim, sou curioso... MAS EU NÃO VEJO O QUE TEM NAS GAVETAS!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][4]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.have_item,item.love_letter],
				[-1,quest_type.talk_to,o_noah],
				[-1,quest_type.talk_to,o_hellen],
				[-1,quest_type.have_item,item.noah_gift],
			];
			complete_cutscene=[]
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Ah... BunBun... Esse não é meu quarto..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ele tem memória de curto prazo"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Você é quem tem memória de curto prazo!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Então vamos logo para o quarto da Hellen!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tá tá..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["O 45 estaria aqui?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu tenho certeza que vi ele no andar de baixo.."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh? Pensei que ele estava aqui, vamos lá então"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos nessa!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			non_complete_cutscene[2]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["A Wendy não está aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Uh? Como você sabe?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Ela gosta de ficar lendo no quarto dela, depois de brincar lá fora..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, bom... Tudo bem, vamos lá então!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Ainda temos que pegar o presente com o 45"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oh! É verdade!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Se não sou eu"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, Não seja assim!..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["O Fritz está lá em baixo..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Fica calma, já, respira, ok?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Falar é fácil!... Meu Deus, que medo"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu sei!! Logo logo será eu!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][5]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.someone_party,o_petter],
				[-1,quest_type.talk_to,o_door_1],
				[-1,quest_type.talk_to,o_bunbun],
				[-1,quest_type.talk_to,o_door_2],
				[-1,quest_type.someone_party,o_linus],
				[-1,quest_type.have_item,item.linus_diary],
				[-1,quest_type.talk_to,o_linus],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_move_character,o_bunbun,0,100,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_b_bedroom_2,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",571],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",541],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"x",571],
				[scr_cutscene_variable,variable.normal,o_camera,"y",441],
				[scr_cutscene_wait,1],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,571,441,false,1,true,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[1]=non_complete_cutscene[0];
			non_complete_cutscene[2]=non_complete_cutscene[0];
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh... BunBun... Você acha que a Mamãe está aqui mesmo?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["É que eu me lembro de ter visto ela na cafeteria"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Nesse caso, vamos até lá!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[4]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh... BunBun... Esse não é o quarto do Linus"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não? Jurava que sim..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[5]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["BunBun, depois vemos isso..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Vamos apenas recuperar o que é meu, por favor..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Claro claro, desculpe"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[6]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["A Mamãe não está aqui, BunBun, não se lembra?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Claro claro, desculpe"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Ah! N-Não se preocupe!..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Apenas vamos até a Mamãe para terminar com isso..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][9]==progress.non_complete){
			quest_array=[
				[0,quest_type.talk_to,o_bunbun],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_move_character,o_bunbun,0,100,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_b_bedroom_2,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",571],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",541],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"x",571],
				[scr_cutscene_variable,variable.normal,o_camera,"y",441],
				[scr_cutscene_wait,1],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,571,441,false,1,true,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_uncle_bruce],
				[scr_cutscene_variable,variable.normal,o_uncle_bruce,"ppl_to_look_at",o_bunbun],
				[scr_cutscene_variable,variable.normal,o_uncle_bruce,"ppl_looking_to",true],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["BunBun..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Uh... Sim?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Você está bem?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Uh-hum..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Não está machucado, né?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Nu-uh..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Tem certeza que você não viu nada?..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Acho... Que só vou indo dormir, Tio..."]],
				
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Tudo bem..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Durma bem, BunBun"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Se precisar de mim, não exite em falar comigo, tá bom?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tá bom"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Amanhã eu faço o café"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Sério?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Pode apostar, pequeno"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Obrigado, Tio!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_uncle_bruce,["Não se preocupe, apenas vai lá dormir, ok?"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],
				
				[scr_cutscene_remove_party_member,o_uncle_bruce],
				[scr_cutscene_room_goto,rm_b_bedroom_2,true,false],
				[scr_cutscene_wait,1],
				[scr_cutscene_remove_party_member,o_todd],
				[scr_cutscene_variable,variable.global,"time",time.night],
				[scr_cutscene_set_event,[0,8,progress.complete],[0,9,progress.non_complete]],
				[scr_cutscene_room_goto,rm_b_bedroom_2,false,false],
				[scr_cutscene_instance_create,663,394,"Instances_People_2",o_bunbun],
				[scr_cutscene_instance_create,663,394,"Instances_People_2",o_todd],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",663],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",394],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_can_play",true],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",false],
				[scr_cutscene_variable,variable.normal,o_todd,"x",649],
				[scr_cutscene_variable,variable.normal,o_todd,"y",335],
				[scr_cutscene_animation_sprite,o_todd,[s_todd_pijama_todd_bedtalk_sleeping],[s_todd_pijama_todd_bedtalk_sleeping],false,true,[.05,.05]],
				[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_idle_1],[s_bunbun_pijama_wakingup_intro_idle_1],false,true,[.35,.2]],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_variable,variable.normal,o_camera,"npc_to_flow",o_bunbun],
				[scr_cutscene_wait,3],
				[scr_cutscene_circle_wake_up,true,false,663,394-48,true,true,true,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,4],
				[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_waking_1],[s_bunbun_pijama_wakingup_intro_idle_2],false,true,[.35,0]],
				[scr_cutscene_wait,1],
				[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_turn_around],[s_bunbun_pijama_wakingup_intro_idle_3],false,true,[.35,0]],
				[scr_cutscene_wait,5],
				[scr_cutscene_circle_wake_up,true,false,663,394-48,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_bunbun,"clothe",clothes.pijama],
				[scr_cutscene_variable,variable.normal,o_todd,"clothe",clothes.pijama],
				[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_getting_up_1],[s_bunbun_pijama_wakingup_intro_idle_4],false,true,[.35,.2]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["..."],-1,[-1,[s_bunbun_pijama_wakingup_intro_idle_4],[s_bunbun_pijama_wakingup_intro_talk_4]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_bunbun,["Não consigo dormir..."],-1,[-1,[s_bunbun_pijama_wakingup_intro_idle_4],[s_bunbun_pijama_wakingup_intro_talk_4]],false,false,[0,.2,.25]],
				[scr_cutscene_wait,1],
				[scr_cutscene_animation_sprite,o_bunbun,[s_bunbun_pijama_wakingup_intro_getting_up_2],[s_bunbun_pijama_idle_1_down],false,true,[.35,.2]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",270],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_act_state",ppl_act.play],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
		}
		break;
}