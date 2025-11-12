tempo = 5;


#region funcoes
movimento = function(){

//delta_time conta o tempo entre os frames em microsegundos. Dessa forma, a contagem de tempo é precisa independente do fps que o jogo esta rodando
if(tempo > 0){
	tempo -= delta_time/1000000;
}

var _left, _right, _up, _down;

_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
_up = keyboard_check(ord("W")) or keyboard_check(vk_left);
_down = keyboard_check(ord("S")) or keyboard_check(vk_left);

x += (_right - _left) * 5;
y += (_down - _up) * 5;
	
}


//Uso da função frac para estilizar um texto
mostraTempo = function(){
	draw_set_halign(1);
	draw_set_valign(1);
	var _frac = frac(tempo);
	draw_set_alpha(_frac);
	draw_text_transformed(20, 20, floor(tempo), _frac * 3, _frac * 3, 1);
	draw_set_alpha(1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}

#endregion