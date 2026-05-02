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
	[scr_cutscene_move_character,o_bunbun,552,520,false,1,true,true],
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
				[0,quest_type.hide_n_seek,o_olivia],
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
				
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",552],
				[scr_cutscene_variable,variable.normal,o_camera,"y",520],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,552,520,false,1,true,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			]
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.nearst,o_door_3,"open",true,748,507],
				[scr_cutscene_wait,1],
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
				[scr_cutscene_room_goto,rm_infermary,true,false],
				[scr_cutscene_variable,variable.normal,o_bunbun,"x",495],
				[scr_cutscene_variable,variable.normal,o_bunbun,"y",563],
				[scr_cutscene_refresh_party_member,true],
				
				[scr_cutscene_refresh_party_member,true],
				[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
				[scr_cutscene_variable,variable.normal,o_camera,"x",552],
				[scr_cutscene_variable,variable.normal,o_camera,"y",520],
				//[setting the camera x]
				//[setting the camera y]
				[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
				[scr_cutscene_wait,1],
				[scr_cutscene_move_character,o_bunbun,552,520,false,1,true,true],
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