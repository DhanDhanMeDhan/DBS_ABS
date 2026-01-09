non_avaliable_cutscene=[
	[scr_cutscene_bars,true,true],
	[scr_cutscene_wait,1],
	[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["O berço do 50..."]],
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
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_talked",true],
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["O berço do 50..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh! Aí está, sua pelúcia!!"]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_petter],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["..."]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Petter...?"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Eu... Meio que já esperava que estivesse com um dos bebês..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Pelo menos está com um dos bebês..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Petter, nós conseguimos outra pelúcia para você, tudo bem?"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Tá tudo bem, BunBun"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Por estar com o 50, eu sei que está em boas mãos e isso me deixa mais calmo!..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh!... Tudo bem, se você diz, então tá tudo bem!!"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_variable,variable.normal,o_petter,"ppl_to_look_at",o_bunbun],
				[scr_cutscene_variable,variable.normal,o_petter,"ppl_looking_to",true],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["BunBun..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Sim?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Podemos ir fala com a Mamãe agora?..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh!! Claro! Vamos lá!"]],
				[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",false],
				[scr_cutscene_variable,variable.normal,o_petter,"ppl_looking_to",false],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false],
			];
			complete_cutscene=[
				[scr_cutscene_bars,true,true],
				[scr_cutscene_wait,1],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["50 vai cuidar bem da minha pelúcia"]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Digo..."]],
				[scr_cutscene_talk,cutscene_talk_mode.normal,o_petter,["Da pelúcia dele"]],
				[scr_cutscene_wait,1],
				[scr_cutscene_bars,true,false]
			];
			#endregion
		}
		break;
}