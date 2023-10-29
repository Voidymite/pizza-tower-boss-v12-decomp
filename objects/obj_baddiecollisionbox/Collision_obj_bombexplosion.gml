if instance_exists(baddieID)
{
    if (baddieID.state != states.grabbed)
    {
        with (baddieID)
        {
            state = states.stun
            stunned = 100
            vsp = -5
        }
    }
}
