if(global.pause)or(!window_has_focus()) exit;
//============================================================
//creating the person
//============================================================
timer++;
if(timer>=choose(1.25,2)*game_get_speed(gamespeed_fps)){
	for(var i=0;i<array_length(control_people[current_people]);i++){
		var _obj=control_people[current_people][i][0];
		var xx=control_people[current_people][i][1];
		var yy=control_people[current_people][i][2];
		var _spd=control_people[current_people][i][3];
		var _path=control_people[current_people][i][4];
		if(!instance_exists(_obj)){
			with(instance_create_layer(xx,yy,"Instances_People_2",_obj)){
				spd=_spd;
				ppl_do_path_act=path_act.delet;
				path_start(_path,1,path_action_stop,true);
			}
		}
	}
	current_people++;
	if(current_people>=array_length(control_people)){
		instance_destroy();
	}
	timer=0;
}

x=o_camera.x;
y=o_camera.y;