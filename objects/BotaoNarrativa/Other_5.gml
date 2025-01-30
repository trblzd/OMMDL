// Salva os estados no arquivo INI ao sair da sala
ini_open("config.ini");
// Salva o estado da narrativa hipertextual
ini_write_string("narrativa", "ativo", string(global.narrativa_hipertextual));
ini_close();