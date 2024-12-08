persistent = true;
// Variáveis globais
global.ultima_tela = -1; // Última tela jogável visitada
global.tela_atual = TelaInicial; // Tela inicial ao iniciar o jogo
global.salas_jogo = [Tela01, Tela02, Tela03, Tela04, Tela05_Brinquedos, Tela06_Pato, Tela07_Bola, Tela08, Tela09, Tela10_Dado, Tela11, Tela12, Tela13_Colorir, Tela14_Sapo, Tela15_Mapa, Tela16, Tela17, Tela18_QCBca, Final];
global.menus = [Home, Conquistas, Configuracoes];

// Inicializa progresso dos capítulos (true = desbloqueado)
global.capitulo1_desbloqueado = true;  // Sempre desbloqueado
global.capitulo2_desbloqueado = false; // Desbloqueia ao acessar Tela05
global.capitulo3_desbloqueado = false; // Desbloqueia ao acessar Tela10
global.atividade1_desbloqueada = false; // Desbloqueia na Tela13_Colorir
global.atividade2_desbloqueada = false; // Desbloqueia na Tela15_Mapa