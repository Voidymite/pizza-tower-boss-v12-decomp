with (other.id)
{
    x = other.x
    y = (other.y + (other.sprite_height - 46))
    if ((obj_player1.spotlight == 1 && object_index == obj_player1) || (obj_player1.spotlight == 0 && object_index == obj_player2))
    {
        if (!instance_exists(obj_fadeout))
        {
            obj_player1.targetDoor = other.targetDoor
            obj_player1.targetRoom = other.targetRoom
            obj_player1.hallway = 1
            obj_player1.hallwaydirection = other.image_xscale
            if instance_exists(obj_player2)
            {
                obj_player2.targetDoor = other.targetDoor
                obj_player2.targetRoom = other.targetRoom
                obj_player2.hallway = 1
                obj_player2.hallwaydirection = other.image_xscale
            }
            other.visited = 1
            if (state == states.machslide)
                state = states.normal
            scr_soundeffect(sfx_door)
            instance_create(x, y, obj_fadeout)
        }
    }
    else if (object_index == obj_player2 && state != states.grabbed)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
        x = obj_player1.x
        y = obj_player1.y
        state = states.normal
    }
    else if (object_index == obj_player1 && state != states.grabbed)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
        x = obj_player2.x
        y = obj_player2.y
        state = states.normal
    }
}
