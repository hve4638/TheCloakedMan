///@desc room_goto_stage_next
var lvl, act;
lvl = room_get_level(room);
act = room_get_act(room);

if stage_eow(lvl,act)
	return -1;

if stage_eol(lvl,act)
{
	lvl++;
	act = 1;
}

room_goto_stage(lvl, act);
return 0;