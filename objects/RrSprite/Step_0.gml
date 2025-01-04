/// @description Inserir descrição aqui
// Permite arrastar apenas se não estiver colado e nenhum outro objeto está sendo arrastado
if (!colado && global.objeto_atual == noone) {
    if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
        dragging = true;
        global.objeto_atual = id; // Define este como o objeto atual
    }
}

// Para o arrasto ao soltar o botão esquerdo do mouse
if (dragging && mouse_check_button_released(mb_left)) {
    dragging = false;
    global.objeto_atual = noone; // Libera para outros objetos
}

// Movimenta o objeto enquanto está sendo arrastado
if (dragging) {
    x = mouse_x;
    y = mouse_y;
}

// Verifica colisão com o objeto Cola e posiciona o objeto
if (!colado && place_meeting(x, y, RrCola)) {
    dragging = false;       // Para o arrasto
    colado = true;          // Marca o objeto como colado
    x = RrCola.snap_x;      // Posiciona o objeto na posição final
    y = RrCola.snap_y;
    global.objeto_atual = noone; // Libera o controlador para outros objetos
    global.mapas += 1;      // Incrementa a contagem global
}
