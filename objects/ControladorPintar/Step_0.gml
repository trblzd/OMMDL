
// Inicializa o timer na primeira execução
if (tempo_inicio == -1) {
    tempo_inicio = current_time / 1000; // Salva o momento inicial em segundos
}

// Calcula o tempo decorrido
delta_tempo = (current_time / 1000) - tempo_inicio;

// Verifica se 2 minutos (120 segundos) se passaram
if (delta_tempo >= 120 && !global.pintor) {
    global.pintor = 5; // Libera a conquista
}
