var b = 1
for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
{
    if (state == transformation[i])
        b = 0
}
if (b == 1)
{
    if (hurted == 0 && cutscene == 0 && state != states.bombpep && sprite_index != spr_bombpep_end && state != states.Sjump && state != states.Sjumpprep)
    {
        image_index = 0
        hurted = 1
        vsp = -4
        sprite_index = spr_bombpepend
        state = states.bombpep
        bombpeptimer = 0
    }
}
