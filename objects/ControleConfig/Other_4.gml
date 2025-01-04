/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Atualiza os botões com base nos estados carregados
with (BotaoAudio) {
    estado_ativo = global.audio_ativo;
    sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;
}


with (BotaoNarrativa) {
    estado_ativo = global.narrativa_hipertextual;
    sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;
}