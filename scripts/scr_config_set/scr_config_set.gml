function scr_config_set(){
	enum menu_element_type{
		input,
		shift,
		volume,
		toggle
	}
	enum menu_element_act{
		resolution,
		volume_mst,
		volume_bgm,
		volume_bgs,
		volume_sfx,
		screen,
		paper,
		key,
		lang
	}
	ds_menu_options=[
		[
			[["Idioma","Idioma","Language"],menu_element_type.shift,global.lang,[0,2],menu_element_act.lang]
		],
		[
			[["Mestre","Master","Master"],menu_element_type.volume,global.volume_master*10,[0,10],menu_element_act.volume_mst],
			[["Música","Canciones","Music"],menu_element_type.volume,global.volume_bgm*10,[0,10],menu_element_act.volume_bgm],
			[["Sons de fundo","Sonidos de fundo","Background sound"],menu_element_type.volume,global.volume_bgs*10,[0,10],menu_element_act.volume_bgs],
			[["Efeitos sonoros","Efectos sonoros","Sound Effects"],menu_element_type.volume,global.volume_sfx*10,[0,10],menu_element_act.volume_sfx],
		],
		[
			[["Tela cheia","Pantalla completa","Full screen"],menu_element_type.toggle,global.window_mode,[0,1],menu_element_act.screen],
			[["Resolução","Resolución","Resolution"],menu_element_type.shift,global.resolution,[0,4],menu_element_act.resolution],
			[["Efeito Papel","Efecto Papel","Paper Effect"],menu_element_type.toggle,global.paper,[0,1],menu_element_act.paper],
		],
		[
			[["Cima","Arriba","Up"],menu_element_type.input,"key_up",[global.key_up[0],global.key_up[1]],menu_element_act.key],
			[["Baixo","Bajo","Down"],menu_element_type.input,"key_down",[global.key_down[0],global.key_down[1]],menu_element_act.key],
			[["Esquerda","Izquierda","Left"],menu_element_type.input,"key_left",[global.key_left[0],global.key_left[1]],menu_element_act.key],
			[["Direita","Derecha","Right"],menu_element_type.input,"key_right",[global.key_right[0],global.key_right[1]],menu_element_act.key],
			[["Conformar","Confirmar","Confirm"],menu_element_type.input,"key_confirm",[global.key_confirm[0],global.key_confirm[1]],menu_element_act.key],
			[["Cancelar","Cancelar","Cancel"],menu_element_type.input,"key_cancel",[global.key_cancel[0],global.key_cancel[1]],menu_element_act.key],
			[["Pausa","Pause","Pause"],menu_element_type.input,"key_pause",[global.key_pause],menu_element_act.key],
		]
	]
	return ds_menu_options
}