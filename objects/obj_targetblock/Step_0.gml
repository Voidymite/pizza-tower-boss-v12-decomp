with (obj_baddie)
{
    if (place_meeting((x + hsp), y, obj_targetblock) && thrown == 1)
        instance_destroy(instance_place((x + hsp), y, obj_targetblock))
    if (place_meeting(x, (y + vsp), obj_targetblock) && thrown == 1)
        instance_destroy(instance_place(x, (y + vsp), obj_targetblock))
}
with (obj_junk)
{
    if (place_meeting((x + hsp), y, obj_targetblock) && thrown == 1)
        instance_destroy(instance_place((x + hsp), y, obj_targetblock))
    if (place_meeting(x, (y + vsp), obj_targetblock) && thrown == 1)
        instance_destroy(instance_place(x, (y + vsp), obj_targetblock))
}
