if(keyboard_check_released(vk_enter)){

	ds_list_shuffle(meses);
	
}


//fazendo o jogador navegar pela lista
if(keyboard_check_released(vk_down)) indice++;	

if(keyboard_check_released(vk_up)) indice--;	


//fazendo o jogador deletar um valor conforme ele vai navegando pela lista
if(keyboard_check_released(vk_backspace)) ds_list_delete(meses, indice);


indice = clamp(indice, 0, ds_list_size(meses) - 1);

show_debug_message(indice);