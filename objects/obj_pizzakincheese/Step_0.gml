if (room == rank_room || room == timesuproom)
    visible = false
else
    visible = playerid.visible
if (obj_player.state == states.pizzathrow)
    visible = false
if (obj_player1.spotlight == 1)
    playerid = obj_player1
else
    playerid = obj_player2
var roomname = string_letters(room_get_name(room))
if (roomname == "strongcoldminiboss")
    roomname = "strongcold"
switch roomname
{
    case "strongcold":
        if (sprite_index == spr_xmascheesetoppin_intro && floor(image_index) == (image_number - 1))
            sprite_index = spr_xmascheesetoppin_idle
        if (global.cheesefollow == 1 && sprite_index != spr_xmascheesetoppin_intro)
        {
            image_alpha = playerid.image_alpha
            if (playerid.hsp != 0)
                sprite_index = spr_xmascheesetoppin_walk
            else
                sprite_index = spr_xmascheesetoppin_idle
            depth = -6
            if (global.shroomfollow == 1)
            {
                ds_queue_enqueue(followQueue, (obj_pizzakinshroom.x + (image_xscale * 4)))
                ds_queue_enqueue(followQueue, (obj_pizzakinshroom.y - 2))
            }
            else
            {
                ds_queue_enqueue(followQueue, playerid.x)
                ds_queue_enqueue(followQueue, playerid.y)
            }
            LAG_STEPS = 10
            if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
            {
                x = (ds_queue_dequeue(followQueue) - (image_xscale * 4))
                y = (ds_queue_dequeue(followQueue) + 2)
            }
            image_xscale = playerid.xscale
        }
        break
    default:
        if (sprite_index == spr_toppincheese_intro && floor(image_index) == (image_number - 1))
            sprite_index = spr_toppincheese
        if (global.cheesefollow == 1 && sprite_index != spr_toppincheese_intro)
        {
            image_alpha = playerid.image_alpha
            if (playerid.hsp != 0)
                sprite_index = spr_toppincheese_run
            else
                sprite_index = spr_toppincheese
            depth = -6
            if (global.shroomfollow == 1)
            {
                ds_queue_enqueue(followQueue, (obj_pizzakinshroom.x + (image_xscale * 4)))
                ds_queue_enqueue(followQueue, (obj_pizzakinshroom.y - 2))
            }
            else
            {
                ds_queue_enqueue(followQueue, playerid.x)
                ds_queue_enqueue(followQueue, playerid.y)
            }
            LAG_STEPS = 10
            if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
            {
                x = (ds_queue_dequeue(followQueue) - (image_xscale * 4))
                y = (ds_queue_dequeue(followQueue) + 2)
            }
            image_xscale = playerid.xscale
        }
        break
}

if (global.playerhealth == 1 && global.cheesefollow == 1)
    sprite_index = spr_toppincheese_panic
