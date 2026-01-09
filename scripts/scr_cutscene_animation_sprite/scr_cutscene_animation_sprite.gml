function scr_cutscene_animation_sprite(){
	var obj,_spr,sprite_firs,sprite_loop,use_dir,use_loop,spd;
	obj=argument0;
	sprite_firs=argument1;
	sprite_loop=argument2;
	use_dir=argument3;
	use_loop=argument4;
	spd=argument5;
	var up,left,right,down;
	with(obj){
		//if(object_get_parent(object_index)==o_person){people_act_state=people_act.custom;}
		ppl_act_state=ppl_act.custom;
		var _dir=floor((direction+45)/90);
		if(_dir==4) _dir=0;
		if(use_dir){_spr=sprite_firs[_dir];
		}else{_spr=sprite_firs[0];}
		var _spr_num=sprite_get_number(_spr)-1;
		sprite_index=_spr;
		ppl_custom_img_spd=spd[0];
		image_speed=ppl_custom_img_spd;
		if(o_cutscene.cutscene_timer<=2){
			o_cutscene.cutscene_timer++;
			image_index=0;
		}else{
			var _spr_num=sprite_get_number(_spr)-1;
			if(image_index>=_spr_num){
				ppl_custom_img_spd=spd[1];
				if(use_loop){
					if(use_dir){_spr=sprite_loop[_dir];
					}else{_spr=sprite_loop[0];}
				}
				sprite_index=_spr;
				image_speed=ppl_custom_img_spd;
				with(other){scr_cutscene_continue();}
			}
		}
	}
}