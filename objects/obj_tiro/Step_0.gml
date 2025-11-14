var _tempo = get_timer() / 1000000;

hspeed = 5 * sin(5 * _tempo);


if(y < -65){
	instance_destroy(id);
	//show_debug_message("fui deletado");
}