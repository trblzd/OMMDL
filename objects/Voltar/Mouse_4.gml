
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
        
        // **IMPORTANTE: Cancela a troca de tela enquanto o vídeo está sendo reproduzido**
        exit; 
    }
}

// **Se o vídeo já foi exibido ou não está na Tela13_Colorir, permite a troca de tela normalmente**
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
