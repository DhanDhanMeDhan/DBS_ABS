event_inherited();
//============================================================
//creating the object
//============================================================
visible=false;
image_speed=0;
switch global.time{
	case time.day:
		image_index=0;
		break;
	case time.night:
		image_index=1;
		break;
}
can_interact=false;