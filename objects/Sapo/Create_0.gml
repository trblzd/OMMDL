/// @description 
if global.sapo_ativo {
    instance_destroy(); // Se já foi coletado, destrua o objeto imediatamente
}