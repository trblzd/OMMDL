// Alterna o estado
estado_ativo = !estado_ativo;

// Atualiza o sprite com base no estado
sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;

// Atualiza o estado global
global.narrativa_hipertextual = estado_ativo;

// Controle dos capítulos e atividades
if (!estado_ativo) {
    if (!global.capitulo1_desbloqueado) global.capitulo1_desbloqueado = true;
    if (global.capitulo2_desbloqueado || global.capitulo3_desbloqueado || global.atividade1_desbloqueada || global.atividade2_desbloqueada || global.atividade3_desbloqueada) {
        global.capitulo2_desbloqueado = false;
        global.capitulo3_desbloqueado = false;
        global.atividade1_desbloqueada = false;
        global.atividade2_desbloqueada = false;
        global.atividade3_desbloqueada = false;
    }
}