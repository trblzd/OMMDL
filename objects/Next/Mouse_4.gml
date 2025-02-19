
if (global.tela_atual == Tela13_Colorir && global.pintarplayed == false) {
    // Verifica se o alarme foi disparado e o vídeo ainda não foi exibido
    if (global.alarmReady && !global.pintarplayed && global.video_ativo == "") {
        global.video_ativo = "Colorir"; // Marca que o vídeo de Colorir está ativo
        instance_create_layer(0, 0, "Instances_4", VideoColorir); // Cria o vídeo na camada correta

        // Reproduz o som sparkle apenas uma vez
        if (!global.sparkle_played) {
            audio_play_sound(sparkle, 100, false);
            global.sparkle_played = true;
        }

        // Marca que o vídeo já foi exibido
        global.pintarplayed = true;
        global.sparkle_played = false;
        exit; 
    }
}

if (array_contains(global.salas_jogo, global.tela_atual)) {
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
    if (global.ultima_tela != -1) {
        global.tela_atual = global.ultima_tela;
    }
}
