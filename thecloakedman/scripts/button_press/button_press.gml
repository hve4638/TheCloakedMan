if os_type == os_windows
	return keyboard_check_pressed(vk_space);

if os_type == os_android
	return device_mouse_check_button_pressed(0,mb_left);

return false;