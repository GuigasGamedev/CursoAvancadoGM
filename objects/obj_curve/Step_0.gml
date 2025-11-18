


//checanco clique
if(mouse_check_button_released(mb_left)){
	
	dest_x = mouse_x;
	dest_y = mouse_y;
	pos_x = x;
	pos_y = y;
	
	pos = 0;
	
}

//pegando o valor com base na posição

if(pos < 1)pos += delta_time / 1000000 ;

//pos tem valor minimo 0 e valor maximo 1

val = animcurve_channel_evaluate(curva, pos);

show_debug_message(pos);


//fazendo ele ir para a posição do mouse
//salvando distancia entre posicao atual e destino

var _distX = dest_x - pos_x;
var _distY = dest_y - pos_y;

x = pos_x + (_distX * val);
y = pos_y + (_distY * val);