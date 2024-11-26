enum eColor { Borracha, Vermelho, Vermelho2, Laranja, Amarelo, Verde, Azul, Azul2, Roxo, Rosa, Branco, Size };

global.vColor = ds_list_create();
global.vColor[|eColor.Borracha] = make_color_rgb(79,149,172);
global.vColor[|eColor.Vermelho] = make_color_rgb(237, 40, 40);
global.vColor[|eColor.Vermelho2] = make_color_rgb(232, 123, 39);
global.vColor[|eColor.Laranja] = make_color_rgb(255, 215, 0);
global.vColor[|eColor.Amarelo] = make_color_rgb(141, 127, 73);
global.vColor[|eColor.Verde] = make_color_rgb(56, 176, 73);
global.vColor[|eColor.Azul] = make_color_rgb(30, 88, 205);
global.vColor[|eColor.Azul2] = make_color_rgb(130, 153, 255);
global.vColor[|eColor.Roxo] = make_color_rgb(123, 69, 171);
global.vColor[|eColor.Rosa] = make_color_rgb(222, 78, 135);
global.vColor[|eColor.Branco] = make_color_rgb(240, 240, 240);