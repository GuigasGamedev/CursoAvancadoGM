draw_self();

//fazendo um objeto girar em torno o obj_teste utilizando a funcao sin e cos

//conversao de um circulo é igual a pi/180
var _conv = pi/180;

//pegando a distancia do nosso boneco com o obj que sera desenhado
var _distx = cos(_conv * testeTempo);
var _disty = sin(_conv * testeTempo);

//como a variavel testeTempo está sempre mudando, ela sera o nosso valor para angulo
