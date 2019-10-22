if 0.05 < fade_alpha
{
	draw_set_color(fade_color);
	draw_set_alpha(fade_alpha);
	draw_rectangle(0,0,global.win_w,global.win_h,false);
}

draw_set_color(c_white);
draw_set_alpha(1.0);