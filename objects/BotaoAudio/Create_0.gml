// Sincroniza o estado do botão com o global
estado_ativo = global.audio_ativo;

// Atualiza os sprites de acordo com o estado inicial
sprite_ativo = botaocolorido;  // Botão ativado
sprite_desativado = botaocinza; // Botão desativado
sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;

// Ajusta o volume inicial
if (estado_ativo) {
    audio_master_gain(global.volume);
} else {
    audio_master_gain(0);
}