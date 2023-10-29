if (other.state == states.handstandjump || other.state == states.punch)
{
    instance_create((x + (obj_player1.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 1
        baddiegrabbedID = other.id
        state = states.grab
    }
    playerid = other.object_index
    grabbed = 1
}
