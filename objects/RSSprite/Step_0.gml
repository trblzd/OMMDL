/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
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

// Verifica colisão com PSCola
if place_meeting(x, y, RSCola) {
    dragging = false; // Para o arrasto
    x = RSCola.snap_x;     // Posiciona o objeto na posição desejada
    y = RSCola.snap_y;
}