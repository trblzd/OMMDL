persistent = true; // Objeto permanece entre salas

// Define os limites da barra e a posição fixa no eixo Y
barra_inicio = 880; // Início da barra
barra_fim = 1295;   // Fim da barra
y = 1035;           // Posição fixa no eixo Y

// Inicializa o volume global e a posição da bolinha
x = ler_volume_para_posicao(global.volume, barra_inicio, barra_fim); // Posição inicial com base no volume