if keyboard_check_pressed(vk_anykey)
{
	global.keytype = e_input.keyboard;
	global.key = keyboard_lastkey;
	
	return true;
}

if device_mouse_check_button_pressed(0,mb_left)
{
	global.keytype = e_input.mouse;
	global.key = 0;
	
	return true;
}

return false;