/// @function mapear_volume
/// @desc Converte a posição da bolinha na barra para um valor de volume (0 a 1)
/// @param posicao Posição atual da bolinha
/// @param inicio Posição inicial da barra
/// @param fim Posição final da barra
function mapear_volume(posicao, inicio, fim) {
    return (posicao - inicio) / (fim - inicio);
}
/// @function ler_volume_para_posicao
/// @desc Converte um valor de volume (0 a 1) para a posição da bolinha na barra
/// @param volume Valor do volume (0 a 1)
/// @param inicio Posição inicial da barra
/// @param fim Posição final da barra
function ler_volume_para_posicao(volume, inicio, fim) {
    return inicio + volume * (fim - inicio);
}
