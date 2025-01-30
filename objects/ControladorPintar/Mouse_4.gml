// Esconde os itens sempre que o botão for pressionado
Next.visible = false;
Voltar.visible = false;
HomePadrao.visible = false;
ConqPadrao.visible = false;
ConfigPadrao.visible = false;
ControladorPintar.visible = false;
Coresplanetas.visible = false;
FecharColorir.visible = true;

// Apenas toca o vídeo UMA vez
if (global.pintarplayed = false) {
    // Apenas ativa se nenhum outro vídeo estiver ativo
    if (global.video_ativo == "") {
        global.video_ativo = "Colorir";
        instance_create_layer(0, 0, "Instances_4", VideoColorir);

        // Som toca apenas na primeira vez
        if (!global.sparkle_played) {
            audio_play_sound(sparkle, 100, false);
            global.sparkle_played = true;
        }
    }
    
    global.pintor = true;
    global.pintarplayed = true; // Marca que o vídeo já foi exibido
}
