global.idxarr[e_spr.idle] = spr_cloaked_idle;
global.idxarr[e_spr.run] = spr_cloaked_run;
global.idxarr[e_spr.jump] = spr_cloaked_jump;
global.idxarr[e_spr.fall] = spr_cloaked_fall;

global.placegrid = ds_grid_create(4, 3);
ds_grid_clear(global.placegrid, e_tile.air);

global.keytype = e_input.no;
global.key = 0;


global.placegrid[# 1, 0] = e_tile.block;
global.placegrid[# 2, 0] = e_tile.player;
global.placegrid[# 3, 0] = e_tile.player1;

global.placegrid[# 0, 1] = e_tile.goal;
global.placegrid[# 1, 1] = e_tile.goal1;
global.placegrid[# 2, 1] = e_tile.goal2;
global.placegrid[# 3, 1] = e_tile.goal3;

global.placegrid[# 0, 2] = e_tile.spikeU;
global.placegrid[# 1, 2] = e_tile.spikeL;
global.placegrid[# 2, 2] = e_tile.spikeR;
global.placegrid[# 3, 2] = e_tile.spikeD;

global.update = false;

init_resolution();
init_readfile();