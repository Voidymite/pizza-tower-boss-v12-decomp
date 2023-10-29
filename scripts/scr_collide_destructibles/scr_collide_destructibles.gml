function scr_collide_destructibles()
{
	with (obj_player1)
	{
	    if ((state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || (state == states.pogo && pogochargeactive == 1))
	    {
	        with (instance_place((x + xscale), y, obj_destructibles))
	            instance_destroy()
	        with (instance_place(((x + hsp) + xscale), y, obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, ((y + vsp) + 1), obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, ((y + vsp) - 1), obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, (y + 1), obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, (y - 1), obj_destructibles))
	            instance_destroy()
	    }
	    if (state == states.faceplant || state == states.tacklecharge || state == states.mach2 || state == states.crouchslide || state == states.mach3 || state == states.machroll || state == states.knightpepslopes || state == states.tumble || state == (9 << 0))
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	                instance_destroy()
	            if (state == states.mach2)
	                machpunchAnim = 1
	        }
	    }
	    if (state == states.hurt && thrown == 1)
	    {
	        if place_meeting((x - hsp), y, obj_destructibles)
	        {
	            with (instance_place((x - hsp), y, obj_destructibles))
	                instance_destroy()
	        }
	    }
	    if ((state == states.knightpep || state == states.superslam || state == (9 << 0)) && vsp > 0)
	    {
	        if place_meeting(x, (y + 1), obj_destructibles)
	        {
	            with (instance_place(x, (y + 1), obj_destructibles))
	                instance_destroy()
	        }
	    }
	    if place_meeting(x, (y + 1), obj_destructibleplatform)
	    {
	        with (instance_place(x, (y + 1), obj_destructibleplatform))
	        {
	            falling = 1
	            if (falling == 1)
	                image_speed = 0.35
	        }
	    }
	    if (vsp <= 0.5 && (state == states.jump || state == states.pogo || state == states.climbwall || state == states.fireass || state == states.Sjump || state == states.mach2 || state == states.mach3))
	    {
	        if place_meeting(x, (y - 1), obj_destructibles)
	        {
	            with (instance_place(x, (y - 1), obj_destructibles))
	            {
	                instance_destroy()
	                with (other.id)
	                {
	                    if (state != states.Sjump && state != states.climbwall)
	                        vsp = 0
	                }
	            }
	        }
	    }
	    if (vsp >= 0 && (state == states.freefall || state == states.freefallland))
	    {
	        if place_meeting(x, ((y + vsp) + 2), obj_destructibles)
	        {
	            with (instance_place(x, ((y + vsp) + 2), obj_destructibles))
	            {
	                with (obj_player1)
	                {
	                    if place_meeting(x, ((y + vsp) + 2), obj_bigdestructibles)
	                    {
	                        if (shotgunAnim == 0)
	                            sprite_index = spr_bodyslamland
	                        else
	                            sprite_index = spr_shotgunjump2
	                        state = states.freefallland
	                        image_index = 0
	                    }
	                }
	                instance_destroy()
	            }
	        }
	    }
	    if (state == states.freefall || state == states.freefallland)
	    {
	        if (place_meeting(x, (y + 1), obj_metalblock) && freefallsmash > 10)
	        {
	            with (instance_place(x, (y + 1), obj_metalblock))
	                instance_destroy()
	        }
	    }
	    if (state == states.handstandjump || state == states.punch)
	    {
	        with (obj_destructibles)
	        {
	            if place_meeting((x - obj_player1.hsp), y, obj_player1)
	            {
	                with (obj_player1)
	                {
	                    if place_meeting((x + hsp), y, obj_bigdestructibles)
	                    {
	                        if (shotgunAnim == 0)
	                        {
	                            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
	                            image_index = 0
	                            state = states.tackle
	                            movespeed = 3
	                            vsp = -3
	                            instance_destroy(other.id)
	                        }
	                        else
	                        {
	                            state = states.shotgun
	                            image_index = 0
	                            sprite_index = spr_shotgunshoot
	                            if (character == "P")
	                            {
	                                instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = 4
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = -4
	                            }
	                            instance_destroy(other.id)
	                        }
	                    }
	                    else if (other.object_index != obj_bigdestructibles)
	                        instance_destroy(other.id)
	                }
	            }
	        }
	    }
	    with (obj_baddie)
	    {
	        if (place_meeting((x + hsp), y, obj_destructibles) && thrown == 1)
	            instance_destroy(instance_place((x + hsp), y, obj_destructibles))
	        if (place_meeting(x, (y + vsp), obj_destructibles) && thrown == 1)
	            instance_destroy(instance_place((x + vsp), y, obj_destructibles))
	    }
	}
	with (obj_player2)
	{
	    if ((state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || (state == states.pogo && pogochargeactive == 1))
	    {
	        with (instance_place((x + xscale), y, obj_destructibles))
	            instance_destroy()
	        with (instance_place(((x + hsp) + xscale), y, obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, ((y + vsp) + 1), obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, ((y + vsp) - 1), obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, (y + 1), obj_destructibles))
	            instance_destroy()
	        with (instance_place(x, (y - 1), obj_destructibles))
	            instance_destroy()
	    }
	    if (state == states.faceplant || state == states.mach2 || state == states.crouchslide || state == states.mach3 || state == states.machroll || state == states.knightpepslopes || state == states.tumble || state == (9 << 0))
	    {
	        if place_meeting((x + hsp), y, obj_destructibles)
	        {
	            with (instance_place((x + hsp), y, obj_destructibles))
	                instance_destroy()
	            if (state == states.mach2)
	                machpunchAnim = 1
	        }
	    }
	    if (state == states.hurt && thrown == 1)
	    {
	        if place_meeting((x - hsp), y, obj_destructibles)
	        {
	            with (instance_place((x - hsp), y, obj_destructibles))
	                instance_destroy()
	        }
	    }
	    if ((state == states.knightpep || state == states.superslam || state == (9 << 0)) && vsp > 0)
	    {
	        if place_meeting(x, (y + 1), obj_destructibles)
	        {
	            with (instance_place(x, (y + 1), obj_destructibles))
	                instance_destroy()
	        }
	    }
	    if place_meeting(x, (y + 1), obj_destructibleplatform)
	    {
	        with (instance_place(x, (y + 1), obj_destructibleplatform))
	        {
	            falling = 1
	            if (falling == 1)
	                image_speed = 0.35
	        }
	    }
	    if (vsp <= 0.5 && (state == states.jump || state == states.pogo || state == states.climbwall || state == states.fireass || state == states.Sjump || state == states.mach2 || state == states.mach3))
	    {
	        if place_meeting(x, (y - 1), obj_destructibles)
	        {
	            with (instance_place(x, (y - 1), obj_destructibles))
	            {
	                instance_destroy()
	                with (other.id)
	                {
	                    if (state != states.Sjump && state != states.climbwall)
	                        vsp = 0
	                }
	            }
	        }
	    }
	    if (vsp >= 0 && (state == states.freefall || state == states.freefallland))
	    {
	        if place_meeting(x, ((y + vsp) + 2), obj_destructibles)
	        {
	            with (instance_place(x, ((y + vsp) + 2), obj_destructibles))
	            {
	                with (obj_player2)
	                {
	                    if place_meeting(x, ((y + vsp) + 2), obj_bigdestructibles)
	                    {
	                        if (shotgunAnim == 0)
	                            sprite_index = spr_bodyslamland
	                        else
	                            sprite_index = spr_shotgunjump2
	                        state = states.freefallland
	                        image_index = 0
	                    }
	                }
	                instance_destroy()
	            }
	        }
	    }
	    if (state == states.freefall || state == states.freefallland)
	    {
	        if (place_meeting(x, (y + 1), obj_metalblock) && freefallsmash > 10)
	        {
	            with (instance_place(x, (y + 1), obj_metalblock))
	                instance_destroy()
	        }
	    }
	    if (state == states.handstandjump || state == states.punch)
	    {
	        with (obj_destructibles)
	        {
	            if place_meeting((x - obj_player2.hsp), y, obj_player2)
	            {
	                with (obj_player2)
	                {
	                    if place_meeting((x + hsp), y, obj_bigdestructibles)
	                    {
	                        if (shotgunAnim == 0)
	                        {
	                            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
	                            image_index = 0
	                            state = states.tackle
	                            movespeed = 3
	                            vsp = -3
	                            instance_destroy(other.id)
	                        }
	                        else
	                        {
	                            state = states.shotgun
	                            image_index = 0
	                            sprite_index = spr_shotgunshoot
	                            if (character == "P")
	                            {
	                                instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = 4
	                                with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	                                    spdh = -4
	                            }
	                            instance_destroy(other.id)
	                        }
	                    }
	                    else if (other.object_index != obj_bigdestructibles)
	                        instance_destroy(other.id)
	                }
	            }
	        }
	    }
	    with (obj_baddie)
	    {
	        if (place_meeting((x + hsp), y, obj_destructibles) && thrown == 1)
	            instance_destroy(instance_place((x + hsp), y, obj_destructibles))
	        if (place_meeting(x, (y + vsp), obj_destructibles) && thrown == 1)
	            instance_destroy(instance_place((x + vsp), y, obj_destructibles))
	    }
	}
}
