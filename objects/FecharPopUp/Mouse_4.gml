if (global.video_ativo != "") { // Apenas fecha se houver um vídeo ativo
    with (all) {
        if (object_get_name(object_index) == "Video" + global.video_ativo) {
            instance_destroy(); // Destrói o objeto do vídeo ativo
        }
    }
    global.video_ativo = ""; // Reseta o estado do vídeo
}
instance_destroy(); // Destrói o botão