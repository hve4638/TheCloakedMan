var res = false;

switch(global.keytype)
{
	case e_input.keyboard:
	{
		res = keyboard_check_released(vk_anykey);
	} break;
	
	
	case e_input.mouse:
	{
		res = device_mouse_check_button_released(0,mb_left);
	} break;
}

return res;