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
	var spr=children_array[i][6];
	var spd=children_array[i][7];
	if(!instance_exists(obj)){
		children_array[0]=true;
		with(instance_create_layer(xx,yy,lay,obj)){
			ppl_act_state=act;
			if(ppl_act_state!=ppl_act.custom){
				direction=spr;
			}else{
				sprite_index=spr;
				ppl_custom_img_spd=spd;
				image_speed=spd;
			}
			image_index=floor(irandom_range(0,sprite_get_number(spr)))
		}
	}
	i++;
}