// Sincroniza o estado do botão com o global
estado_ativo = global.narrativa_hipertextual;

// Sprites
sprite_ativo = botaocolorido; // Sprite do botão ativado
sprite_desativado = botaocinza; // Sprite do botão desativado

// Define o sprite inicial
sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;