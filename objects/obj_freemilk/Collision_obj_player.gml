with (obj_player)
{
    if (state == states.firemouth && sprite_index == spr_player_firemouth)
    {
        image_index = 0
        sprite_index = spr_player_firemouthend
        other.sprite_index = spr_freemilksuprised
        other.image_index = 0
    }
}
if (sprite_index == spr_freemilksuprised && floor(image_index) == (image_number - 1))
    sprite_index = spr_freemilk
