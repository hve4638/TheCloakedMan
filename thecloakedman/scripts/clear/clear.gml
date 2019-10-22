with(obj_player)
{
	if vspd < 0
		vspd *= 0.75;
	run = false;
	freeze = true;
	inv = true;
}


var lvl, act, rm;
with(sys_global)
{
	lvl = currentlevel;
	act = currentact;

	if stage_eow(lvl,act)
	{
		lvl = 0;
		act = 0;
		break;
	}
	else if stage_eol(lvl,act)
	{
		lvl++;
		act = 1;
	}
	else
	{
		act++;	
	}

	stage_unlock(lvl, act);
}

save();

if stage_exists(lvl,act)
	rm = get_stage(lvl,act);
else
	rm = rm_select;

goto(rm, 90, 1);