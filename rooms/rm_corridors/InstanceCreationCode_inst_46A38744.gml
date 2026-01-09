non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,748,507],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_infermary,true,false],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",495],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",563],
	[scr_cutscene_refresh_party_member,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_variable,variable.normal,o_camera,"x",552],
	[scr_cutscene_variable,variable.normal,o_camera,"y",520],
	//[setting the camera x]
	//[setting the camera y]
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
	[scr_cutscene_wait,1],
	[scr_cutscene_move_character,o_bunbun,552,520,false,true,true],
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
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Uh... Por que tu quer ir na enfermaria? Se sente mal ou coisa assim?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah, não não! Só queria dizer um oi para a Tia Anzhelika"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah sim, que susto, BunBun!..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah! Desculpe desculpe!!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Tá tudo bem, bobão! Mas de qualquer forma, tenho certeza que ela está ocupada"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ela sempre está ocupada..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Me pergunto o que ela faz"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tenho certeza que deve estar fazendo relatórios da nossa saúde para o governo ou coisa assim..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["O que?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ela deve estar fazendo algo importante"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Hum... Ok ok"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			]
			#endregion
		}else if(global.event[0][2]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.talk_to,o_olivia],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,748,507],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_infermary,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",495],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",563],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_instance_create,611,300,"Instances_People_1",o_olivia],
				[scr_cutscene_animation_sprite,o_olivia,[s_olivia_casual_hide_n_seek_idle_0],[s_olivia_casual_hide_n_seek_idle_0],false,true,[1,.2]],
				//[scr_cutscene_instance_destroy,o_cutscene_trigger_3],
				//[scr_cutscene_instance_create,582,322,"Instances_People_1",o_cutscene_trigger_3],
				//[scr_cutscene_variable,variable.normal,o_cutscene_trigger_3,"image_xscale",7.625],
				//[scr_cutscene_variable,variable.normal,o_cutscene_trigger_3,"image_yscale",3.25],
				//[scr_cutscene_variable,variable.nearst,o_cutscene_trigger_3,"non_avaliable_cutscene",
				//	[
				//		[scr_cutscene_bars,true,true],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_move_character,o_bunbun,584,362,false,1,true,true],
				//		[scr_cutscene_variable,variable.normal,o_bunbun,"direction",45],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"ppl_flowing",false],
				//		[scr_cutscene_move_character,o_laszlo,639,362,false,1,true,true],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"direction",135],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_animation_sprite,o_olivia,[s_olivia_casual_hide_n_seek_intro],[s_olivia_casual_hide_n_seek_idle_1],false,true,[.35,.2]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Tah-dah!!!","¡¡¡Tah-dah!!!","Tah-dah!!!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_1],[s_olivia_casual_hide_n_seek_talk_1]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Podem tardar, porém nunca recusar!","¡Puedes tardar, pero nunca rechazar!","Yo can be late, but never decline!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_2],[s_olivia_casual_hide_n_seek_talk_2]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Eu mesma! A grandiosa Olivia!!","¡Yo misma! ¡¡La grandiosa Olivia!!","Yes, myself! The great Olivia!!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_1],[s_olivia_casual_hide_n_seek_talk_1]],false,false,[0,.2,.2]],
				//		[scr_cutscene_variable,variable.normal,o_olivia,"sprite_index",s_olivia_casual_hide_n_seek_idle_2],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Bravo!! Bravo!!"]],
				//		[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"direction",180],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Uma grande entrada, não?!"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Ah!... Sim, bem extravagante"]],
				//		[scr_cutscene_variable,variable.normal,o_bunbun,"direction",45],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"direction",135],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["De fato, uma entrada bem olivia"]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Obrigada! Obrigada!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_2],[s_olivia_casual_hide_n_seek_talk_2]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Me pergunto o que será da criança sem nome que você cuida"]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Qual, a 47?"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_3],[s_olivia_casual_hide_n_seek_talk_3]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Precisamente"]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Ah!! Sim!! Faltam poucos dias para o aniversário dela!! Ela vai finalmente conseguir o nome dela!!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_1],[s_olivia_casual_hide_n_seek_talk_1]],false,false,[0,.2,.2]],
				//		[scr_cutscene_variable,variable.normal,o_olivia,"sprite_index",s_olivia_casual_hide_n_seek_idle_3],
				//		[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"direction",180],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Estou curioso para saber que nome a criança sem nome 47 vai colocar a 48 e a 48 a 47"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["E eu do 45 para o 46 e vice-versa"]],
				//		[scr_cutscene_variable,variable.normal,o_bunbun,"direction",45],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"direction",135],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Ah! Esses dois também!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_2],[s_olivia_casual_hide_n_seek_talk_2]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Não é nada pessoal, mas é que eu vejo a 47 como minha irmã!!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_2],[s_olivia_casual_hide_n_seek_talk_2]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["É quase que um clone de você!"]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["HeeHee!! Bom, vou indo para o hall, esperar vocês, lerdões, terminarem"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_2],[s_olivia_casual_hide_n_seek_talk_2]],false,false,[0,.2,.2]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Haa! Bobona!"]],
				//		[scr_cutscene_talk_animated,cutscene_talk_mode.normal,o_olivia,["Aprendi com o melhor!!"],-1,[[-1],[s_olivia_casual_hide_n_seek_idle_1],[s_olivia_casual_hide_n_seek_talk_1]],false,false,[0,.2,.2]],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],
				//		[scr_cutscene_variable,variable.normal,o_olivia,"ppl_talked",true],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_instance_destroy,o_olivia],
				//		[scr_cutscene_instance_destroy_nearst,x,y,o_cutscene_trigger_3],
				//		[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_variable,variable.normal,o_bunbun,"direction",0],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"direction",180],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ela é tão energética!!"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Eu gosto dela, ela é toda agitada"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ela é quem passa mais tempo com a 47?"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Sim, ela cuida tanto da 47 quanto da 48, mas ela gosta mais da 47"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["E o 45 e o 46?"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Hum... Creio que ninguém... O 45 eu sei que ele gosta de ficar sozinho, mas o 46..."]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Um cuida do outro, né?"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Da sua maneira..."]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Entendo... Pobre 46..."]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Ele é inteligente, tipo, muito inteligente... Mas seus espinhos acabam afastando a todos"]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_laszlo,["Eu gosto dele, mas os espinhos machucam..."]],
				//		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Tá tudo bem, eu entendo"]],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_variable,variable.normal,o_laszlo,"ppl_flowing",true],
				//		[scr_cutscene_wait,1],
				//		[scr_cutscene_bars,true,false]
				//	],		
				//582,322],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",552],
				[scr_cutscene_variable,variable.normal,o_camera,"y",520],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,552,520,false,true,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			]
			#endregion
		}else if(global.event[0][3]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.talk_to,o_door_3],
				[-1,quest_type.have_item,item.uncle_spices],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["A Tia Anzhelika e a Mamãe estavam conversando antes de chegarmos"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["O que será que era? Elas pareciam bem sérias..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, sei lá, coisa de mulher eu acho"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Nem tudo precisamos entender, BunBun"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh... Tudo bem"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos, temos mais o que fazer"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[1]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos, temos mais o que fazer"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Depois falamos com a Tia Anzhelika!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][4]==progress.non_complete){
			#region
			non_avaliable_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Acho que não temos nada o que fazer aqui..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_hellen,["Se sente mal, BunBun?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não não, acho que spi queria dar um oi para a Tia Anzhelika"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Deixa disso, depois falamos com ela!"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh, tudo bem, eu acho"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}else if(global.event[0][5]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.someone_party,o_petter],
				[-1,quest_type.talk_to,o_bunbun],
				[-1,quest_type.talk_to,o_door_2],
				[-1,quest_type.someone_party,o_linus],
				[-1,quest_type.have_item,item.linus_diary],
				[-1,quest_type.talk_to,o_linus],
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,748,507],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_infermary,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",495],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",563],
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",552],
				[scr_cutscene_variable,variable.normal,o_camera,"y",520],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,552,520,false,true,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			non_complete_cutscene[1]=non_complete_cutscene[0];
			non_complete_cutscene[2]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh...."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Algo errado, Petter?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Não sei... Não me sinto confortável em falar sobre isso com a Tia Anzhelika..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh? Sério?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Sim, sinto que ela é igual o Antony..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah, sem problemas, fofo!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[3]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["BunBun, acredito que o Linus não esteja ai"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Espero que não também, a infermaria é um lugar que não quero que ninguém esteja"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Uh-hum..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[4]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["BunBun, por favor, não vamos envolver nenhum tio ou tia, por favor"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh, você tem certeza?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Toda... Apenas vamos logo pegar o que eles roubaram"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			non_complete_cutscene[5]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["BunBun, por favor, não vamos envolver nenhum tio ou tia, por favor"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh, você tem certeza?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_linus,["Toda... Apenas vamos logo pegar o que eles roubaram"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,-8,8,true,.5,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			#endregion
		}
		break;
}