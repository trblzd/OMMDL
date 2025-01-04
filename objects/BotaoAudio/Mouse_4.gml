// Alterna o estado
estado_ativo = !estado_ativo;

// Atualiza o sprite com base no estado
if (estado_ativo) {
    sprite_index = sprite_ativo;
    audio_master_gain(1); // Volume máximo
    global.audio_ativo = true;
} else {
    sprite_index = sprite_desativado;
    audio_master_gain(0); // Silenciar áudio
    global.audio_ativo = false;
}
