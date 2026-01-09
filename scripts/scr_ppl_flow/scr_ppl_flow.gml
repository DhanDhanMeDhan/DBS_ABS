function scr_ppl_flow(_spd,_dir){
	persistent=true;
	var _temp_dir;
	if(ppl_flowing){
		var xx=global.player.pos_x[pos];
		var yy=global.player.pos_y[pos];
		if(x!=pos_x[pos-1])or(y!=pos_y[pos-1]) _dir=point_direction(x,y,global.player.pos_x[pos-1],global.player.pos_y[pos-1]);
		_temp_dir=point_direction(x,y,xx,yy);
		if(point_distance(x,y,xx,yy)>=_spd){
			x+=lengthdir_x(_spd,_temp_dir);
			y+=lengthdir_y(_spd,_temp_dir);
		}else{
			x=xx;
			y=yy;
		}
	}
	return _dir;
}