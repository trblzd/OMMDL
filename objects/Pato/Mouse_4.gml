/// @description Inserir descrição aqui
if (!global.pato_ativo) {
    global.pato_ativo = true;  // Marca o Pato como ativado
    global.brinquedos += 1;  // Conta o brinquedo como pego

    instance_destroy();
}