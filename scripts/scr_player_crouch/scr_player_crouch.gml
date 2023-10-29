function scr_player_crouch()
{
	move = (key_left + key_right)
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (move * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((move * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((move * movespeed) + 5)
	movespeed = 4
	mask_index = spr_crouchmask
	turning = 0
	if ((!grounded) && (!key_jump))
	{
	    jumpAnim = 0
	    state = states.crouchjump
	    movespeed = 4
	    crouchAnim = 1
	    image_index = 0
	}
	if (grounded && (!key_down) && (!(scr_solid(x, (y - 16)))) && (!(scr_solid(x, (y - 32)))) && (!key_jump))
	{
	    state = states.normal
	    movespeed = 0
	    crouchAnim = 1
	    jumpAnim = 1
	    image_index = 0
	    mask_index = spr_player_mask
	}
	if (crouchAnim == 0)
	{
	    if (move == 0)
	    {
	        if (shotgunAnim == 0)
	            sprite_index = spr_crouch
	        else
	            sprite_index = spr_shotgunduck
	    }
	    if (move != 0)
	    {
	        if (shotgunAnim == 0)
	            sprite_index = spr_crawl
	        else
	            sprite_index = spr_shotguncrawl
	    }
	}
	if (crouchAnim == 1)
	{
	    if (move == 0)
	    {
	        if (shotgunAnim == 0)
	            sprite_index = spr_couchstart
	        else
	            sprite_index = spr_shotgungoduck
	        if (floor(image_index) == (image_number - 1))
	            crouchAnim = 0
	    }
	}
	if (move != 0)
	{
	    xscale = move
	    crouchAnim = 0
	}
	if (key_jump && grounded && (!(scr_solid(x, (y - 16)))) && (!(scr_solid(x, (y - 32)))))
	{
	    scr_soundeffect(sfx_jump)
	    vsp = -8
	    state = states.crouchjump
	    movespeed = 4
	    image_index = 0
	    crouchAnim = 1
	    jumpAnim = 1
	}
	if scr_slope()
	{
	    movespeed = 14
	    with (instance_place((x + xscale), (y + 1), obj_slope))
	        other.xscale = (-sign(image_xscale))
	    state = states.tumble
	    sprite_index = spr_tumblestart
	}
	image_speed = 0.45
}
