
// Verifica se todos os 26 objetos foram colados
if (global.mapas == 26 && !global.atividade_concluida) {
    global.atividade_concluida = true;
    show_message("Parabéns! Você completou a atividade!"); // Mensagem de feedback
}
