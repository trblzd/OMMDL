/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.abc_ativo == true) {
   draw_self(); // Colorido
}
else {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, make_color_rgb(50, 50, 50), image_alpha); // Tons de cinza
}