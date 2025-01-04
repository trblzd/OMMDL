/// @description Inserir descrição aqui
// Inicializa as variáveis globais apenas se não existirem
persistent = true;

if (!variable_global_exists("global.brinquedos")) {
    global.brinquedos = 0; 
    global.sapo_ativo = false; 
    global.pato_ativo = false;
    global.bola_ativo = false;
    global.abc_ativo = false;
    global.peca_ativo = false;
}

// Atualiza o progresso e destrói objetos coletados
if (global.sapo_ativo) {
    with (instance_find(Sapo, 0)) {
        instance_destroy();
    }
}
if (global.pato_ativo) {
    with (instance_find(Pato, 0)) {
        instance_destroy();
    }
}
if (global.bola_ativo) {
    with (instance_find(Bola, 0)) {
        instance_destroy();
    }
}
if (global.abc_ativo) {
    with (instance_find(ABC, 0)) {
        instance_destroy();
    }
}
if (global.peca_ativo) {
    with (instance_find(Peca, 0)) {
        instance_destroy();
    }
}
