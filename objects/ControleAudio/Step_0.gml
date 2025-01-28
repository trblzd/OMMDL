// Ajusta o volume do som enquanto ele estiver ativo
if (audio_is_playing(global.ins_sound)) {
    audio_sound_gain(global.ins_sound, global.volume, 0);
}
