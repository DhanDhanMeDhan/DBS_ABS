function scr_ppl_run(){
	y+=2;
	if(self==o_bunbun){
		if(array_length(global.party)>1){
			sprite_index=s_bunbun_pijama_basement_flee_2;
		}else{
			sprite_index=s_bunbun_pijama_basement_flee_1;
		}
		global.player=id;
		global.party[0][0]=id;
		persistent=true;
		var _xaxis,_len_x,movex;
		scr_inputs();
		if(!instance_exists(o_cutscene))and(ppl_can_play){
			_xaxis=(global.input_move_right)-(global.input_move_left);
		}else{
			_xaxis=0;
		}
		if(_xaxis!=0){
			var _dir=point_direction(0,0,_xaxis,-1);
			var movex=lengthdir_x(_spd,_dir);
			if(place_meeting(x+movex,y,block)){
				while(!place_meeting(x+sign(movex),y,block)){x+=sign(movex)}
				movex=0;
			}else{x+=movex}
		}
		if((x!=xprevious)or(y!=yprevious)){
			for(var i=array_size-1;i>0;i--){
				pos_x[i]=pos_x[i-1];
				pos_y[i]=pos_y[i-1];
			}
			pos_x[0]=x;
			pos_y[0]=y;
		}
	}
	direction=270;
}