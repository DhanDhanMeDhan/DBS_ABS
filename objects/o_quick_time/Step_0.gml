if(!quick_button_end){
	switch quicktime_event_type{
		case quick_type.mult_press:
			#region
			#endregion
			break;
		case quick_type.spam_press:
			#region
			if(quick_button==-1){
				quick_button=quick_button_list[floor(random_range(0,9))];
			}else{
				//pressing the button
				if(keyboard_check_pressed(quick_button)){
					quick_button_current++;
				}
			
				//setting the limit
				timer++;
				if(timer>=quick_button_timer*60){
					quick_button_end=true;
				}
			}
			#endregion
			break;
	}
}else{
	if(quick_button_current>=quick_button_limit){
	}
}