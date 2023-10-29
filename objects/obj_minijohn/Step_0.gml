switch state
{
    case states.idle:
        scr_enemy_idle()
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
    case (112 << 0):
        scr_enemy_chase()
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
if (state == states.walk || state == states.idle)
{
    var targetplayer = obj_player1
    if (obj_player1.spotlight == 0)
        targetplayer = 4
    movespeed = 7
    image_xscale = (-(sign((x - targetplayer.x))))
    momentum = ((-image_xscale) * (movespeed + 4))
    state = (112 << 0)
}
if (hitboxcreate == 0 && state == (112 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_minijohn_hitbox))
    {
        sprite_index = other.sprite_index
        ID = other.id
    }
}
if instance_exists(obj_player2)
{
    if (obj_player2.x > (x - 400) && obj_player2.x < (x + 400) && y <= (obj_player2.y + 60) && y >= (obj_player2.y - 60))
    {
        if (state != states.idle && obj_player2.state == states.mach3)
        {
            state = states.idle
            sprite_index = scaredspr
            if (x != obj_player2.x)
                image_xscale = (-(sign((x - obj_player2.x))))
        }
    }
}
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
