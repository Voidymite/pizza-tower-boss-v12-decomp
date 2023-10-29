if (drop == 0)
{
    with (other.id)
    {
        var b = 1
        for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
        {
            if (state == transformation[i])
                b = 0
        }
        if (b == 1)
        {
            other.drop = 1
            other.vsp = -5
            state = states.slipnslide
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
