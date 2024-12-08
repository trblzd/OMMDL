/// @description (ControleTelas)
// Se a tela atual não é a mesma da sala atual
if (global.tela_atual != room) {
    // Verifica se a tela atual é uma sala jogável
    var e_sala_jogavel = false;
    for (var i = 0; i < array_length(global.salas_jogo); i++) {
        if (global.salas_jogo[i] == global.tela_atual) {
            e_sala_jogavel = true;
            break;
        }
    }

    // Se for uma sala jogável, atualiza a última tela jogável
    if (e_sala_jogavel) {
        global.ultima_tela = global.tela_atual;
    }

    // Troca para a nova sala
    room_goto(global.tela_atual);
}
if (room == Tela05_Brinquedos && !global.capitulo2_desbloqueado) {
    global.capitulo2_desbloqueado = true; // Desbloqueia o Capítulo 2
}

if (room == Tela10_Dado && !global.capitulo3_desbloqueado) {
    global.capitulo3_desbloqueado = true; // Desbloqueia o Capítulo 3
}