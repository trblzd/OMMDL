// Verifica a condição para ativar o vídeo
if (global.brinquedos == 5 && !video_exibido) { // Condição para ativar o vídeo
    sprite_index = luna_feliz_1; 
    x = 960;
    y = 102;

    // Cria o vídeo apenas se ele ainda não foi exibido
    if (global.video_ativo == "") {
        global.video_ativo = "Brinquedos"; // Define o vídeo como ativo
        instance_create_layer(0, 0, "Instances_1", VideoBrinquedos); // Cria o vídeo correspondente

        // Reproduz o som apenas na primeira vez
        if (!global.sparkle_played) {
            audio_play_sound(sparkle, 100, false);
            global.sparkle_played = true;
        }

        // Marca que o vídeo foi exibido
        global.sparkle_played = false;
        video_exibido = true;
    }
}

