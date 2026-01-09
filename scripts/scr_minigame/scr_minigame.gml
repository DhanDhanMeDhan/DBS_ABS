function scr_minigame(_game,_ww,_wh){
	scr_minigame_functions(_game,_ww,_wh);
	var _spr_title,_c1=make_color_rgb(245,160,151),_c2=make_color_rgb(188,74,155);
	switch _game{
		case minigame_set.love_letter: _spr_title=s_hud_minigame_loveletter_tl; break;
		case minigame_set.freeze: _spr_title=s_hud_minigame_freeze_tl; break;
	}
	scr_minigame_current_game(_game,_c1,_c2,_ww,_wh);
	scr_minigame_score(_ww,_wh,_c1,_c2);
	draw_sprite_ext(_spr_title,0,0,minigame_level[1][1],1,1,0,c_white,1);
}