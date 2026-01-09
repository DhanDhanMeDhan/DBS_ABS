var _ppl=children_playing,_xx,_yy;
if(room==rm_corridors){
	#region
	for(var i=0;i<array_length(_ppl);i++){
		if(_ppl[i][1]){
			_xx=_ppl[i][4];
			_yy=_ppl[i][5];
			if(!instance_exists(_ppl[i][0])){
				instance_create_layer(_xx,_yy,"Instances_People_1",_ppl[i][0]);
			}else{
				_ppl[i][0].ppl_to_look_at=o_bunbun;
				if(distance_to_object(_ppl[i][0])<120){
					_ppl[i][0].ppl_looking_to=true;
				}else{
					_ppl[i][0].ppl_looking_to=false;
					_ppl[i][0].direction=point_direction(_ppl[i][0].x,_ppl[i][0].y,593,577);
				}
				_ppl[i][0].ppl_act_state=ppl_act.npc;
				_ppl[i][0].x=_xx;
				_ppl[i][0].y=_yy;
			}
		}
	}
	#endregion
}

if(keyboard_check(vk_tab)){
	for(var i=0;i<array_length(_ppl);i++){
		children_playing[i][1]=true;	
	}
}