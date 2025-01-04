instance_destroy();  // Destroi o próprio botão FecharPopUp

// Destroi o vídeo (obj_Parabens)
with (instance_find(Parabens, 0)) {
    instance_destroy();
}

// Destroi o texto (obj_ParaParo)
with (instance_find(ParaParo, 0)) {
    instance_destroy();
}

// Destroi o sprite do pato (obj_PatoBens)
with (instance_find(PatoBens, 0)) {
    instance_destroy();
}
