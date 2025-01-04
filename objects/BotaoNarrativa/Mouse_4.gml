// Alterna o estado
estado_ativo = !estado_ativo;

// Atualiza o sprite com base no estado
if (estado_ativo) {
    sprite_index = sprite_ativo;
    // Lógica para ativar narrativa
    global.narrativa_hipertextual = true;
} else {
    sprite_index = sprite_desativado;
    global.narrativa_hipertextual = false;
    if (!global.capitulo1_desbloqueado) global.capitulo1_desbloqueado = true;
    if (global.capitulo2_desbloqueado || global.capitulo3_desbloqueado || global.atividade1_desbloqueada || global.atividade2_desbloqueada || global.atividade3_desbloqueada) {
        global.capitulo2_desbloqueado = false;
        global.capitulo3_desbloqueado = false;
        global.atividade1_desbloqueada = false;
        global.atividade2_desbloqueada = false;
        global.atividade3_desbloqueada = false;
    
}
}
