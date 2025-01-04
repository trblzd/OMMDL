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
// Controle de narrativa hipertextual
if (global.narrativa_hipertextual == true) {
    // Libera todos os capítulos e atividades automaticamente
    global.capitulo1_desbloqueado = true;
    global.capitulo2_desbloqueado = true;
    global.capitulo3_desbloqueado = true;
    global.atividade1_desbloqueada = true;
    global.atividade2_desbloqueada = true;
    global.atividade3_desbloqueada = true;
	} 

else {
    // Segue o progresso linear
    if (room == Tela07_Bola && !global.capitulo2_desbloqueado) {
        global.capitulo2_desbloqueado = true; // Desbloqueia o Capítulo 2
		}

    if (room == Tela16 && !global.capitulo3_desbloqueado) {
        global.capitulo3_desbloqueado = true; // Desbloqueia o Capítulo 3
		}

    if (room == Tela05_Brinquedos && !global.atividade3_desbloqueada) {
        global.atividade3_desbloqueada = true; // Desbloqueia Atividade 3
		}

    if (room == Tela13_Colorir && !global.atividade1_desbloqueada) {
        global.atividade1_desbloqueada = true; // Desbloqueia Atividade 1
		}

    if (room == Tela15_Mapa && !global.atividade2_desbloqueada) {
        global.atividade2_desbloqueada = true; // Desbloqueia Atividade 2
		}

    if (global.tela_atual != room && room_exists(global.tela_atual)) {
    room_goto(global.tela_atual);
}

}
if (room == Tela05_Brinquedos && !global.capitulo2_desbloqueado) {
    global.capitulo2_desbloqueado = true; // Desbloqueia o Capítulo 2
}

if (room == Tela10_Dado && !global.capitulo3_desbloqueado) {
    global.capitulo3_desbloqueado = true; // Desbloqueia o Capítulo 3
}