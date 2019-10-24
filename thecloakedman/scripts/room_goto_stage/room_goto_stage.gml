///@desc room_goto_stage
///@argu level
///@argu act
var lv, act, rm;
lv = clamp(argument[0],1,global.stage[# 0, 0]);
act = clamp(argument[1],1,global.stage[# 0, lv]);

rm = global.stage[# act, lv];

log("goto ",lv,"-",act);

if room_exists(rm)
{
	room_goto(rm);

	return 1;
}

return 0;