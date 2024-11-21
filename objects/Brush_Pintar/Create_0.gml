/// @description Render principal

depth = 10;
w_width = 2160;
w_height = 1690;

// Setup pra pintar
surf_painting = surface_create(w_width, w_height);
// Check desenhar
surf_painting_update = true;

// Memoria Pintar
paint_active = false;
paint_width = 12;
paint_color = eColor.Branco;
paint_clear = true;