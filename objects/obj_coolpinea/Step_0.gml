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
if (hp <= 0)
    instance_destroy()
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hitboxcreate == 0 && (state == states.idle || state == states.walk))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_pineahitbox))
        ID = other.id
}
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
