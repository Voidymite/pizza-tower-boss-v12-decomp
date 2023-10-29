switch state
{
    case states.idle:
        scr_enemy_idle()
        break
    case (99 << 0):
        scr_enemy_charge()
        break
    case (101 << 0):
        scr_enemy_turn()
        break
    case (105 << 0):
        scr_enemy_walk()
        break
    case (107 << 0):
        scr_enemy_land()
        break
    case (108 << 0):
        scr_enemy_hit()
        break
    case (109 << 0):
        scr_enemy_stun()
        break
    case (100 << 0):
        scr_pizzagoblin_throw()
        break
    case (113 << 0):
        scr_enemy_grabbed()
        break
}

if (state == states.stun && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = 0
if (hitboxcreate == 0 && state == (99 << 0) && obj_player.state != states.mach3 && obj_player.state != states.mach2)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        sprite_index = spr_player_mask
        ID = other.id
    }
}
if (attack == 0)
    sprite_index = spr_pizzaboy
if (attack == 0 && state != states.grabbed && state != states.stun)
{
    state = states.idle
    roaming = 0
}
if (state != states.idle)
    roaming = 1
if (x != obj_player.x)
{
    if (obj_player.x > (x - 200) && obj_player.x < (x + 200) && obj_player.y == y)
    {
        if (state == states.walk || state == states.idle)
        {
            if (sprite_index == spr_pizzaboy)
                instance_create(x, y, obj_balloonpop)
            image_xscale = (-(sign((x - obj_player.x))))
            roaming = 1
            attack = 1
            vsp = -11
            scr_sound(sound_enemythrow)
            image_index = 0
            image_xscale = (-(sign((x - obj_player.x))))
            state = (99 << 0)
        }
    }
}
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
