#region variaveis

tempo = 5;

//Exercício de get-timer
segundos = 0; 
minutos = 0; 
horas = 0; 
dias = 0; 

//definindo velocidades para a sprite
velv = 0;
velh = 0;
velvMax = 5;
velhMax = 5;
acel = .1;

#endregion

#region algumas funções

	//A função abs retorna o valor absoluto de um numero. Ela sempre retorna o valor positivo
	//show_message(abs(-5));
	
	//A função clamp checa se um valor esta dentro de um intervalo
	//Se o valor estiver dentro do intervalo (min - max) ele não é modificado
	//Se o valor estiver fora do intervalo, ele volta para dentro do intervalo
	//var _testeClamp = clamp(30, 0, 20);
	//show_message(_testeClamp);
	
	//A função lerp retorna um valor entre um max e um min de acordo com um terceiro valor
	//lerp(0, 10, .5) retorna 5, ja que 0.5 de 0 e 10 é 5
	//A função lerp pode ser utilizada com variáveis. Desta maneira, ela se comporta como algo parecido a uma aproximação
	
#endregion

#region funcoes
movimento = function(){
	
	//chamando a função teste do lerp
	movendoComMouse();

	//delta_time conta o tempo entre os frames em microsegundos. Dessa forma, a contagem de tempo é precisa independente do fps que o jogo esta rodando
	if(tempo > 0){
		tempo -= delta_time/1000000;
	}

	var _left, _right, _up, _down;

	_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
	_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
	_up = keyboard_check(ord("W")) or keyboard_check(vk_left);
	_down = keyboard_check(ord("S")) or keyboard_check(vk_left);


	//movendo utilizando o velh e velv
	velh += (_right - _left) * acel;
	velv += (_down - _up) * acel;
	
	velh = clamp(velh, -velhMax, velhMax);
	velv = clamp(velv, -velvMax, velvMax);

	//alterando os eixos
	x += velh;
	y += velv;

	//A função sign retorna o sinal de um numero. Se o numero for igual a 0, ela retorna 0;
	/*
	if(mouse_x != x){
		//image_xscale = sign(mouse_x - x);
	}
	*/
	
	//fazendo o objeto ficar dentro da room utilizando a função clamp
	x = clamp(x, 0 + sprite_width / 2, room_width - sprite_width / 2);
	y = clamp(y, 0 + sprite_height / 2, room_height - sprite_height / 2);
	
	//A função abs retorna o valor absoluto de um numero. Ela sempre retorna o valor positivo
	//show_message(abs(-5));
	
	//A função clamp checa se um valor esta dentro de um intervalo
	//Se o valor estiver dentro do intervalo (min - max) ele não é modificado
	//Se o valor estiver fora do intervalo, ele volta para dentro do intervalo
	
	
	
}

movendoComMouse = function(){

	if(mouse_check_button(mb_left)){
	
		//utilizando a função lerp para fazer esse movimento de um modo melhor
		x = lerp(x, mouse_x, .1);
		y = lerp(y, mouse_y, .1);
	
	}
	
}


//A função frac retorna apenas os números após a vírgula de um outro numero ou variável
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


mostraTempoJogado = function(){
	
	
	//get_timer retorna quanto tempo já se passou no jogo utilizando microsegundos
	sec = get_timer() / 1000000;
	segundos = sec;
	segundos %= 60;
	minutos = sec / 60;
	minutos %= 60;
	horas = sec / 60 / 60;
	horas %= 60;
	dias = sec / 60 / 60 / 24;
	
	
	//round, ceil e floor são funções de arredondamento
		draw_text(20, 20, "Segundos: "+string(round(segundos))+" Minutos: "+string(floor(minutos))+" Horas: "+string(floor(horas))+" Dias: "+string(floor(dias)));
		
}
	
#endregion