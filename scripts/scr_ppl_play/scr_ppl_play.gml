function scr_ppl_play(_spd,_dir){
	global.player=id;
	global.party[0][0]=id;
	persistent=true;
	var _xaxis,_yaxis,_len_x,_len_y,movex,movey;
	scr_inputs();
	if(!instance_exists(o_cutscene))and(ppl_can_play){
		_xaxis=(global.input_move_right)-(global.input_move_left);
		_yaxis=(global.input_move_down)-(global.input_move_up);
	}else{
		_xaxis=0;
		_yaxis=0;
	}
	if(_xaxis!=0)or(_yaxis!=0){
		_dir=point_direction(0,0,_xaxis,_yaxis);
		var movex=lengthdir_x(_spd,_dir);
		var movey=lengthdir_y(_spd,_dir);
		if(place_meeting(x+movex,y,block)){
			while(!place_meeting(x+sign(movex),y,block)){x+=sign(movex)}
			movex=0;
		}else{x+=movex}
		if(place_meeting(x,y+movey,block)){
			while(!place_meeting(x,y+sign(movey),block)){y+=sign(movex)}
			movey=0;
		}else{y+=movey}
	}
	if((x!=xprevious)or(y!=yprevious)){
		for(var i=array_size-1;i>0;i--){
			pos_x[i]=pos_x[i-1];
			pos_y[i]=pos_y[i-1];
		}
		pos_x[0]=x;
		pos_y[0]=y;
	}
	return _dir;
}