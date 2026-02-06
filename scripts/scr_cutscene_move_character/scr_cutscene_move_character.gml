function scr_cutscene_move_character(){
	var _obj=argument0,_relative=argument3,_spd=argument4,_animated=argument5,_same_dir=argument6;
	if(!instance_exists(_obj)){
		scr_cutscene_continue();
	}else{
		if(cutscene_x_dest==-1)or(cutscene_y_dest==-1){
			if(_relative){
				cutscene_x_dest=_obj.x+argument1;
				cutscene_y_dest=_obj.y+argument2;
			}else{
				cutscene_x_dest=argument1;
				cutscene_y_dest=argument2;
			}
		}
		var xx=cutscene_x_dest,yy=cutscene_y_dest;
		var _dir;
		with(_obj){
			if(point_distance(x,y,xx,yy)>=_spd){
				if(_same_dir){
					direction=point_direction(x,y,xx,yy);
					_dir=direction;
				}else{
					_dir=point_direction(x,y,xx,yy);
				}
				x+=lengthdir_x(_spd,_dir);
				y+=lengthdir_y(_spd,_dir);
				if(_animated) ppl_anm_state=ppl_anm.walk;
				if(id==global.player.id){
					for(var i=array_size-1;i>0;i--){
						pos_x[i]=pos_x[i-1];
						pos_y[i]=pos_y[i-1];
					}
					pos_x[0]=x;
					pos_y[0]=y;
				}
				//if(_animated)and(_obj!=global.player){
				//	people_act_state=people_act.walk;
				//}
			}else{
				x=xx;
				y=yy;
				if(_animated) ppl_anm_state=ppl_anm.idle;
				//if(_animated)and(_obj!=global.player){
				//	people_act_state=people_act.idle;
				//}
				with(other){
					cutscene_x_dest=-1;
					cutscene_y_dest=-1;
					scr_cutscene_continue();
				}
			}
		}
	}
}