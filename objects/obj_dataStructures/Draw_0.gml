draw_self();

for(var _i = 0; _i < ds_list_size(meses); _i++){

	var _cor = c_white;

	if(indice == _i){
		_cor = c_red;
	}

	draw_set_colour(_cor);
	draw_text(20, 20 * _i, meses[| _i]);
	draw_set_colour(-1);
	
}