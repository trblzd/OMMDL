/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
mask_image = sprite_get_texture(sprite_index, 0); // Utiliza a sprite do próprio objeto como máscara
mask_surface = surface_create(sprite_width, sprite_height);
surface_set_target(mask_surface);
draw_self(); // Desenha o próprio objeto na superfície da máscara
surface_reset_target();
