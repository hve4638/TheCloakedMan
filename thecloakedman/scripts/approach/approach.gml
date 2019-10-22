///@desc
///@argu var
///@argu toVar
///@argu spd
var o, to, len;
o = argument[0];
to = argument[1];
len = argument[2];

if abs(to - o) < len
	return to;
else
	return o + sign(to - o) * len;