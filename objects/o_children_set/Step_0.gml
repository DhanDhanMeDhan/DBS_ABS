var _array_size=array_length(children_array)-1;
if(i>_array_size){
	with(o_cutscene){
		scr_cutscene_continue();
	}
	instance_destroy();
}else{
	var xx=children_array[i][1];
	var yy=children_array[i][2];
	var lay=children_array[i][3];
	var act=children_array[i][4];
	var obj=children_array[i][5];
	var ppl_spr=children_array[i][6];
	var ppl_spd=children_array[i][7];
	var p_set=children_array[i][8];
	var p_pth=children_array[i][9];
	var p_spd=children_array[i][10];
	var p_act=children_array[i][11];
	var p_abs=children_array[i][12];
	if(!instance_exists(obj)){
		children_array[i][0]=true;
		with(instance_create_layer(xx,yy,lay,obj)){
			ppl_act_state=act;
			if(ppl_act_state!=ppl_act.custom){
				direction=ppl_spr;
				if(p_set){
					spd=p_spd;
					ppl_path_index=p_pth;
					path_start(p_pth,p_spd,p_act,p_abs);
				}
			}else{
				sprite_index=ppl_spr;
				ppl_custom_img_spd=ppl_spd;
				image_speed=ppl_spd;
				
			}
			image_index=floor(irandom_range(0,sprite_get_number(ppl_spr)))
		}
	}
	i++;
}