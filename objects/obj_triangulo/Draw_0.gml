//funções para desenhar um triangulo

var _x1, _y1, _x2, _y2, _x3, _y3, _tam = 150;

ang++;

//definindo a posição inicial do triangulo

for(var _i = 0; _i<4; _i++){
	
	var _novo_ang = _i * 90;
	
	_x1 = mouse_x;
	_y1 = mouse_y;

	//definido o próximo ponto
	//O próximo ponto é x1 e y1 + o tamanho e o angulo onde se encontra o proximo ponto

	_x2 = _x1 + lengthdir_x(_tam, ang + _novo_ang);
	_y2 = _y1 + lengthdir_y(_tam, ang + _novo_ang);

	//definindo o ultimo ponto
	//O ultimo ponto é o ponto inicial + a distancia com base no angulo so segundo ponto + a diferença de angulo para o terceiro

	_x3 = _x1 + lengthdir_x(_tam, ang + _novo_ang + 45);
	_y3 = _y1 + lengthdir_y(_tam, ang + _novo_ang + 45);

	draw_triangle_colour(_x1, _y1, _x2, _y2, _x3, _y3, c_yellow, c_yellow, c_yellow, 0);
	
}