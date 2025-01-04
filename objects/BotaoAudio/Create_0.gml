// Estado inicial sincronizado com o controle global
estado_ativo = true;

// Sprites
sprite_ativo = botaocolorido; // Sprite do botão ativado
sprite_desativado = botaocinza; // Sprite do botão desativado

// Define o sprite inicial
sprite_index = estado_ativo ? sprite_ativo : sprite_desativado;