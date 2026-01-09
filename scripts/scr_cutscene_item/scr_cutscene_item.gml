function scr_cutscene_item(){
	var _obj=argument0,_item_to_look=argument1,_item_to_place=argument2,_remove=argument4;
	cutscene_item_draw=argument3;
	if(o_cutscene.cutscene_item_place!=-1){
		if(o_cutscene.cutscene_item_draw){
			with(other){
				var _array_item=scr_inventory_set(global.inventory);
				cutscene_item_name=_array_item[cutscene_item_place][0][global.lang];
				audio_group_set_gain(audio_BGM,global.volume_master/4,500);
				audio_group_set_gain(audio_BGS,global.volume_master/4,500);
				scr_inputs();
				if(global.input_confirm){
					audio_group_set_gain(audio_BGM,global.volume_master,500);
					audio_group_set_gain(audio_BGS,global.volume_master,500);
					//audio_group_set_gain(audio_SFX,global.volume_master,500);
					cutscene_item_skip=true;
					scr_cutscene_continue();
				}
			}
		}else{
			scr_cutscene_continue();
		}
	}else{
		var i=0; repeat array_length(global.inventory){
			if(global.inventory[i][0]==_item_to_look){
				if(!_remove){global.inventory[i]=_item_to_place;}
				else{global.inventory[i]=[-1,-1];}
				if(o_cutscene.cutscene_item_draw) audio_play_sound(sfx_006,10,false);
				o_cutscene.cutscene_item_place=i;
				exit;
			}else{
				i++;
			}
		}
	}
	/*
	if(cutscene_timer<=2){
		cutscene_item_draw_yy=global.ch/3;
		cutscene_timer++;
	}else{
		cutscene_obj=argument0;
		var _item_to_look=argument1,_item_to_put=argument2;
		cutscene_item_draw=argument3;
			if(o_cutscene.cutscene_item_looking){
				for(var i=0; i<array_length(global.inventory);i++){
					if(global.inventory[i][0]==_item_to_look){
						global.inventory[i]=_item_to_put;
						o_cutscene.cutscene_item_place=i;
						if(o_cutscene.cutscene_item_draw) audio_play_sound(sfx_006,10,false);
						o_cutscene.cutscene_item_looking=false;
						
						exit;
					}else{
						i++;
					}
				}
				exit;
			}else{
				with(other){
					if(cutscene_item_draw){
						var _array_item=scr_inventory_sort(global.inventory);
						cutscene_item_name=_array_item[cutscene_item_place][0][global.lang];
						audio_group_set_gain(audio_BGM,global.volume_master/4,500);
						audio_group_set_gain(audio_BGS,global.volume_master/4,500);
						//audio_group_set_gain(audio_SFX,global.volume_master/4,500);
						scr_inputs();
						if(global.input_confirm){
							audio_group_set_gain(audio_BGM,global.volume_master,500);
							audio_group_set_gain(audio_BGS,global.volume_master,500);
							//audio_group_set_gain(audio_SFX,global.volume_master,500);
							cutscene_item_skip=true;
							scr_cutscene_continue();
						}
					}else{
						scr_cutscene_continue();
					}
			}
		}
	}
	*/
}