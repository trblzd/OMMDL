/// @description Desenhar na tela
  // Atualiza a superfície se necessário
if (surf_painting_update) {
    if (!surface_exists(surf_painting)) {
        surf_painting = surface_create(w_width, w_height);
    }

    surface_set_target(surf_painting);

    if (paint_active) {
        // Desenha uma linha entre a posição anterior e a posição atual
        if (prev_mouse_x != -1 && prev_mouse_y != -1) {
            draw_line_width_color(
                prev_mouse_x, prev_mouse_y, // Posição anterior
                mouse_x, mouse_y,           // Posição atual
                paint_width,                // Largura da linha
                global.vColor[|paint_color], global.vColor[|paint_color] // Cor
            );
        }

        // Atualiza a posição anterior
        prev_mouse_x = mouse_x;
        prev_mouse_y = mouse_y;
    }

    surface_reset_target();
    surf_painting_update = false;
}

// Desenhar a superfície na tela
if (surface_exists(surf_painting)) {
    draw_surface(surf_painting, 0, 0);
}