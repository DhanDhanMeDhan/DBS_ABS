non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["O berço do 54..."]],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Me pergunto qual será o seu nome"]],
	[scr_cutscene_wait,1],
	[scr_cutscene_bars,true,false],
]
switch global.day{
	case 0:
		if(global.event[0][5]==progress.non_complete){
			#region
			quest_array=[
				[0,quest_type.talk_to,o_bunbun]
			];
			non_complete_cutscene[0]=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["O berço do 54..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Não vejo sua pelúcia aqui, Petter"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Tudo bem, vamos ver em outros berços"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["A pelúcia não está com ele"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			#endregion
		}
		break;
}