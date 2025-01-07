if (global.mapas == 26 and sprite_index = colecionadorcolorido) { // Verifica se a conquista está desbloqueada
    var file_path;

    // Define o caminho para salvar baseado na plataforma
    if (os_type == os_windows) {
        file_path = get_save_filename("*.png", "ConqBrinq.png"); // Usuário escolhe onde salvar
    } else if (os_type == os_android || os_type == os_ios) {
        file_path = working_directory + "ConqBrinq.png"; // Caminho padrão em dispositivos móveis
    }

    if (file_path != "") { // Verifica se o usuário escolheu um caminho válido
        var source_file = "datafiles/ConqBrinq.png"; // Caminho do arquivo dentro do projeto
        if (file_copy(source_file, file_path)) {
            show_message("Conquista salva com sucesso em: " + file_path);
        } else {
            show_message("Erro ao salvar a conquista.");
        }
    }
} else {
    show_message("Esta conquista ainda está bloqueada!");
}
