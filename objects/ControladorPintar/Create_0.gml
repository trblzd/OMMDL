// Inicializa as variáveis locais
tempo_inicio = -1; // Marcador para verificar quando o timer começa
delta_tempo = 0;   // Tempo decorrido

// Inicializa a variável global, se ainda não existir
if (!variable_global_exists("global.pintor")) {
    global.pintor = 0;
}