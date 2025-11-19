//ds é uma abreviação para estrutura de dados em ingles
//O gamemaker ja vem com estruturas de dados nativas

//DS_LIST
//ds_list é basicamente um vetor 1d com funcionaldades extra
//use ds_list se voce quer um vetor com funcionalidades

//no gamemaker, estruturas de dados não sao deletadas sozinhas. Mesmo se o objeto que a criou seja destruido
//Ela continua na memória

//para isso, utilize o evento clean up

//criando uma ds_list para os meses do ano

meses = ds_list_create();

ds_list_add(meses, "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outrubro", "Novembro", "Dezembro");


//esse mostra o index atraves do valor
//show_message(ds_list_find_index(meses, "Março"));

//esse mostra o valor atraves do index
//show_message(ds_list_find_value(meses, 1));

//toda estrutura de dados no gamemaker tem um "acessor" que é uma maneira de encontrar os valores mais rápido
//Esses acessores estao la no manual

//show_message(meses[| 2]);

//o acessor também pode ser usado para adicionar dados

//meses[| 3] = "Abril";
//show_message(meses[| 3]);

//criando um indice para rolar na lista

indice = 0;