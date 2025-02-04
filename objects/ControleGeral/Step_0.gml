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

