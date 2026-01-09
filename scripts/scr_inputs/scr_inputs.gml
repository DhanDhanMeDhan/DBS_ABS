function scr_inputs(){
	//============================================================
	global.input_confirm=((keyboard_check_pressed(global.key_confirm[0]))or(keyboard_check_pressed(global.key_confirm[1])));
	global.input_cancel=((keyboard_check_pressed(global.key_cancel[0]))or(keyboard_check_pressed(global.key_cancel[1])));
	//============================================================
	global.input_select_down=((keyboard_check_pressed(global.key_down[0]))or(keyboard_check_pressed(global.key_down[1])));
	global.input_select_up=((keyboard_check_pressed(global.key_up[0]))or(keyboard_check_pressed(global.key_up[1])));
	global.input_select_left=((keyboard_check_pressed(global.key_left[0]))or(keyboard_check_pressed(global.key_left[1])));
	global.input_select_right=((keyboard_check_pressed(global.key_right[0]))or(keyboard_check_pressed(global.key_right[1])));
	//============================================================
	global.input_move_down=((keyboard_check(global.key_down[0]))or(keyboard_check(global.key_down[1])));
	global.input_move_up=((keyboard_check(global.key_up[0]))or(keyboard_check(global.key_up[1])));
	global.input_move_left=((keyboard_check(global.key_left[0]))or(keyboard_check(global.key_left[1])));
	global.input_move_right=((keyboard_check(global.key_right[0]))or(keyboard_check(global.key_right[1])));
	//============================================================
	global.input_pause=keyboard_check_pressed(global.key_pause);
}