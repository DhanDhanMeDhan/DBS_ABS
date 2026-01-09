function scr_cutscene_refresh_party_member(){
	var _teleport=argument0;
	with(global.player){
		for(var i=array_size-1;i>=0;i--){
			pos_x[i]=x;
			pos_y[i]=y;
		}
	}
	var obj;
	var _num=array_length(global.party)-1;
	if(_num>0)and(_teleport){
		var i=1; repeat _num{
			obj=global.party[i][0];
			if(!instance_exists(obj)){
				var k=instance_create_layer(global.player.x,global.player.y,global.player.layer,obj);
				with(k){
					ppl_act_state=ppl_act.flow;
					persistent=true;
					pos=i*24;
				}
			}else{
				with(obj){
					x=global.player.pos_x[pos];
					y=global.player.pos_y[pos];
					direction=global.player.direction;
				}
			}
			i++;
			if(i>=_num){with(other){scr_cutscene_continue();}}
		}
	}else{
		scr_cutscene_continue();
	}
}