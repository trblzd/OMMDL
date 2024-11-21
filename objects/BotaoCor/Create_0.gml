enum eColor { Vermelho, Vermelho2, Laranja, Amarelo, Verde, Azul, Azul2, Roxo, Rosa, Branco, Size };

global.vColor = ds_list_create();
global.vColor[|eColor.Vermelho] = make_color_rgb(254, 3, 1);
global.vColor[|eColor.Vermelho2] = make_color_rgb(254, 48, 1);
global.vColor[|eColor.Laranja] = make_color_rgb(254, 127, 0);
global.vColor[|eColor.Amarelo] = make_color_rgb(255, 189, 0);
global.vColor[|eColor.Verde] = make_color_rgb(1, 254, 128);
global.vColor[|eColor.Azul] = make_color_rgb(0, 223, 254);
global.vColor[|eColor.Azul2] = make_color_rgb(0, 33, 143);
global.vColor[|eColor.Roxo] = make_color_rgb(91, 1, 254);
global.vColor[|eColor.Rosa] = make_color_rgb(255, 67, 232);
global.vColor[|eColor.Branco] = make_color_rgb(225, 225, 225);