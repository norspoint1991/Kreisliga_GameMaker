/// @description Insert description here
// You can write your code in this editor

fileSys = instance_create_depth(10,10,0, sys_fileSystem);
newGUI_element(10,10,window_get_width()/2,window_get_height(), fileSys);
fileSys.save = false;
loadButton = instance_create_depth(window_get_width() * 3/4, 10 ,0, btn_load);
loadWeiterButton = instance_create_depth(window_get_width() * 3/4, 200 ,0, btn_saveGameWeiter);

backButton = instance_create_depth(window_get_width() * 3/4, 350,0, btn_backToPrevRoom);