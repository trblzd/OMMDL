if (global.video_ativo == "QuebraCabeca") {
    var videoData = video_draw();
    var videoStatus = videoData[0];
    if (videoStatus == 0) { // Verifica se o vídeo está ativo
            var videoSurface = videoData[1];
            draw_surface(videoSurface, 0, 0); // Preencher a tela
        }
    }
    
        