function scr_collide_player()
{
	var _temp_local_var_2;
	grounded = 0
	grinding = 0
	var _temp_local_var_2 = abs(vsp)
	if (abs(vsp) <= 0)
	{
	}
	else
	{
	    while (true)
	    {
	        if (!(scr_solid_player(x, (y + sign(vsp)))))
	        {
	            y += sign(vsp)
	            var _temp_local_var_2 = (abs(vsp) - 1)
	            if (abs(vsp) - 1)
	                continue
	            break
	        }
	        else
	            vsp = 0
	    }
	}
	var _temp_local_var_2 = abs(hsp)
	if (abs(hsp) <= 0)
	{
	}
	else
	{
	    while (true)
	    {
	        if (scr_solid_player((x + sign(hsp)), y) && (!(scr_solid_player((x + sign(hsp)), (y - 1)))))
	            y--
	        if ((!(scr_solid_player((x + sign(hsp)), y))) && (!(scr_solid_player((x + sign(hsp)), (y + 1)))) && scr_solid_player((x + sign(hsp)), (y + 2)))
	            y++
	        if (!(scr_solid_player((x + sign(hsp)), y)))
	        {
	            x += sign(hsp)
	            var _temp_local_var_2 = (abs(hsp) - 1)
	            if (abs(hsp) - 1)
	                continue
	            break
	        }
	        else
	            hsp = 0
	    }
	}
	if (vsp < 20)
	    vsp += grav
	grounded |= scr_solid(x, (y + 1))
	grounded |= ((!(place_meeting(x, y, obj_platform))) && place_meeting(x, (y + 1), obj_platform))
	grinding = ((!(place_meeting(x, y, obj_grindrail))) && place_meeting(x, (y + 1), obj_grindrail))
	grounded |= grinding
}