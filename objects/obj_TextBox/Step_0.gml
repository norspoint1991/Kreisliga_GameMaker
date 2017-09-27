///Text Input Step Script
//check if box is focused



boxStep++;
if (boxStep == 30) {
boxStep = 0;
}



if (focus == true)
{
	//if is focused, check for user hitting enter to stop input
	if (keyboard_check_released(vk_enter))
    {
		//stop focus on player hitting enter
		//show_debug_message( headline);
		if ( nextBox != undefined) 
		{
			keyboard_string = nextBox.input;
			nextBox.trigger = 1;
		}
		focus = false;
	}

	if (keyboard_check_released(vk_tab))
		{
			if (keyboard_check(vk_shift)) 
			{
				if ( prevBox != undefined) 
				{
					keyboard_string = prevBox.input;
					prevBox.trigger = 1;
				}
		
			}			
			else if ( nextBox != undefined) 
			{
				nextBox.trigger = 1;
				keyboard_string = nextBox.input;
			}
			focus = false;
		}
		//damit cntrl backspace alles löscht		
	if (keyboard_check_released(vk_backspace))
	{
		if (keyboard_check(vk_control))
		{
			input = "";
			keyboard_string = input;
		}
	}
     //Get input up to max characters.
	 if (focus == true) 
	 {
		if (string_length(input)<maxCharacters)
        {
             input = keyboard_string;
        }
      /* If they entered max characters no longer get input unless
        it is backspace, then delete the last character and set
       the keyboard_string to the previous characters. */
       else if (keyboard_check_pressed(vk_backspace))
        {
            input = string_delete(input,maxCharacters,1);
            keyboard_string = input;
        }
	}
}

if (trigger == 1) {
focus = true;
trigger = 0;
}
