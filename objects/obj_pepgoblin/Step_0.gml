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

if (state == states.stun && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
scr_scareenemy()
if (bombreset > 0)
    bombreset--
if (x != obj_player1.x && state != states.throw && obj_player.state != states.tumble && bombreset == 0 && grounded)
{
    if (obj_player1.x > (x - 80) && obj_player1.x < (x + 80) && y <= (obj_player1.y + 100) && y >= (obj_player1.y - 100))
    {
        if (state == states.walk)
        {
            image_index = 0
            sprite_index = spr_pepgoblin_kick
            image_xscale = (-(sign((x - obj_player.x))))
            state = states.throw
        }
    }
}
if instance_exists(obj_player2)
{
    if (x != obj_player2.x && state != states.throw && bombreset == 0 && grounded)
    {
        if (obj_player2.x > (x - 100) && obj_player2.x < (x + 100) && y <= (obj_player2.y + 100) && y >= (obj_player2.y - 100))
        {
            if (state == states.walk || state == states.idle)
            {
                image_index = 0
                sprite_index = spr_pepgoblin_kick
                image_xscale = (-(sign((x - obj_player.x))))
                state = states.throw
            }
        }
    }
}
if (grounded && state == states.throw && floor(image_index) == 3)
    vsp = -5
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
