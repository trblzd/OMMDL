/// @description Logica
// Checar se o mouse está pressionado
if (mouse_check_button(mb_left)) {
    // Apenas começa a desenhar se o mouse estiver sendo arrastado
    if (!paint_active) {
        paint_active = true;

        // Inicializa as posições anteriores
        prev_mouse_x = mouse_x;
        prev_mouse_y = mouse_y;
    }

    // Atualiza a superfície para desenhar
    surf_painting_update = true;

} else if (paint_active) {
    // Se o mouse não estiver pressionado, para de desenhar
    paint_active = false;

    // Reseta as posições anteriores para evitar linhas indesejadas
    prev_mouse_x = -1;
    prev_mouse_y = -1;
}