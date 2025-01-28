
Next.visible = false;
Voltar.visible = false;
HomePadrao.visible = false;
ConqPadrao.visible = false;
ConfigPadrao.visible = false;
ControladorPintar.visible = false;
FecharColorir.visible = true;

if(!video_exibido){
if (global.video_ativo == "") { // Apenas permite ativar se nenhum vídeo estiver ativo
    global.video_ativo = "Colorir"; // Define o vídeo como ativo
    instance_create_layer(0, 0, "Instances_4", VideoColorir); // Cria o vídeo correspondente

    // Reproduz o som apenas na primeira vez
    if (!global.sparkle_played) {
        audio_play_sound(sparkle, 100, false);
        global.sparkle_played = true;
    }
    video_exibido = true;
}
}

