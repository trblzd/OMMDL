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

global.tela_atual = Home;
