if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    repeat (6)
    {
        with (instance_create((x + 16), y, obj_pizzadebris))
        {
            if (sprite_index == spr_destroyable2)
                sprite_index = spr_debris
            else
                sprite_index = spr_halloweendebris
        }
    }
    instance_create(x, y, obj_collect)
    tile_layer_delete_at(1, x, y)
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
    ds_list_add(global.saveroom, id)
}
