/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.bola_ativo = true) {
   draw_self(); // Colorido
}
else {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, make_color_rgb(128, 128, 128), image_alpha); // Tons de cinza
}