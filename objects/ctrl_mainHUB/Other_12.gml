/// @description Kalender

if(!object_get_name(currentObject) == "gui_kalender"){
	instance_destroy(currentObject);
	currentObject = instance_create_depth(0, sprite_get_height(spr_button) + 5, 0, gui_kalender);
}
