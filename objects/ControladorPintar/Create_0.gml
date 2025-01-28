// Inicializa a variável global para a conquista, se necessário
if (!variable_global_exists("global.pintor")) {
    global.pintor = false; // Conquista inicialmente não liberada
}

x = 1472;
y = 112;
image_xscale = 0.5;
image_yscale = 0.5;
video_exibido = false