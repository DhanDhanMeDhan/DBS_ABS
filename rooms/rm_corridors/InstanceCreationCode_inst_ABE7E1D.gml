#region dia 0
non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_move_character,o_bunbun,0,100,true,1,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_b_bedroom_1,true,false],
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
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["O quarto do Petter, Edgar, Fritz e Nickolai... Buscando por algo?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não, apenas explorando..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Todd, você notou que o Petter anda meio triste?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ele sempre foi meio calado, né?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sim, as... Ele parece mais triste que o normal.."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Agora que você disse..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
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
				[scr_cutscene_room_goto,rm_b_bedroom_1,true,false],
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
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][8]==progress.non_complete){
			quest_array=[
				[0,quest_type.switch_clothes,clothes.pijama],
				[-1,quest_type.talk_to,o_bunbun],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oh! Vamos ver agora então?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Esqueci, vamos tomar banho antes"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Por que eu fui lembrar?..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,0,-8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			non_complete_cutscene[1]=[
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_talked",true],
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_move_character,o_bunbun,0,100,true,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_b_bedroom_1,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",571],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",541],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"x",571],
				[scr_cutscene_variable,variable.normal,o_camera,"y",441],
				[scr_cutscene_instance_create,561,384,"Instances_People_2",o_nickolai],
				[scr_cutscene_instance_create,603,385,"Instances_People_2",o_fritz],
				[scr_cutscene_instance_create,644,397,"Instances_People_2",o_tent_bedroom_detail_1_1],
				[scr_cutscene_animation_sprite,o_nickolai,[s_nickolai_pijama_intro_idle_1_storyteller],[s_nickolai_pijama_intro_idle_1_storyteller],false,true,[1,.2]],
				[scr_cutscene_animation_sprite,o_fritz,[s_nothing],[s_nothing],false,true,[1,.2]],
				[scr_cutscene_wait,1],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,571,441,false,1,true,true],
				[scr_cutscene_move_character,o_bunbun,12,0,true,1,true,true],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",90],
				[scr_cutscene_move_character,o_todd,0,-12,true,1,true,true],
				[scr_cutscene_move_character,o_todd,-12,0,true,1,true,true],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",90],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_camera,561,384,false,1,false,false],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Sejam bem vindos, BunBun e Todd!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_1_storyteller],[s_nickolai_pijama_intro_talk_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Estavamos esperando apenas por vocês!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_1_storyteller],[s_nickolai_pijama_intro_talk_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Uma visita ilustre que não podiamos ignora, depois de hoje!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_1_storyteller],[s_nickolai_pijama_intro_talk_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Queria dar a vocês uma boa vinda ao...."],-1,[[-1],[s_nickolai_pijama_intro_idle_1_storyteller],[s_nickolai_pijama_intro_talk_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Grande show de história de minha dupla!!"],-1,[[s_nickolai_pijama_intro_talk_3_storyteller],[s_nickolai_pijama_intro_idle_2_storyteller],[s_nickolai_pijama_intro_talk_2_storyteller]],true,false,[.35,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["O grande Bodinho Fritz!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_2_storyteller],[s_nickolai_pijama_intro_talk_2_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_variable,variable.normal,o_nickolai,"sprite_index",s_nickolai_pijama_intro_idle_3_storyteller],
				[scr_cutscene_wait,1],
				[scr_cutscene_animation_sprite,o_fritz,[s_fritz_pijama_intro_up_storyteller],[s_fritz_pijama_intro_idle_1_storyteller],false,true,[.45,.2]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Eu já te disse para não me chamar assim"],-1,[[-1],[s_fritz_pijama_intro_idle_1_storyteller],[s_fritz_pijama_intro_talk_1_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Oh! Foi mal bodinho!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_4_storyteller],[s_nickolai_pijama_intro_talk_4_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_wait,2],
				[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_pijama_intro_idle_2_storyteller],
				[scr_cutscene_wait,2],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_fritz,["Eu sei onde você dorme..."],-1,[[-1],[s_fritz_pijama_intro_idle_2_storyteller],[s_fritz_pijama_intro_talk_2_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Ah! Eu também sei!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_2_storyteller],[s_nickolai_pijama_intro_talk_2_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_variable,variable.normal,o_nickolai,"sprite_index",s_nickolai_pijama_intro_idle_4_storyteller],
				[scr_cutscene_wait,2],
				[scr_cutscene_animation_sprite,o_fritz,[s_fritz_pijama_intro_down_storyteller],[s_nothing],false,true,[.35,.2]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_nickolai,["Bom, de qualquer forma! Sejam bem-vindos ao grande show de história do bodinho Fritz!!"],-1,[[-1],[s_nickolai_pijama_intro_idle_2_storyteller],[s_nickolai_pijama_intro_talk_2_storyteller]],false,false,[0,.2,.25]],
				[scr_cutscene_animation_sprite,o_fritz,[s_fritz_pijama_intro_up_storyteller],[s_fritz_pijama_intro_idle_1_storyteller],false,true,[.35,.2]],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_fritz,"sprite_index",s_fritz_pijama_intro_idle_2_storyteller],
				[scr_cutscene_wait,1],
				[scr_cutscene_animation_sprite,o_fritz,[s_fritz_pijama_intro_down_storyteller],[s_nothing],false,true,[.35,.2]],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",true],
				[scr_cutscene_move_character,o_bunbun,571,387+12,false,1,true,true],
				[scr_cutscene_move_character,o_bunbun,595,387+12,false,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_room_goto,rm_storytelling,false,false],
				[scr_cutscene_sequence_create,story_tell.fritz_1,sq_fritz_story_1,],
				[scr_cutscene_bars,true,false]
			]
		}
		break;
}