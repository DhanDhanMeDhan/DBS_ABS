function scr_cutscene_talk_animated(){
	scr_cutscene_talk(argument0,argument1,argument2,argument3);
	var _dir,_spr,_obj=argument1;
	var _intr=argument4[0],_idle=argument4[1],_talk=argument4[2];
	var _use_intr=argument5,_use_dir=argument6,_spd=argument7;
	with(_obj){
		ppl_act_state=ppl_act.custom;
		ppl_anm_state=ppl_anm.custom;
		if(_use_dir){
			_dir=floor((direction)+45)/90;
			if(_dir==4) _dir=0;
		}else{_dir=0;}
		if(o_cutscene.cutscene_timer<=2){
			o_cutscene.cutscene_timer++;
			image_index=0;
		}else{
			if(_use_intr)and(!o_cutscene.cutscene_sprite_drawed)and(!o_cutscene.cutscene_letter_finished){
				_spr=_intr[_dir];
				ppl_custom_img_spd=_spd[0];
				var _spr_num=sprite_get_number(_spr)-1;
				if(image_index>=_spr_num){
					_use_intr=false;
					o_cutscene.cutscene_sprite_drawed=true;
				}
			}else{
				if(!o_cutscene.cutscene_letter_finished){
					_spr=_talk[_dir];
					ppl_custom_img_spd=_spd[2];
				}else{
					_spr=_idle[_dir];
					ppl_custom_img_spd=_spd[1];
				}
			}
			image_speed=ppl_custom_img_spd;
			sprite_index=_spr;
		}
	}
}