// Evento Mouse Left Pressed
if (array_contains(global.salas_jogo, global.tela_atual)) {
    // Alterna para a próxima sala jogável
    var proxima_sala = -1;
    for (var i = 0; i < array_length(global.salas_jogo); i++) {
        if (global.salas_jogo[i] == global.tela_atual && i < array_length(global.salas_jogo) - 1) {
            proxima_sala = global.salas_jogo[i + 1];
            break;
        }
    }

    if (proxima_sala != -1) {
        global.tela_atual = proxima_sala;
    }
} else if (array_contains(global.menus, global.tela_atual)) {
    // Volta para a última sala jogável
    if (global.ultima_tela != -1) {
        global.tela_atual = global.ultima_tela;
    }
}
