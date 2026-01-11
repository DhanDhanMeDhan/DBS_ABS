event_inherited();
//============================================================
//triggering
//============================================================
if(instance_exists(global.player)){
	var xx=global.player.x+32*cos(degtorad(global.player.direction));
	var yy=(global.player.y-32*sin(degtorad(global.player.direction)))-2;
	if(!global.pause)and((!instance_exists(o_cutscene))and(t_cutscene_play!=-1)and(can_interact)){
		if(distance_to_object(global.player)<=16)and(collision_line(global.player.x,global.player.y,xx,yy,id,false,false)and(z==global.player.z)and(global.player.ppl_can_play)){
			interact=true;
			scr_inputs();
			if(global.input_confirm) scr_cutscene_create(t_cutscene_play);
		}else{interact=false;}
	}else{interact=false;}
}