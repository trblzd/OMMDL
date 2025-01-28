/// @description Inserir descrição aqui
if (global.video_ativo == "") { // Apenas permite ativar se nenhum vídeo estiver ativo
    global.video_ativo = "QuebraCabeca"; // Define o vídeo como ativo
    instance_create_layer(0, 0, "Instances_1", VideoQuebraCabeca); // Cria o vídeo correspondente

    // Reproduz o som apenas na primeira vez
    if (!global.sparkle_played) {
        audio_play_sound(sparkle, 100, false);
        global.sparkle_played = true;
    }
    global.brinquedos +=1;
    global.peca_ativo = true;
    instance_destroy(); // Remove o objeto interativo
    global.sparkle_played = false;
}
