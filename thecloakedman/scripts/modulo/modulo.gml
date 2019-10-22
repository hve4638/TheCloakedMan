///@argu value
///@argu modulo
var val, md;
val = argument[0];
md = argument[1];

val = val mod md;

if val < 0
	val += md

return val;