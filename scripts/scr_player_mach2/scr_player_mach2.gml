function scr_player_mach2()
{
	if (windingAnim < 2000)
	    windingAnim++
	hsp = (xscale * movespeed)
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	crouchslideAnim = 1
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded && (!((move == 1 && xscale == -1))) && (!((move == -1 && xscale == 1))))
	{
	    image_index = 0
	    sprite_index = spr_secondjump1
	    scr_soundeffect(sfx_jump)
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
	}
	if (grounded && vsp > 0)
	{
	    if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_mach4 && sprite_index != spr_player_machhit)
	    {
	        if (sprite_index != spr_player_machhit && sprite_index != spr_rollgetup)
	            sprite_index = spr_mach
	    }
	    if (machpunchAnim == 1)
	    {
	        if (punch == 0)
	            sprite_index = spr_machpunch1
	        if (punch == 1)
	            sprite_index = spr_machpunch2
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch1)
	        {
	            punch = 1
	            machpunchAnim = 0
	        }
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch2)
	        {
	            punch = 0
	            machpunchAnim = 0
	        }
	    }
	}
	if (!grounded)
	    machpunchAnim = 0
	if grounded
	{
	    if (movespeed < 12)
	        movespeed += 0.1
	    if (movespeed >= 12)
	    {
	        movespeed = 12
	        machhitAnim = 0
	        state = states.mach3
	        flash = 1
	        if (sprite_index != spr_rollgetup)
	            sprite_index = spr_mach4
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale
	    }
	}
	if key_jump
	    input_buffer_jump = 0
	if (key_down && (!(place_meeting(x, y, obj_dashpad))))
	{
	    with (instance_create(x, y, obj_jumpdust))
	        image_xscale = other.xscale
	    flash = 0
	    state = states.machroll
	    vsp = 10
	}
	if (((!grounded) && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope)))) || (grounded && place_meeting((x + hsp), (y - 64), obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + hsp), y, obj_metalblock))) && place_meeting(x, (y + 1), obj_slope)))
	{
	    wallspeed = movespeed
	    state = states.climbwall
	}
	if (grounded && (!scr_slope()) && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
	{
	    movespeed = 0
	    state = states.normal
	}
	if ((!instance_exists(dashcloudid)) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	    {
	        image_xscale = other.xscale
	        other.dashcloudid = id
	    }
	}
	if (grounded && floor(image_index) == (image_number - 1) && sprite_index == spr_rollgetup)
	    sprite_index = spr_mach
	if ((!grounded) && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump && sprite_index != spr_mach2jump && sprite_index != spr_walljumpstart && sprite_index != spr_walljumpend)
	    sprite_index = spr_secondjump1
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
	    sprite_index = spr_secondjump2
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_walljumpstart)
	    sprite_index = spr_walljumpend
	if (key_attack && (!(place_meeting((x + xscale), y, obj_solid))) && character == "S" && grounded)
	{
	    state = states.handstandjump
	    movespeed = 0
	}
	if key_taunt2
	{
	    scr_soundeffect(sfx_taunt)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = states.backbreaker
	    if (supercharged == 1)
	    {
	        image_index = 0
	        sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4)
	    }
	    else
	    {
	        taunttimer = 20
	        image_index = random_range(0, 11)
	        sprite_index = spr_taunt
	    }
	    instance_create(x, y, obj_taunteffect)
	}
	if (((!key_attack) && move != xscale && grounded) || (character == "S" && move == 0 && grounded))
	{
	    image_index = 0
	    state = states.machslide
	    scr_soundeffect(sfx_break)
	    sprite_index = spr_machslidestart
	}
	if (move == (-xscale) && grounded)
	{
	    scr_soundeffect(sfx_machslideboost)
	    image_index = 0
	    state = states.machslide
	    sprite_index = spr_machslideboost
	}
	if (move == xscale && (!key_attack) && grounded)
	    state = states.normal
	if (sprite_index == spr_rollgetup)
	    image_speed = 0.4
	else
	    image_speed = 0.65
}
