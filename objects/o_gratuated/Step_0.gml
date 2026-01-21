event_inherited();
if(anim_start){
	var spr,tim,spd,snd,spr_num;
	if(current_sprite<array_length(sprites)){
		spr=sprites[current_sprite][0];
		tim=sprites[current_sprite][1];
		spd=sprites[current_sprite][2];
		snd=sprites[current_sprite][3];
			if(!finnished_anim){
				sprite_index=spr;
				timer=0;
				ppl_custom_img_spd=spd;
				image_speed=spd;
				if(!played_audio)and(snd!=-1){
					var audio=audio_play_sound(snd,10,false);
					audio_sound_gain(audio,0,0);
					audio_sound_gain(audio,1,0);
					played_audio=true;
				}
			}else{
				ppl_custom_img_spd=0;
				image_speed=0;
				image_index=sprite_get_number(spr)-1;
			}
	
		if(finnished_anim){
			timer++;
			if(timer>=tim*60){
				if(current_sprite+1<array_length(sprites)){
					sprite_index=sprites[current_sprite+1][0];
					image_index=0;
				}
				current_sprite++;
				finnished_anim=false;
				played_audio=false;
			}
		}
	}else{
		image_index=sprite_get_number(s_gratuated_arms_2)-1;
		image_speed=0;
		show_hand=true;
	}
	if(show_hand){
	
	}
}else{
}