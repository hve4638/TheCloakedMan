with(obj_player)
{
	if inv
		break;

	goto(room, 60, false);
	instance_destroy();
}