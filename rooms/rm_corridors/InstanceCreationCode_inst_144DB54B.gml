non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,594,406],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_bathroom_1,true,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",813],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",542],
	[scr_cutscene_refresh_party_member,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_variable,variable.normal,o_camera,"x",723],
	[scr_cutscene_variable,variable.normal,o_camera,"y",488],
	//[setting the camera x]
	//[setting the camera y]
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
	[scr_cutscene_wait,1],
	[scr_cutscene_move_character,o_bunbun,723,488,false,true,false],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false]
];
switch global.day{
	case 0:
		if(global.event[0][0]==progress.non_complete){
			#region
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Está apertado ou coisa assim?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hum..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não o suficiente"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah... Bom, nesse caso vamos tomar café logo!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ok!..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
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
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Não acredito que a Mamãe vai estar no banheiro..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Certeza?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Uh-hum!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E se ela estiver apertada? Mulheres também usam o banheiro!..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Não quero ter essa discussão com você"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["O quarto do Tio Big B não é aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sim, eu sei, apenas pensei que ele pudesse estar aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Se ele estiver no banheiro, não acredito que ele iria levar seus temperos consigo..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ok, você tem um ponto..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Depois usamos o banheiro, vamos entregar os temperos para a Mamãe!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Você só quer saber o que vai ter para o almoço, né?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Não estamos falando disso"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Eu deixei de ser importante para você, você me odeia"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu não te odeio!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Odeia sim"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
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
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Oh, vão usar o banheiro? Eu espero aqui fora"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, não não, não estamos apertado, pelo menos eu não"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Nem eu"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Então... Por que vocês estão indo para o banheiro?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Boa pergunta, meus pés me levaram até aqui"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Tá bom então, BunBun"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[2]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vem cá, não é falta de educação pedir algo quando alguém está usando o banheiro?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Concordo, é uma atitude atróz"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["A o que?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Atróz, significa uma atitude má, em resumo"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Bom, de fato"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vocês inventam cada coisa"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Tenho certeza que a Wendy não está aqui"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Fonte?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Fonte de que ela está aqui?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Wendy de Schrödinger"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Vocês... Não... Conhecem?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Nem ideia"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Desculpe"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Mas quem é esse... Essa... Pessoa-"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["ELE é um cientista, te explico mais tarde"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ok!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[4]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["O 45 não está aqui, ele tá lá embaixo"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh! verdade, eu me esqueci"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Bobão"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["O Fritz está lá em baixo..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Fica calma, já, respira, ok?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Falar é fácil!... Meu Deus, que medo"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Eu sei!! Logo logo será eu!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][5]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.someone_party,o_petter],
				[-1,quest_type.talk_to,id],
				[-1,quest_type.talk_to,o_bunbun],
				[-1,quest_type.talk_to,o_door_2],
				[-1,quest_type.someone_party,o_linus],
				[-1,quest_type.have_item,item.linus_diary],
				[-1,quest_type.talk_to,o_linus],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,594,406],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_bathroom_1,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",813],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",542],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",723],
				[scr_cutscene_variable,variable.normal,o_camera,"y",488],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,723,488,false,true,false],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["..."]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_petter],
				[scr_cutscene_variable,variable.normal,o_petter,"ppl_to_look_at",o_bunbun],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
				[scr_cutscene_variable,variable.normal,o_petter,"ppl_looking_to",true],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh... BunBun..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sim?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Você acha que o Tio ntony fez alguma coisa com minha pelúcia ai no banheiro?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Acho que não, mas também não duvidaria"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Oh..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Tudo bem..."]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",false],
				[scr_cutscene_variable,variable.normal,o_petter,"ppl_looking_to",false],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,594,406],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_bathroom_1,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",813],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",542],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",723],
				[scr_cutscene_variable,variable.normal,o_camera,"y",488],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,723,488,false,true,false],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[2]=non_complete_cutscene[0];
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh... BunBun... Você acha que a Mamãe está aqui mesmo?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["É que eu me lembro de ter visto ela na cafeteria"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Nesse caso, vamos até lá!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[4]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh... BunBun... Esse não é o quarto do Linus"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não? Jurava que sim..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
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
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
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
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][7]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.talk_to,o_todd],
			];
			complete_cutscene=[];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,594,406],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_bathroom_1,false,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",813],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",542],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",723],
				[scr_cutscene_variable,variable.normal,o_camera,"y",488],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,723,488,false,true,false],
				[scr_cutscene_variable,variable.normal,o_linus,"ppl_flowing",false],
				[scr_cutscene_move_character,o_linus,-64,-32,true,1,true,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Oh... Vazio, como esperado"]],
				[scr_cutscene_variable,variable.normal,o_linus,"direction",315],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Bom... Ainda assim tenho um pouco de medo... Podemos ir na parte dos chuveiros?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Assim vou ter certeza que ninguém vai nos ouvir...."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Linus... O que é isso que tu quer me contar?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Não se preocupe... Só é algo pessoal..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tudo bem..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_linus,"ppl_flowing",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			]
			#endregion
		}else if(global.event[0][8]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.have_item,item.pijamas],
				[-1,quest_type.switch_clothes,clothes.pijama]
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ainda temos que pegar nossos pijamas..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oh! verdade! Eu tinha esquecido!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Poxa... Por que eu fui te lembrar?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["HeeHee! Bobão!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Você quem é bobão!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,594,406],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_bathroom_2,false,false],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",false],
				[scr_cutscene_variable,variable.normal,o_todd,"x",660],
				[scr_cutscene_variable,variable.normal,o_todd,"y",415],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",611],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",449],
				[scr_cutscene_variable,variable.normal,o_todd,"clothe",clothes.pijama],
				[scr_cutscene_variable,variable.normal,o_bunbun,"clothe",clothes.pijama],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",270],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",270],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,650,435],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				[scr_cutscene_move_character,o_todd,660,449,false,1,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ugh... Finalmente!!"]],
				[scr_cutscene_variable,variable.normal,o_todd,"direction",180],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Podemos ir agora?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Hummm..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Eu diria que você está fedendo a rosas"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["E isso é ruim?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não! Na realidade é muito bom!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Mas você disse que estou fedendo!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Fedendo a rosas!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ok Ok, vou aceitar só por que é você!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["HeeHee! Bom, vamos logo ver o Fritz!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oh! Vamos nessa!!!"]],
				[scr_cutscene_variable,variable.normal,o_todd,"ppl_flowing",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			complete_cutscene=[];
			#endregion
		}
		break;
}