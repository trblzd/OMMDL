// Atualiza a posição da bolinha com base no movimento do mouse
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        // Move horizontalmente dentro dos limites da barra
        x = clamp(mouse_x, barra_inicio, barra_fim);

        // Calcula e atualiza o volume
        global.volume = mapear_volume(x, barra_inicio, barra_fim);

        // Ajusta o volume do áudio global
        if (global.audio_ativo) {
            audio_master_gain(global.volume);
        }
    }
}