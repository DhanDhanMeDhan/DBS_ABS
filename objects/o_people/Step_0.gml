event_inherited();
if(global.pause)or(!window_has_focus()){
	image_speed=0;
	path_speed=0;
	exit;
}else{
	//============================================================
	//physics
	//============================================================
	#region
	if(ppl_act_state!=ppl_act.custom){
		switch ppl_act_state{
			case ppl_act.play: direction=scr_ppl_play(spd,direction); break;
			case ppl_act.flow: direction=scr_ppl_flow(spd,direction); break;
			case ppl_act.run: scr_ppl_run(); break;
			case ppl_act.npc: break;
			case ppl_act.custom: ppl_anm_state=ppl_anm.custom; break;
		}
	}
	path_speed=spd;

	if(ppl_looking_to){
		if(instance_exists(ppl_to_look_at)){
			direction=point_direction(x,y,ppl_to_look_at.x,ppl_to_look_at.y);
		}
	}
	#endregion
	//============================================================
	//animation
	//============================================================
	#region
	#region selecting clothes
	switch clothe{
		case clothes.casual:
			#region casual
			#region idle alination
			spr_idle_down=spr_casual_idle_down;
			spr_idle_downleft=spr_casual_idle_downleft;
			spr_idle_downright=spr_casual_idle_downright;
			spr_idle_left=spr_casual_idle_left;
			spr_idle_right=spr_casual_idle_right;
			spr_idle_up=spr_casual_idle_up;
			spr_idle_upleft=spr_casual_idle_upleft;
			spr_idle_upright=spr_casual_idle_upright;
			#endregion
			//============================================================
			#region walk animation
			spr_walk_down=spr_casual_walk_down;
			spr_walk_downleft=spr_casual_walk_downleft;
			spr_walk_downright=spr_casual_walk_downright;
			spr_walk_left=spr_casual_walk_left;
			spr_walk_right=spr_casual_walk_right;
			spr_walk_up=spr_casual_walk_up;
			spr_walk_upleft=spr_casual_walk_upleft;
			spr_walk_upright=spr_casual_walk_upright;
			#endregion
			//============================================================
			#region talk animation
			spr_talk_down=spr_casual_talk_down;
			spr_talk_downleft=spr_casual_talk_downleft;
			spr_talk_downright=spr_casual_talk_downright;
			spr_talk_left=spr_casual_talk_left;
			spr_talk_right=spr_casual_talk_right;
			spr_talk_up=spr_casual_talk_up;
			spr_talk_upleft=spr_casual_talk_upleft;
			spr_talk_upright=spr_casual_talk_upright;
			#endregion
			#endregion
			break;
		case clothes.pijama:
			#region pijama
			#region idle alination
			spr_idle_down=spr_pijama_idle_down;
			spr_idle_downleft=spr_pijama_idle_downleft;
			spr_idle_downright=spr_pijama_idle_downright;
			spr_idle_left=spr_pijama_idle_left;
			spr_idle_right=spr_pijama_idle_right;
			spr_idle_up=spr_pijama_idle_up;
			spr_idle_upleft=spr_pijama_idle_upleft;
			spr_idle_upright=spr_pijama_idle_upright;
			#endregion
			//============================================================
			#region walk animation
			spr_walk_down=spr_pijama_walk_down;
			spr_walk_downleft=spr_pijama_walk_downleft;
			spr_walk_downright=spr_pijama_walk_downright;
			spr_walk_left=spr_pijama_walk_left;
			spr_walk_right=spr_pijama_walk_right;
			spr_walk_up=spr_pijama_walk_up;
			spr_walk_upleft=spr_pijama_walk_upleft;
			spr_walk_upright=spr_pijama_walk_upright;
			#endregion
			//============================================================
			#region talk animation
			spr_talk_down=spr_pijama_talk_down;
			spr_talk_downleft=spr_pijama_talk_downleft;
			spr_talk_downright=spr_pijama_talk_downright;
			spr_talk_left=spr_pijama_talk_left;
			spr_talk_right=spr_pijama_talk_right;
			spr_talk_up=spr_pijama_talk_up;
			spr_talk_upleft=spr_pijama_talk_upleft;
			spr_talk_upright=spr_pijama_talk_upright;
			#endregion
			#endregion
			break;
	}
	#endregion
	//============================================================
	#region selecting the sprite
		switch ppl_anm_state{
			case ppl_anm.custom: image_speed=ppl_custom_img_spd; break;
			#region idle
			case ppl_anm.idle:
				spr_down=spr_idle_down;
				spr_downleft=spr_idle_downleft;
				spr_downright=spr_idle_downright;
				spr_left=spr_idle_left;
				spr_right=spr_idle_right;
				spr_up=spr_idle_up;
				spr_upleft=spr_idle_upleft;
				spr_upright=spr_idle_upright;
				image_speed=.2;
				break;
			#endregion
			#region walk
			case ppl_anm.walk:
				spr_down=spr_walk_down;
				spr_downleft=spr_walk_downleft;
				spr_downright=spr_walk_downright;
				spr_left=spr_walk_left;
				spr_right=spr_walk_right;
				spr_up=spr_walk_up;
				spr_upleft=spr_walk_upleft;
				spr_upright=spr_walk_upright;
				image_speed=.2;
				break;
			#endregion
			#region talk
			case ppl_anm.talk:
				spr_down=spr_talk_down;
				spr_downleft=spr_talk_downleft;
				spr_downright=spr_talk_downright;
				spr_left=spr_talk_left;
				spr_right=spr_talk_right;
				spr_up=spr_talk_up;
				spr_upleft=spr_talk_upleft;
				spr_upright=spr_talk_upright;
				image_speed=.25;
				break;
			#endregion
		}
	#endregion
	//============================================================
	#region animating
	if(ppl_act_state!=ppl_act.custom){
		if((x!=xprevious)or(y!=yprevious))or((path_index!=-1)and(path_speed!=0)){
			ppl_anm_state=ppl_anm.walk;
		}else{
			if(!ppl_talk){ppl_anm_state=ppl_anm.idle;}else{ppl_anm_state=ppl_anm.talk;}
		}
		switch floor((direction+22.5)/45){
			case 0: sprite_index=spr_right; break;
			case 1: sprite_index=spr_upright; break;
			case 2: sprite_index=spr_up; break;
			case 3: sprite_index=spr_upleft; break;
			case 4: sprite_index=spr_left; break;
			case 5: sprite_index=spr_downleft; break;
			case 6: sprite_index=spr_down; break;
			case 7: sprite_index=spr_downright; break;
			default: sprite_index=spr_right; break;
		}
	}else{
		
	}
	#endregion
	#endregion
	//============================================================
	//chechink if are two of them
	//============================================================
	#region
	var _num=instance_number(object_index);
	if(_num>1){
		for(var i=1;i<_num;i++){
			var _inst=instance_find(object_index,i);
			with(_inst){instance_destroy();}
		}
	}
	#endregion
}