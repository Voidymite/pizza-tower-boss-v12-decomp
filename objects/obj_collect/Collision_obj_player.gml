if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
scr_soundeffect(sfx_collecttopping)
if (other.object_index == obj_player1)
    global.collect += 10
else
    global.collectN += 10
with (instance_create((x + 16), y, obj_smallnumber))
    number = "10"
instance_destroy()
