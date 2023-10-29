if (global.panic == 1)
{
    switch state
    {
        case states.idle:
            scr_fakepeppino_idle()
            break
        case (105 << 0):
            scr_fakepeppino_walk()
            break
        case (108 << 0):
            scr_fakepeppino_hit()
            break
        case (60 << 0):
            scr_fakepeppino_jump()
            break
    }

}
if place_meeting((x + hsp), y, obj_destructibles)
{
    with (instance_place((x + hsp), y, obj_destructibles))
        instance_destroy()
}
if (global.panic == 1)
    appeartimer--
if (appeartimer == 0)
{
    x = start_x
    y = start_y
}
if (obj_player.x > (x - 200) && obj_player.x < (x + 200) && sprite_index == spr_fakepeppino_walk && y == obj_player.y)
{
    state = states.hit
    sprite_index = spr_fakepeppino_grabdash
    image_index = 0
    movespeed = 8
}
