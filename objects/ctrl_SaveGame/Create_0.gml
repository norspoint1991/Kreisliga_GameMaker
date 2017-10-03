/// @description Insert description here
// You can write your code in this editor
fileSys = instance_create_depth(10,10,0, sys_fileSystem);
newGUI_element(10,10,window_get_width()/2,window_get_height(), fileSys);
fileSys.save = true;
saveButton =  instance_create_depth(window_get_width() * 3/4, 10 ,0, btn_newSave);
saveWeiterButton = instance_create_depth(window_get_width() * 3/4, 200 ,0, btn_saveGameWeiter);