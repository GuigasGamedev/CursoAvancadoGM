draw_self();


var _x1, _y1, _x2, _y2, _tam, _dir;
_x1 = 300;			// inicio x da linha
_y1 = 300;			// inicio y da linha
_tam = clamp(point_distance(_x1, _y1, mouse_x, mouse_y), 1, 200);			// tamanho da linha
_dir = point_direction(_x1, _y1, mouse_x, mouse_y);			// angulo da linha

//O x2 é o tamanho original mais o tamnho com base na direção

_x2 = _x1 + lengthdir_x(_tam, _dir);	// fim x da linha
_y2 = _y1 + lengthdir_y(_tam, _dir);			// fim y da linha

draw_line(_x1, _y1, _x2, _y2);

/*
//fazendo um objeto girar em torno o obj_teste utilizando a funcao sin e cos

//conversao de um circulo é igual a pi/180
var _conv = pi/180;

//pegando a distancia do nosso boneco com o obj que sera desenhado
//Multiplicando por 100 para aumentar a distancia do player
var _distx = cos(_conv * testeTempo) * 100;
var _disty = sin(_conv * testeTempo) * 100;

//como a variavel testeTempo está sempre mudando, ela sera o nosso valor para angulo

//desenhando outra sprite para girar em torno do player
draw_sprite(spr_moeda, 0, x + _distx, y + _disty);
*/