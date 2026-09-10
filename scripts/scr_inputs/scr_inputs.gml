function scr_inputs(){
    //============================================================
    // VERIFICA SE O CONTROLE ESTÁ CONECTADO
    //============================================================
    var _gamepad_connected = gamepad_is_connected(0);
    
    //============================================================
    // INPUTS DE CONFIRMAÇÃO E CANCELAMENTO
    //============================================================
    global.input_confirm = (
        (keyboard_check_pressed(global.key_confirm[0])) or 
        (keyboard_check_pressed(global.key_confirm[1])) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_face2)) or // B no Xbox, Círculo no PS
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_start))   // Start/Options
    );
    
    global.input_cancel = (
        (keyboard_check_pressed(global.key_cancel[0])) or 
        (keyboard_check_pressed(global.key_cancel[1])) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_face1)) or // A no Xbox, Cruz no PS
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_select))   // Select/Back
    );
    
    //============================================================
    // INPUTS DE SELEÇÃO (PRESS - para menus, navegação)
    //============================================================
    global.input_select_down = (
        (keyboard_check_pressed(global.key_down[0])) or 
        (keyboard_check_pressed(global.key_down[1])) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_padd)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislv) > 0.5)) // Analógico ESQUERDO para baixo
    );
    
    global.input_select_up = (
        (keyboard_check_pressed(global.key_up[0])) or 
        (keyboard_check_pressed(global.key_up[1])) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_padu)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislv) < -0.5)) // Analógico ESQUERDO para cima
    );
    
    global.input_select_left = (
        (keyboard_check_pressed(global.key_left[0])) or 
        (keyboard_check_pressed(global.key_left[1])) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_padl)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislh) < -0.5)) // Analógico ESQUERDO para esquerda
    );
    
    global.input_select_right = (
        (keyboard_check_pressed(global.key_right[0])) or 
        (keyboard_check_pressed(global.key_right[1])) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_padr)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislh) > 0.5)) // Analógico ESQUERDO para direita
    );
    
    //============================================================
    // INPUTS DE MOVIMENTO (HOLD - para personagem, movimento contínuo)
    //============================================================
    global.input_move_down = (
        (keyboard_check(global.key_down[0])) or 
        (keyboard_check(global.key_down[1])) or
        (_gamepad_connected and gamepad_button_check(0, gp_padd)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislv) > 0.3)) // Analógico ESQUERDO para baixo
    );
    
    global.input_move_up = (
        (keyboard_check(global.key_up[0])) or 
        (keyboard_check(global.key_up[1])) or
        (_gamepad_connected and gamepad_button_check(0, gp_padu)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislv) < -0.3)) // Analógico ESQUERDO para cima
    );
    
    global.input_move_left = (
        (keyboard_check(global.key_left[0])) or 
        (keyboard_check(global.key_left[1])) or
        (_gamepad_connected and gamepad_button_check(0, gp_padl)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislh) < -0.3)) // Analógico ESQUERDO para esquerda
    );
    
    global.input_move_right = (
        (keyboard_check(global.key_right[0])) or 
        (keyboard_check(global.key_right[1])) or
        (_gamepad_connected and gamepad_button_check(0, gp_padr)) or
        (_gamepad_connected and (gamepad_axis_value(0, gp_axislh) > 0.3)) // Analógico ESQUERDO para direita
    );
    
    //============================================================
    // INPUT DE PAUSE
    //============================================================
    global.input_pause = (
        keyboard_check_pressed(global.key_pause) or
        (_gamepad_connected and gamepad_button_check_pressed(0, gp_start))
    );
}