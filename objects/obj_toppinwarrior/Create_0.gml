image_speed = 0.1
followQueue = ds_queue_create()
if (obj_player1.spotlight == 1)
    playerid = 3
else
    playerid = 4
followid = playerid
toppinwarrior = 1
set = 0
canattack = 0
global.toppinwarriorattackcountdown = 0
global.toppinwarriorturn = 1
space = 0
dir = obj_player1.xscale
steppy = 20
mask_index = spr_player_mask
depth = -5
repeat (6)
{
    with (instance_create((x + random_range(-50, 50)), (y + random_range(-50, obj_bombexplosion)), obj_cloudeffect))
        sprite_index = spr_baddiespawn
}
