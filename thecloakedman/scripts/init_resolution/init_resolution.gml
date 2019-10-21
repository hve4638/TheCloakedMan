global.win_w = 1280;
global.win_h = 720;
global.ratio_resolution = 1.0;

if os_type == os_android || os_type == os_ios
{
	global.win_w = display_get_width();
    global.win_h = display_get_height();
}

window_set_size(global.win_w,global.win_h);
surface_resize(application_surface,global.win_w,global.win_h);
display_set_gui_size(global.win_w,global.win_h);

global.ratio_resolution = round((global.win_w / 1280) * 4) / 4;