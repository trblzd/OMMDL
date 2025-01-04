if (array_contains(global.salas_jogo, global.tela_atual)) {
    // Alterna para a sala jogável anterior
    var sala_anterior = -1;
    for (var i = array_length(global.salas_jogo) - 1; i >= 0; i--) {
        if (global.salas_jogo[i] == global.tela_atual && i > 0) {
            sala_anterior = global.salas_jogo[i - 1];
            break;
        }
    }

    if (sala_anterior != -1) {
        global.tela_atual = sala_anterior;
    }
} else if (array_contains(global.menus, global.tela_atual)) {
    // Se estiver em um menu, volta para a última sala jogável
    if (global.ultima_tela != -1) {
        global.tela_atual = global.ultima_tela;
    }
}
