// Salva o volume atual ao sair da sala
ini_open("config.ini");
ini_write_real("volume", "porcentagem", global.volume);
ini_close();