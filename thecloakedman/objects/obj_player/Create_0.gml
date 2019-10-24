run = false;
stop = false;
freeze = false;
inv = false;

grav = 0.3;
hspd = 0;
vspd = 0;
jumph = -5;

walkspd = 1.5;
walkspd_jump = 1.3;
maxvspd = 4;
maxvspd_cloak = 0.75;

jumpbuffer = 0;
nojumpbuffer = 0;
cloakedbuffer = 0;

onground = false;
oncloak = false;

spridx = global.idxarr[e_spr.run];
spridx_p = spridx;

sprite_index = spridx;

b_l = x - bbox_left;
b_r = bbox_right - x;
b_t = y - bbox_top
b_b = bbox_bottom - y;


jx = 0;
jy = 0;
jh = 0;