/// @description Inserir descrição aqui
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
    dragging = true;
}

// Finaliza o arrasto ao soltar o botão esquerdo do mouse
if mouse_check_button_released(mb_left) {
    dragging = false;
}

// Movimenta o objeto enquanto está sendo arrastado
if dragging {
    x = mouse_x;
    y = mouse_y;
}

// Verifica colisão com MGCola
if place_meeting(x, y, MaCola) {
    dragging = false; // Para o arrasto
    x = MaCola.snap_x;     // Posiciona o objeto na posição desejada
    y = MaCola.snap_y;
}