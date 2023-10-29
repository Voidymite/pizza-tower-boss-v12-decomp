var b = 1
for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
{
    if (state == transformation[i])
        b = 0
}
if (b == 1)
{
    if (cutscene == 0 && other.grounded == 1 && state != states.bombpep && (state == states.handstandjump || state == states.punch || character == "S"))
    {
        bombpeptimer = 100
        state = states.bombpep
        image_index = 0
        sprite_index = spr_bombpepintro
        instance_destroy(other.id)
    }
    if (hurted == 0 && other.grounded == 0)
    {
        instance_destroy(other.id)
        instance_create(x, y, obj_bombexplosion)
    }
}
