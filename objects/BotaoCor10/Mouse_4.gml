/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.tela_atual == Tela13_Colorir){
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + 2160, y + 1690)) {
    Brush_Pintar.paint_color = eColor.Branco;
}
    }

else if(global.tela_atual == ColorirLuna){
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + 2160, y + 1690)) {
    Brush_Pintar.paint_color = eColor.Cinza;
}
    }