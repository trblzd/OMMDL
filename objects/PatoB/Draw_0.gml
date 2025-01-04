/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pato_ativo == true) {
     draw_sprite_ext(sprite_index, image_index, x, y, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), image_alpha); // Tons de cinza
}
else {
    draw_sprite_ext(sprite_index, image_index, x, y, 1.2, 1.2, 0, make_color_rgb(50, 50, 50), image_alpha); // Tons de cinza
}