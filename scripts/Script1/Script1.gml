//macro é um tipo de constante
//é uma variavel que nao varia

//é meio que um padrão deixar as macros em caixa alta

//macros não precisam ser iniciadas
//quando o jogo for compilado, ele converte em TODO O CODIGO a palavra
//equivalente ao macro e substitui pelo valor

//macros são uteis para escrever em scripts. Dessa forma elas inicializam
//um valor que voce pode usar durante todo o jogo a partir do momento em que 
//voce executa ele
//macros tambem podem aceitar funcoes
#macro GRAVIDADE .2

//enum é uma constante
//ela contem uma lista de valores

//enum enumera uma quantidade de itens automaticamente começando pelo 0
//porém, voce pode definiri valores especificos para cada item dentro dele

//essa funcao aceita apenas numeros reais
enum inventario{

	armas,			//0
	itens = 7,		//7 mas seria 1 se não tivesse valor
	armaduras		//2
	
}