// Verifica se o mapa foi concluído e se o vídeo ainda não foi exibido
if (global.mapasfeito == true && !video_exibidos) {
     if (global.video_ativo == "") {
        global.video_ativo = "Mapa"; // Define o vídeo como ativo
        instance_create_layer(0, 0, "Instances_3", VideoMapa); // Cria o vídeo correspondente

        // Reproduz o som apenas na primeira vez
        if (!global.sparkle_played) {
            audio_play_sound(sparkle, 100, false);
            global.sparkle_played = true;
        }

        // Marca que o vídeo foi exibido
        global.sparkle_played = false;
        video_exibidos = true;
    }
}
