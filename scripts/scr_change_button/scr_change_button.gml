function scr_change_button(_var){
	var _rpt,_ary;
	if(!is_array(_var)){
		_ary[0]=_var
		_rpt=1;
	}else{
		_rpt=array_length(_var);
		_ary=_var;
	}
	var _val;
	var i=0; repeat _rpt{
		switch _ary[i]{
			case -1: _val=["...","...","..."]; break;
			case vk_up: _val=["Seta para cima","Sieta hacia arriba","Up arrow"]; break;
			case vk_down: _val=["Seta para baixo","Sieta hacia bajo","Down arrow"]; break;
			case vk_left:  _val=["Seta para esquerda","Sieta hacia izquierda","Left arrow"]; break;
			case vk_right:  _val=["Seta para direita","Sieta hacia derecha","Right arrow"]; break;
			case vk_enter:  _val=["Enter","Entrar","Enter"]; break;
			case vk_space:	 _val=["Espaço","Barra espaciadora","Space"]; break;
			case vk_escape:  _val=["Esc","Escape","Esc"]; break;
			case vk_delete:  _val=["Deletar","Suprimir","Delete"]; break;
			case vk_end:  _val=["Fim","Fin","End"]; break;
			case vk_home:  _val=["Inicio","Inicio","Home"]; break;
			case vk_subtract:  _val=["Apagar","Retroceso","Subtract"]; break;
			default: _val=[chr(_ary[i]),chr(_ary[i]),chr(_ary[i])]; break;
		}
		i++;
	}
	return _val;
}