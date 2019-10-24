enum e_spr
{
	idle,
	run,
	jump,
	fall
}

	
enum e_tile {
	air = -1,
	block = 0,
	player = 1,
	player1 = 2,
	goal = 10,
	goal1 = 11,
	goal2 = 12,
	goal3 = 13,
	spikeU = 20,
	spikeD = 21,
	spikeL = 22,
	spikeR = 23
}

enum e_input {
	no,
	keyboard,
	mouse
}