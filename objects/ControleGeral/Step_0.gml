if (global.mapas >=26){
    global.mapasfeito = true;
}

// Verifica e atualiza o estado de ConqBrinq
if (instance_exists(ConqBrinq)) {
    if (global.brinquedos == 5) {
        ConqBrinq.sprite_index = colecionadorcolorido;
    } else {
        ConqBrinq.sprite_index = colecionadorblock;
    }
}

// Verifica e atualiza o estado de ConqMapa
if (instance_exists(ConqMapa)) {
    if (global.mapas >= 26) {
        ConqMapa.sprite_index = geocolorido;
    } else {
        ConqMapa.sprite_index = geoblock;
    }
}

// Verifica e atualiza o estado de ConqSolar
if (instance_exists(ConqSolar)) {
    if (global.pintor == true) {
        ConqSolar.sprite_index = pintorcolorido;
    } else {
        ConqSolar.sprite_index = pintorbloq;
    }
}
// Ajusta o volume do som enquanto ele estiver ativo
if (audio_is_playing(global.ins_sound)) {
    audio_sound_gain(global.ins_sound, global.volume, 0);
}

// Verifica e atualiza o estado de ConqBrinq
if (instance_exists(ConqBrinq)) {
    if (global.brinquedos == 5) {
        ConqBrinq.sprite_index = colecionadorcolorido;
    } else {
        ConqBrinq.sprite_index = colecionadorblock;
    }
}

// Verifica e atualiza o estado de ConqMapa
if (instance_exists(ConqMapa)) {
    if (global.mapas >= 26) {
        ConqMapa.sprite_index = geocolorido;
    } else {
        ConqMapa.sprite_index = geoblock;
    }
}

// Verifica e atualiza o estado de ConqSolar
if (instance_exists(ConqSolar)) {
    if (global.pintor == true) {
        ConqSolar.sprite_index = pintorcolorido;
    } else {
        ConqSolar.sprite_index = pintorbloq;
    }
}



var janela_largura = browser_width;
var janela_altura = browser_height;
var proporcao_jogo = 2160 / 1620; // 1.333... (4:3)
var proporcao_janela = janela_largura / janela_altura;

var port_largura;
var port_altura;
var port_x = 0;
var port_y = 0;

if (proporcao_janela > proporcao_jogo)
{
    // Janela mais larga que o jogo: ajustar altura do port para caber na largura
    port_altura = janela_largura / proporcao_jogo;
    port_largura = janela_largura;
    port_y = (janela_altura - port_altura) / 2; // Centralizar verticalmente
}
else if (proporcao_janela < proporcao_jogo)
{
    // Janela mais alta que o jogo: ajustar largura do port para caber na altura
    port_largura = janela_altura * proporcao_jogo;
    port_altura = janela_altura;
    port_x = (janela_largura - port_largura) / 2; // Centralizar horizontalmente
}
else
{
    // Proporções iguais: o port é igual à janela
    port_largura = janela_largura;
    port_altura = janela_altura;
}

view_wport[0] = round(port_largura);
view_hport[0] = round(port_altura);
view_xport[0] = round(port_x);
view_yport[0] = round(port_y);