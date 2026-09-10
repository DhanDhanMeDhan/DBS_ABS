//============================================================
//mostrando logo dos criadores
//============================================================
#region
if(timer<=2*TIMER){
	timer++;
}else{
	if(!show_creator_logo){
		repeat creator_num{
			if(!logo[current_logo][2]){
				if(logo[current_logo][0]<=1){
					logo[current_logo][0]+=.025;
				}else{
					var _sec;
					if(current_logo!=0){
						_sec=6;
					}else{
						if(!audio_is_playing(sfx_000))and(!audio_played){
							audio_play_sound(sfx_000,0,false);
							audio_played=true;
						}
						_sec=12;
					}
					logo[current_logo][1]++;
					if(logo[current_logo][1]>=_sec*TIMER){
						logo[current_logo][2]=true;
					}
				}
			}else{
				if(logo[current_logo][0]>=0){
					logo[current_logo][0]-=.025;
				}else{
					if(current_logo<2){
						current_logo++;
					}else{
						show_creator_logo=true;
					}
				}
			}
		}
	}else{
		//quando finalizado, ele diz ao objeto do menu principal
		//que tudo está certinho e que pode executar sem problemas :D
		with(o_main_menu){
			main_menu_level[2][0]=true;
			logo_intro_show=true;
		}
		instance_destroy();
	}
}
#endregion