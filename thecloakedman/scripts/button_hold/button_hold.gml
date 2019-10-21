if os_type == os_windows
	return keyboard_check(vk_space);

if os_type == os_android
	return device_mouse_check_button(0,mb_left);

return false;