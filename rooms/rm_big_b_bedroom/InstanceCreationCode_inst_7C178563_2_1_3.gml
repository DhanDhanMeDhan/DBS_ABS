non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,x,y],
	[scr_cutscene_wait,1],
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
	[scr_cutscene_room_goto,rm_corridors,true],
	[scr_cutscene_variable,variable.normal,o_bunbun,"x",917],
	[scr_cutscene_variable,variable.normal,o_bunbun,"y",209],
	[scr_cutscene_refresh_party_member,true],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
	[scr_cutscene_variable,variable.normal,o_camera,"x",917],
	[scr_cutscene_variable,variable.normal,o_camera,"y",239],
	//[setting the camera x]
	//[setting the camera y]
	[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,906,328],
	[scr_cutscene_wait,1],
	[scr_cutscene_move_character,o_bunbun,917,239,false,1,true,true],
	[scr_cutscene_refresh_party_member,false],
	[scr_cutscene_wait,1],
	[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
	[scr_cutscene_variable,variable.nearst,o_door_1,"open",false,906,328],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
];
if(global.event[0][3]==progress.non_complete){
	quest_array=[
		[0,quest_type.have_item,item.irrigator],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_3_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_4_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_5_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_6_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_7_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_8_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_9_1],
		[-1,quest_type.talk_to,o_big_b_bedroom_detail_10_1],
		[-1,quest_type.have_item,item.uncle_spices],
	];
	non_complete_cutscene[0]=[
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Oshe! Para onde tu tá indo?"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["O regador está ali embaixo"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh! Desculpe, eu não tinha visto"]],
		[scr_cutscene_wait,1],
		[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_bars,true,false],
	];
	var i=1; repeat array_length(quest_array)-2{
		non_complete_cutscene[i]=[
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah, qual é, BunBun! Pensei que tu gostava de trabalhar"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Tá parecendo o Larry assim"]],
		[scr_cutscene_wait,1],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Eu tomei isso como um ataque pessoal"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["To achando que você me odeia"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Haa-Haa!! Não não, apenas vamos terminar logo de aguar as plantas"]],
		[scr_cutscene_wait,1],
		[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_bars,true,false],
	];
		i++;
	}
	non_complete_cutscene[array_length(quest_array)-1]=[
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ah não! Não aguamos todas as plantas de graça"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Vamos lá pegar os temperos!"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Que cruel"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Não é você quem gosta de ajudar? Estavamos aqui para ajudar a Mamãe primeiramente"]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh, desculpe..."]],
		[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Ai ai, BunBun, vamos lá pegar os temperos com o Tio Big B"]],
		[scr_cutscene_wait,1],
		[scr_cutscene_move_character,o_bunbun,0,8,true,.5,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_bars,true,false],
	];
	complete_cutscene=[
		[scr_cutscene_bars,true,true],
		[scr_cutscene_wait,1],
		[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,x,y],
		[scr_cutscene_wait,1],
		[scr_cutscene_circle_wake_up,true,true,-1,-1,true,false,false,make_color_rgb(36,34,52)],//[scr_cutscene_transition,cutscene_transition_type.bars,true,true,-1,make_color_rgb(36,34,52)],
		[scr_cutscene_room_goto,rm_corridors,true],
		[scr_cutscene_variable,variable.normal,o_door_3,"ppl_talked",true],
		[scr_cutscene_variable,variable.normal,o_bunbun,"x",917],
		[scr_cutscene_variable,variable.normal,o_bunbun,"y",209],
		[scr_cutscene_refresh_party_member,true],
		[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",false],
		[scr_cutscene_variable,variable.normal,o_camera,"x",917],
		[scr_cutscene_variable,variable.normal,o_camera,"y",239],
		//[setting the camera x]
		//[setting the camera y]
		[scr_cutscene_circle_wake_up,true,true,-1,-1,true,true,false,make_color_rgb(36,34,52)],
		[scr_cutscene_wait,1],
		[scr_cutscene_variable,variable.nearst,o_door_1,"open",true,917,239],
		[scr_cutscene_wait,1],
		[scr_cutscene_move_character,o_bunbun,917,239,false,1,true,true],
		[scr_cutscene_refresh_party_member,false],
		[scr_cutscene_wait,1],
		[scr_cutscene_variable,variable.normal,o_camera,"flow_npc",true],
		[scr_cutscene_variable,variable.nearst,o_door_1,"open",false,917,239],
		[scr_cutscene_wait,1],
		[scr_cutscene_bars,true,false],
	
	]
}
