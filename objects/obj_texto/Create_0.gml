texto = "Testando 123 anvhasnva vaiov aovna vcoaj nvhaov a oanbiv ari ab cao i caiicbaii qa cawICA CBIPAW ";
texto2 = "\nVai lamber sabao rafael";

cont = 0;


#region métodos

desenhaTexto = function(_texto){
	
	//fazendo o texto passar mais rapido segurando espaço
	var _vel = keyboard_check(vk_space) ? 1 : .3;
	
	//fazendo um botão para passar logo a caixa de texto
	var _pressa = keyboard_check_released(vk_enter);
	
	//Se apertar enter, o string vai logo para o ultimo
	if(_pressa){
		cont = string_length(_texto);
	}
	
	if(cont < string_length(_texto)){
		cont += _vel;
	}
	
	draw_set_valign(1);
	draw_set_halign(1);
	
	//iniciando bariáveis para a caixa de diálogos
	var _txt_alt = string_height("TESTE"), _x1, _y1, _x2, _y2, _larg = 400, _alt = 50, _marg = 4;
	
	
	//criando um outro texto igual o _texto da entrada, porém, os caracteres sobem 1 por 1 igual maquina de escrever
	var _meuTexto = string_copy(_texto, 1, cont);
	
	//checando se o texto tem separação
	_alt = string_height_ext(_meuTexto, _txt_alt, _larg - _marg);
	
	_x1 = room_width / 2 - _larg / 2;
	_y1 = room_height / 2 - _alt / 2;
	_x2 = _x1 + _larg;
	_y2 = _y1 + _alt+10;
	
	//desenhando a caixa de diálogos
	draw_rectangle_colour(_x1 - _marg, _y1 - _marg, _x2 + _marg, _y2 + _marg, c_blue, c_blue, c_blue, c_blue, false);
	draw_rectangle_colour(_x1, _y1, _x2, _y2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0);

	//alinhando e desenhando o texto
	
	var _texto_larg, _texto_alt;
	_texto_larg = string_width_ext(_texto, _txt_alt, _larg - _marg) / 2;
	_texto_alt = string_height_ext(_meuTexto, _txt_alt, _larg - _marg) / 2;
	
	draw_text_ext(_x1 + _marg + _texto_larg, _y1 + _marg + _texto_alt, _meuTexto, _txt_alt, _larg - _marg);
	draw_set_valign(-1);
	draw_set_halign(-1);
	
}

///@function alinhaTexto(vertical, horizontal);
alinhaTexto = function(_ver, _hor){

	draw_set_valign(_ver);
	draw_set_halign(_hor);
	
}

desenhaTitulo = function(_texto){

	//definindo fonte e centralizando o texto
	draw_set_font(fnt_titulo);
	alinhaTexto(1, 1);
	
	//criando um timer para o sin
	var _temp = 2 * get_timer() / 1000000; 
	 
	var _x1, _x2, _cor, _alpha, _ang;
	_x1 = room_width / 2 + (18 * sin(2 * _temp));
	_y1 = 100 + (10 * sin(3 * _temp));
	_cor = c_dkgray;
	_alpha = 1;
	_ang = 0;
	 
	//essa é a sombra do titulo 
	draw_text_transformed_colour(_x1, _y1, _texto, 1, 1, _ang, _cor, _cor, _cor, _cor, _alpha);
	
	
	_cor = c_aqua;
	var _x1novo = _x1 -5;
	
	//essa é a parte da frente do titulo
	draw_text_transformed_colour(_x1novo, _y1, _texto, 1, 1, _ang, _cor, _cor, _cor, _cor, _alpha);
	
	alinhaTexto(-1, -1);
	draw_set_font(-1);
}

#endregion