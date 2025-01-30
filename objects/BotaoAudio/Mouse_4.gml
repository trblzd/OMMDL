// Alterna o estado do áudio
estado_ativo = !estado_ativo;
global.audio_ativo = estado_ativo;

// Atualiza o sprite com base no estado
sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;

// Ativa ou desativa o áudio global
if (estado_ativo) {
    audio_master_gain(global.volume); // Ajusta para o volume atual
} else {
    audio_master_gain(0); // Silencia o áudio
}