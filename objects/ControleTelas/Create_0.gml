
persistent = true;
// Variáveis globais
global.ultima_tela = -1; // Última tela jogável visitada
global.tela_atual = TelaInicial; // Tela inicial ao iniciar o jogo
global.salas_jogo = [Tela01, Tela02, Tela03, Tela04, Tela05_Brinquedos, Tela06_Pato, Tela07_Bola, Tela08, Tela09, Tela10_Dado, Tela11, Tela12, Tela13_Colorir, Tela14_Sapo, Tela15_Mapa, Tela16, Tela17, Tela18_QCBca, Final];
global.menus = [Home, Conquistas, Configuracoes, ColorirLuna, ConquistaPintor, ConquistaSolar];
// Inicializa progresso dos capítulos (true = desbloqueado)
global.capitulo1_desbloqueado = true;  // Sempre desbloqueado
global.capitulo2_desbloqueado = false; // Desbloqueia ao acessar Tela05
global.capitulo3_desbloqueado = false; // Desbloqueia ao acessar Tela10
global.atividade1_desbloqueada = false; // Desbloqueia na Tela13_Colorir
global.atividade2_desbloqueada = false; // Desbloqueia na Tela15_Mapa
global.atividade3_desbloqueada = false;

// Define valores padrão
var audio_padrao = true;  // Áudio ativado
var volume_padrao = 0.5;  // Volume em 50%
var narrativa_padrao = false; // Narrativa hipertextual desativada

ini_open("config.ini");

// Estado do áudio
if (!ini_key_exists("audio", "ativo")) {
    ini_write_string("audio", "ativo", string(audio_padrao)); // Salva o padrão
    global.audio_ativo = audio_padrao;
} else {
    global.audio_ativo = (ini_read_string("audio", "ativo", "true") == "true");
}

// Volume
if (!ini_key_exists("volume", "porcentagem")) {
    ini_write_real("volume", "porcentagem", volume_padrao); // Salva o padrão
    global.volume = volume_padrao;
} else {
    global.volume = ini_read_real("volume", "porcentagem", 0.5);
}

// Narrativa hipertextual
if (!ini_key_exists("narrativa", "ativo")) {
    ini_write_string("narrativa", "ativo", string(narrativa_padrao)); // Salva o padrão
    global.narrativa_hipertextual = narrativa_padrao;
} else {
    global.narrativa_hipertextual = (ini_read_string("narrativa", "ativo", "false") == "true");
}

ini_close();

// Inicia o som global apenas se o áudio estiver ativo
if (global.audio_ativo) {
    global.ins_sound = audio_play_sound(LunaTrilha, global.volume, true);
} else {
    audio_master_gain(0); // Silencia o áudio se estiver desativado
}