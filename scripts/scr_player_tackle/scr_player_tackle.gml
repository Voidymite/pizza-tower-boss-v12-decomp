function scr_player_tackle()
{
	combo = 0
	mach2 = 0
	hsp = ((-xscale) * movespeed)
	if (movespeed > 0)
	    movespeed -= 0.5
	start_running = 1
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	if (floor(image_index) == (image_number - 1))
	    state = states.normal
	image_speed = 0.35
}
