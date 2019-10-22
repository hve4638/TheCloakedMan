///@desc room_goto_stage_next
var lvl, act;
lvl = room_get_level(room);
act = room_get_act(room);

while(act + 1 > act_size(lvl))
{
	if lvl + 1 > level_size()
		return -1;
	
	lvl++;
	act = 0;
}
act++;

log("goto ",lvl,"-",act," ?");
room_goto_stage(lvl, act);
return 0;