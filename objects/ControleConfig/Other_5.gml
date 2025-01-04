/// @description Inserir descrição aqui
ini_open("config.ini");

// Salva os valores como strings
ini_write_string("audio", "ativo", string(global.audio_ativo)); // Converte booleano para string
ini_write_string("narrativa", "ativo", string(global.narrativa_hipertextual)); // Converte booleano para string

ini_close();