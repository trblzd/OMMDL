/// @description Render principal
// Render principal
depth = 10;
w_width = 2160;
w_height = 1690;

// Setup pra pintar
surf_painting = surface_create(w_width, w_height);
// Check desenhar
surf_painting_update = true;

// Memória para pintar
paint_active = false;
paint_width = 15;
paint_color = eColor.Borracha;

// Armazena a posição anterior do mouse
prev_mouse_x = -1;
prev_mouse_y = -1;