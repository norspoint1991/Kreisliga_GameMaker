var move = 0;
move -= max(keyboard_check_released(vk_up), 0);
move += max(keyboard_check_released(vk_down), 0);

if(move != 0)
{
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu) - 1;
	if (mpos > (array_length_1d(menu) - 1)) mpos = 0;
}

if(mouse_x >= x && mouse_x < x + sprite_get_width(sprite_index))
{
	var m;
	for (m = 0; m < array_length_1d(menu); m += 1){
		if(mouse_y >= y - sprite_get_height(sprite_index)/2 + (m * space) && mouse_y < y + (m * space) + sprite_get_height(sprite_index)/2)
		{
			mpos = m;
		}
	}
}
var push;
push = max(keyboard_check_released(vk_enter), mouse_check_button_released(mb_left), 0);

if (push != 0) 
{
	switch(mpos)
	{
		case 0: 
			//room_goto(rm_ManagerView);
			break;
		case 1:

	//		instance_create_depth(window_get_width()/2, 50, 0, obj_new_game_window);
			room_goto(rm_NewGame);
			break;
		case 2:
			//room_goto(rm_loadView);
			break;
		case 3:
			//room_goto(rm_optionView);
			break;
		case 4:
			game_end();
			break;
		default: break;
	}
}