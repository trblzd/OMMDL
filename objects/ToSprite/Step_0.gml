/// @description Inserir descrição aqui
// Verifica arrasto apenas se o objeto não está colado e nenhum outro está sendo arrastado
if (!colado && global.objeto_atual == noone) {
    if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
        dragging = true;
        global.objeto_atual = id;
    }
}

// Finaliza o arrasto ao soltar o botão esquerdo do mouse
if (dragging && mouse_check_button_released(mb_left)) {
    dragging = false;
    global.objeto_atual = noone;
}

// Move o objeto enquanto arrastado
if (dragging) {
    x = mouse_x;
    y = mouse_y;
}

// Checa colisão com o respectivo "Cola" e posiciona
if (!colado && place_meeting(x, y, ToCola)) {
    dragging = false;
    colado = true;
    x = ToCola.snap_x;
    y = ToCola.snap_y;
    global.objeto_atual = noone;
    global.mapas += 1;
}
