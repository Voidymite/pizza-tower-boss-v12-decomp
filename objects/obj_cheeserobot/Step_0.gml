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
idlespr = spr_cheeserobot_idle
stunfallspr = spr_cheeserobot_stun
walkspr = spr_cheeserobot_walk
stunspr = spr_cheeserobot_stun
grabbedspr = spr_cheeserobot_stun
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hp <= 0)
    instance_destroy()
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
if (bombreset > 0)
    bombreset--
if (x != obj_player.x && state != states.throw && bombreset == 0)
{
    if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 20) && y >= (obj_player.y - 20))
    {
        if (state == states.walk || state == states.idle)
        {
            scr_sound(sound_enemythrow)
            image_index = 0
            image_xscale = (-(sign((x - obj_player.x))))
            state = states.throw
        }
    }
}
