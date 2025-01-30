// Salva os estados no arquivo INI ao sair da sala
ini_open("config.ini");
ini_write_string("audio", "ativo", string(global.audio_ativo));
ini_close();