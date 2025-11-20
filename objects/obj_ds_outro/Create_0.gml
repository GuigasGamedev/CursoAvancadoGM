
//ds_stack  pilha
//ds_queue	fila


//criando a pilha
pilha = ds_stack_create();

//criando uma lista dos itens da pilha
lista = ds_list_create();

//para inserir informações na pilha, utilizamos o push
ds_stack_push(pilha, "cachorro", "gato", "morcego", "piranha");

//criando uma lista com os mesmos componentes
ds_list_add(lista, "cachorro", "gato", "morcego", "piranha");

remove = function(){

	if(keyboard_check_released(vk_enter)){
	
		var _item = ds_stack_pop(pilha);
		
		var _pos = ds_list_find_index(lista, _item);
		
		ds_list_delete(lista, _pos);
	
	}
	
}
