persistent = true;
// Inicializa as variáveis globais e de controle
global.objeto_atual = noone;       // Nenhum objeto sendo arrastado inicialmente
global.mapas = 0;                  // Contador de objetos colados
global.mapasfeito = false;
global.pato_video = false;
global.sapo_video = false;
global.dado_video = false;
global.bola_video = false;
global.brinquedos_video = false;
global.quebracabeca_video = false;
global.colorir_video = false;
global.mapa_video = false;
global.sparkle_played = false;

global.mapasplayed = false;
global.brinquedosplayed = false;
global.pintarplayed = false;
global.salvar_clicado = false;
global.video_ativo = ""; // Nenhum vídeo ativo inicialmente

if (!variable_global_exists("global.brinquedos")) {
    global.brinquedos = 0;
}
if (!variable_global_exists("global.mapas")) {
    global.mapas = 0;
}
if (!variable_global_exists("global.pintor")) {
    global.pintor = false;
}

if (!variable_global_exists("global.brinquedos")) {
    global.brinquedos = 0; 
    global.sapo_ativo = false; 
    global.pato_ativo = false;
    global.bola_ativo = false;
    global.abc_ativo = false;
    global.peca_ativo = false;
}

// Atualiza o progresso e destrói objetos coletados
if (global.sapo_ativo) {
    with (instance_find(Sapo, 0)) {
        instance_destroy();
    }
}
if (global.pato_ativo) {
    with (instance_find(Pato, 0)) {
        instance_destroy();
    }
}
if (global.bola_ativo) {
    with (instance_find(Bola, 0)) {
        instance_destroy();
    }
}
if (global.abc_ativo) {
    with (instance_find(ABC, 0)) {
        instance_destroy();
    }
}
if (global.peca_ativo) {
    with (instance_find(Peca, 0)) {
        instance_destroy();
    }
}
// Inicializa o som e o volume
global.ins_sound = audio_play_sound(LunaTrilha, global.volume, true); // Reproduz em loop