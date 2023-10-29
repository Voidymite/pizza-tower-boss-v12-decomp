function scr_scareenemy()
{
	var player = instance_nearest(x, y, obj_player)
	if (state != states.grabbed)
	{
	    if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60))
	    {
	        if (state != states.idle && (player.state == states.mach3 || player.state == states.rideweenie || player.state == states.tacklecharge))
	        {
	            state = states.idle
	            sprite_index = scaredspr
	            if (x != player.x)
	                image_xscale = (-(sign((x - player.x))))
	            scaredbuffer = 100
	            vsp = -5
	        }
	    }
	}
}
