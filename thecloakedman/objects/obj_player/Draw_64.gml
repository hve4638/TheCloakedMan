///@desc New Event
draw_set_color(c_gray);
draw_set_halign(fa_right);
draw_text(global.win_w,0,"speed : " + string(hspd) + ", " + string(vspd));
draw_text(global.win_w,0,s("\nonground : ",onground, "\nonCloack : ",oncloak,"\nstop: ",stop));


draw_set_halign(fa_left);