enum eColor { Borracha, Vermelho, Vermelho2, Laranja, Amarelo, Verde, Azul, Azul2, Roxo, Rosa, Branco, BorrachaLuna, Preto, Marrom, LaranjaLuna, AmareloLuna, Pele, RosaLuna, Lilas, Ciano, AzulLuna, Cinza };

global.vColor = ds_list_create();
//planetas
global.vColor[|eColor.Borracha] = make_color_rgb(21,57,97);

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

global.vColor[|eColor.BorrachaLuna] = make_color_rgb(94,187,245);

global.vColor[|eColor.Preto] = make_color_rgb(23,22,26);
global.vColor[|eColor.Marrom] = make_color_rgb(139,68,18);
global.vColor[|eColor.LaranjaLuna] = make_color_rgb(230,112,47);
global.vColor[|eColor.AmareloLuna] = make_color_rgb(254,214,0);
global.vColor[|eColor.Pele] = make_color_rgb(253,212,176);
global.vColor[|eColor.RosaLuna] = make_color_rgb(236,153,178);
global.vColor[|eColor.Lilas] = make_color_rgb(106,13,173);
global.vColor[|eColor.Ciano] = make_color_rgb(32,163,170);
global.vColor[|eColor.AzulLuna] = make_color_rgb(1,171,254);
global.vColor[|eColor.Cinza] = make_color_rgb(206,207,206);