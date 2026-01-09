function scr_talk_moments(){
	var _t_cutscene_play;
	switch global.day{
		case 0:
			#region day 0
			if(global.event[0][0]==progress.non_complete){
				_t_cutscene_play=[
					[
						[
							[scr_cutscene_bars,true,true],
							[scr_cutscene_wait,1],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_todd],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_to_look_at",o_bunbun],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_looking_to",true],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oi Todd!!","Holi Todd!!","Hi Todd!!"],-1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["Tudo bem, BunBun?","¿Que tal, BunBun?","how's going, BunBun?"],-1],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",-1],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",false],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_to_look_at",-1],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_looking_to",false],
							[scr_cutscene_wait,1],
							[scr_cutscene_bars,true,false]
						],
						[
							[scr_cutscene_bars,true,true],
							[scr_cutscene_wait,1],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",o_todd],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",true],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_to_look_at",o_bunbun],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_looking_to",true],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["BunBun, você sabe que eu te amo, né?","BunBun, sabes que te quiero, no?","BunBun, you know that i love you, right?"],-1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Oh... Por que disso?","Oh... Por que de eso?","Oh... Why of that?"],-1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_todd,["E isso importa? Eu te amo","Y eso importa? Te quiero","And that matter? I love you"],-1],
							[scr_cutscene_talk,cutscene_talk_mode.normal,o_bunbun,["Ah!~ Que fofo! Eu também te amo, ursão!","Ah!~ Que bonito! También te quiero, osote!","Ah!~ How cute! I love you too, big bear!"],-1],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_to_look_at",-1],
							[scr_cutscene_variable,variable.normal,o_bunbun,"ppl_looking_to",false],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_to_look_at",-1],
							[scr_cutscene_variable,variable.normal,o_todd,"ppl_looking_to",false],
							[scr_cutscene_wait,1],
							[scr_cutscene_bars,true,false]
						]
					]
				];
			}else {
				_t_cutscene_play=[
					[
						[
							[scr_cutscene_bars,true,true],
							[scr_cutscene_wait,1],
							
						],
					]
				];
			}
			#endregion
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
	}
	var i=0; repeat array_length(global.event[0]){
		if(global.event[0][i]==progress.non_complete){
			var n=floor(random_range(0,array_length(_t_cutscene_play[i])));
			scr_cutscene_create(_t_cutscene_play[i][n]);
		}
		i++;
	}
}