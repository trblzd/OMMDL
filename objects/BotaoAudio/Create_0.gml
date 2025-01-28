// Sincroniza o estado do botão com o áudio global
estado_ativo = global.audio_ativo;

// Atualiza os sprites de acordo com o estado inicial
sprite_ativo = botaocolorido;  // Botão ativado
sprite_desativado = botaocinza; // Botão desativado
sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;

// Garante que o volume esteja sincronizado
if (estado_ativo) {
    audio_master_gain(global.volume); // Define o volume global
} else {
    audio_master_gain(0); // Silencia o áudio
}