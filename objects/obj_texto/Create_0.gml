texto = "Testando 123 anvhasnva vaiov aovna vcoaj nvhaov a oanbiv ari ab cao i caiicbaii qa cawICA CBIPAW ";
texto2 = "\nVai toma no seu cu legal rafael desgraça";

#region métodos

desenhaTexto = function(_texto){
	
	draw_set_valign(0);
	draw_set_halign(0);
	
	//iniciando bariáveis para a caixa de diálogos
	var _txt_alt = string_height("TESTE"), _x1, _y1, _x2, _y2, _larg = 400, _alt = 50, _marg = 4;
	
	//checando se o texto tem separação
	_alt = string_height_ext(_texto, _txt_alt, _larg - _marg);
	
	_x1 = room_width / 2 - _larg / 2;
	_y1 = room_height / 2 - _alt / 2;
	_x2 = _x1 + _larg;
	_y2 = _y1 + _alt;
	
	//desenhando a caixa de diálogos
	draw_rectangle_colour(_x1 - _marg, _y1 - _marg, _x2 + _marg, _y2 + _marg, c_blue, c_blue, c_blue, c_blue, false);
	draw_rectangle_colour(_x1, _y1, _x2, _y2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0);

	//alinhando e desenhando o texto
	
	draw_text_ext(_x1 + _marg, _y1 + _marg, _texto, _txt_alt, _larg - _marg);
	draw_set_valign(-1);
	draw_set_halign(-1);
	
}

#endregion