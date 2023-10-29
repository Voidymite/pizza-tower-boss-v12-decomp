function scr_pizzagoblin_throw()
{
	if (!variable_global_exists("throw_frame"))
	{
	    global.throw_frame = 0
	    global.throw_frame[89] = 2
	    global.throw_frame[86] = 6
	    global.throw_frame[97] = 2
	    global.throw_frame[98] = 2
	    global.throw_frame[99] = 2
	    global.throw_frame[87] = 2
	    global.throw_frame[88] = 8
	    global.throw_frame[91] = 6
	    global.throw_frame[92] = 0
	    global.throw_frame[90] = 15
	    global.throw_sprite = spr_plug
	    global.throw_sprite[89] = spr_pizzagoblin_throwbomb
	    global.throw_sprite[86] = spr_cheeserobot_attack
	    global.throw_sprite[97] = spr_spitcheese_spit
	    global.throw_sprite[98] = spr_trash_throw
	    global.throw_sprite[99] = spr_invtrash_throw
	    global.throw_sprite[87] = spr_robot_attack
	    global.throw_sprite[88] = spr_kentukykenny_throw
	    global.throw_sprite[91] = spr_pizzard_shoot
	    global.throw_sprite[92] = spr_pepgoblin_kick
	    global.throw_sprite[90] = spr_swedishmonkey_eat
	    global.reset_timer = 0
	    global.reset_timer[89] = 200
	    global.reset_timer[86] = 200
	    global.reset_timer[97] = 100
	    global.reset_timer[98] = 100
	    global.reset_timer[99] = 100
	    global.reset_timer[87] = 200
	    global.reset_timer[88] = 200
	    global.reset_timer[91] = 100
	    global.reset_timer[92] = 100
	    global.reset_timer[90] = 200
	}
	hsp = 0
	if place_meeting(x, (y + 1), obj_railh)
	    hsp = -5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = 5
	if (floor(image_index) == (image_number - 1))
	    state = states.walk
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index]
	    sprite_index = global.throw_sprite[object_index]
	    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
	        scr_soundeffect(sfx_enemyprojectile)
	    switch object_index
	    {
	        case obj_pizzagoblin:
	            with (instance_create(x, y, obj_pizzagoblinbomb))
	            {
	                hsp = (other.image_xscale * 10)
	                vsp = -8
	            }
	            break
	        case 86:
	            with (instance_create(x, y, obj_cheeseblob))
	            {
	                sprite_index = spr_cheeserobot_goop
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 8)
	                vsp = 0
	                grav = 0
	            }
	            break
	        case 97:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_spitcheesespike))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -6
	            }
	            break
	        case 98:
	        case 99:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_cheeseball))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -4
	            }
	            break
	        case 87:
	            with (instance_create(x, y, obj_robotknife))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	            }
	            break
	        case 88:
	            with (instance_create(x, y, obj_kentukykenny_projectile))
	                image_xscale = other.image_xscale
	            break
	        case 91:
	            with (instance_create(x, y, obj_pizzard_bolt))
	                image_xscale = other.image_xscale
	            break
	        case 90:
	            with (instance_create(x, y, obj_slipnslide))
	            {
	                baddieID = other.id
	                image_xscale = other.image_xscale
	                hsp = ((-other.image_xscale) * 4)
	                vsp = -5
	                with (obj_slipnslide)
	                {
	                    if (baddieID == other.baddieID)
	                        banana += 1
	                }
	            }
	            break
	        case 92:
	            with (instance_create(x, y, obj_pepgoblin_kickhitbox))
	            {
	                baddieID = other.id
	                image_xscale = other.image_xscale
	            }
	            break
	    }
	
	}
	if ((!grounded) && hsp < 0)
	    hsp += 0.1
	else if ((!grounded) && hsp > 0)
	    hsp -= 0.1
}
