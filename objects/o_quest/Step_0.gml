//============================================================
//setting the quests
//============================================================
#region
var _max=array_length(quest_array)-1;
if(quest_index>_max){
	complete=true;
}else{
	complete=false;
	switch quest_array[quest_index][0]{
		#region quest part non avaliable
		case -1: 
			non_avaliable=true;
			break;
		#endregion
		#region quest part in progress
		case 0: 
			non_avaliable=false;
			if(global.player!=-1)and(instance_exists(global.player)){
				switch quest_array[quest_index][1]{
					#region switch clothes
					case quest_type.switch_clothes:
						var _clothes=quest_array[quest_index][2];
						if(global.player.clothe==_clothes){
							quest_array[quest_index][0]=1;
						}else{
							quest_array[quest_index][0]=0;
						}
						break;
					#endregion
					//============================================================
					#region have an item
					case quest_type.have_item:
						var _item=quest_array[quest_index][2];
						for(var i=0;i<array_length(global.inventory);i++){
							if(global.inventory[i][0]==_item) quest_array[quest_index][0]=1;
						}
						break;
					#endregion
					//============================================================
					#region go to
					case quest_type.go_to:
						var _place=[quest_array[quest_index][2][0],quest_array[quest_index][2][1]];
						if(point_distance(global.player.x,global.player.y,_place[0],_place[1])<=8){
							quest_array[quest_index][0]=1;
						}
						break;
					#endregion
					//============================================================
					#region talk to
					case quest_type.talk_to:
						var _person=quest_array[quest_index][2];
						if(instance_exists(_person)){
							if(_person.ppl_talked==true){
								quest_array[quest_index][0]=1;
							}
						}
						break;
					#endregion
					//============================================================
					#region someone exists
					case quest_type.someone_exist:
						var _person=quest_array[quest_index][2];
						if(instance_exists(_person)){
							if(instance_exists(_person)){
								quest_array[quest_index][0]=1;
							}
						}
						break;
					#endregion
					//============================================================
					#region
					case quest_type.someone_party:
						var _person=quest_array[quest_index][2];
						if(instance_exists(_person)){
							for(var i=0;i<array_length(global.party);i++){
								if(_person==global.party[i][0]){
									quest_array[quest_index][0]=1;
								}
							}
						}
					#endregion
				}
			}
			break;
		#endregion
		#region quest part complete
		case 1: 
			non_avaliable=false;
			quest_index++;
			if(quest_index>_max){
				//quest_index=_max;
				complete=true;
				exit;
			}
			quest_array[quest_index][0]=0;	
			break;
		#endregion
	}
}
#endregion
//============================================================
//setting the cutscenes
//============================================================
#region
if(non_avaliable){
	t_cutscene_play=non_avaliable_cutscene;
}else{
	if(!complete){
		t_cutscene_play=non_complete_cutscene[quest_index];
	}else{
		t_cutscene_play=complete_cutscene;
	}
}

//if(t_cutscene_play==-1){image_blend=c_red}else{image_blend=c_green}
#endregion