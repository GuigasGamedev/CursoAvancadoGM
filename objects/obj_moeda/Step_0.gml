//Gerando uma variável que está sempre subindo de valores
var _tempo = 5 * (get_timer() / 1000000);

//com a função sin pegando o tempo, ela sempre receberá um valor entre -1 e 1
image_xscale = sin(_tempo);

//fazendo isso com o y (ou o x) da a impressão que ela flutua
//qualquer numero x 1 ou -2 é igual a ele mesmo
//portanto, qualquer numer x a função sin retorna um valor mais alto, mas sempre entre o numero x e -x

//quando se multiplica por algum número dentro do sin, por exemplo, sin(x * qualquer outro numero)
//quanto maior o x, maior a frequência do movimento
y += sin(_tempo) * 5;

if(keyboard_check_pressed(vk_space)){

	instance_create_layer(x, y, "instances", obj_tiro);
	
}