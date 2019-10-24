switch(global.keytype)
{
	case e_input.keyboard:
	{
		return keyboard_check(vk_anykey);
	} break;
	
	
	case e_input.mouse:
	{
		return device_mouse_check_button(0,mb_left);
	} break;
}