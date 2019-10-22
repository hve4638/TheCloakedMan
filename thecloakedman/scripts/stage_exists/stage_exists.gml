///@argu lvl
///@argu act
var lvl, act, rm;
lvl = argument[0];
act = argument[1];
rm = global.stage[# act, lvl];

return room_exists(rm);