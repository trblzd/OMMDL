/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.sapo_ativo == true) {
   draw_self();
}
else {
    draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, 0, make_color_rgb(50, 50, 50), 1); // Tons de cinza
}