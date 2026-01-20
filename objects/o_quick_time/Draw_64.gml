var _text=-1;
switch quick_button{
	default: _text=-1; break;
	case ord("W"): _text="W" break;
	case ord("A"): _text="A" break;
	case ord("S"): _text="S" break;
	case ord("D"): _text="D" break;
	case ord("X"): _text="X" break;
	case ord("Z"): _text="Z" break;
	case ord("C"): _text="C" break;
	case ord("Q"): _text="Q" break;
	case ord("E"): _text="E" break;
	case global.input_select_down: _text="Baixo" break;
	case global.input_select_up: _text="Cima" break;
	case global.input_select_left: _text="Esquerda" break;
	case global.input_select_right: _text="Direita" break;
}

draw_text_color(global.player.x-global.cx,(global.player.y-16)-global.cy,string(quick_button_end),c_black,c_black,c_black,c_black,1);
draw_text_color(global.player.x-global.cx,global.player.y-global.cy,"Aperte "+string(_text),c_black,c_black,c_black,c_black,1);
draw_text_color(global.player.x-global.cx,(global.player.y+16)-global.cy,string(quick_button_current),c_black,c_black,c_black,c_black,1);
draw_text_color(global.player.x-global.cx,(global.player.y+32)-global.cy,string(timer),c_black,c_black,c_black,c_black,1);